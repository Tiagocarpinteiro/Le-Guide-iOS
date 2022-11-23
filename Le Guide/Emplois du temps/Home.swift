//
//  Home.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 03/11/2022.
//

import SwiftUI

struct Home: View {
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    
    var groups = ["-- MMI 1 --", "MMI1A1", "MMI1A2", "MMI1B1", "MMI1B2", "MMI1C1", "MMI1C2", "MMI1D1", "-- MMI 2 --", "MMI2A1", "MMI2A2", "MMI2B1", "MMI2B2", "MMI2C1", "MMI2C2"]
    @State private var selectedGroup = "-- MMI 1 --"

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            // MARK : Lazy Stack with Pinned Header
            LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
                
                Section {
                    
                    // MARK : Current week view
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(taskModel.currentWeek, id: \.self) { day in
                                VStack(spacing: 10) {
                                    Text(taskModel.extractDate(date: day, format: "dd"))
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                    
                                    Text(taskModel.extractDate(date: day, format: "EEE"))
                                        .font(.system(size: 14))
                                    
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 8, height: 8)
                                        .opacity(taskModel.isToday(date: day) ? 1 : 0)
                                }
                                .foregroundStyle(taskModel.isToday(date: day) ? .primary : .secondary)
                                .foregroundColor(taskModel.isToday(date: day) ? .white : .black)
                                .frame(width: 45, height: 90)
                                .background(
                                    ZStack{
                                        if taskModel.isToday(date: day) {
                                            Capsule()
                                                .fill(Color("mmiColor"))
                                                .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                        }
                                    }
                                )
                                
                                .contentShape(Capsule())
                                .onTapGesture {
                                    withAnimation {
                                        taskModel.currentDay = day
                                    }
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                        
                    }
                    
                    TasksView()

                } header: {
                    HeaderView()
                }
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
    // MARK : Task View
    func TasksView()-> some View {
        LazyVStack(spacing: 20) {
            if selectedGroup == "MMI1A1" {
                if let tasks = taskModel.filteredTasks {
                    if tasks.isEmpty {
                        Text("Pas de cours aujourd'hui !")
                            .font(.system(size: 16))
                            .fontWeight(.light)
                            .offset(y: 100)
                    } else {
                        ForEach(tasks) { task in
                            TaskCardView(task: task)
                        }
                    }
                } else {
                    ProgressView()
                        .offset(y: 100)
                }
            }
        }
            .padding()
            .padding(.top)
            .onChange(of: taskModel.currentDay) { newvalue in
                taskModel.filterTodayTasks()
            }
    }
    
    func TaskCardView(task: Task)->some View {
        HStack(alignment: .top, spacing: 30){
            VStack(spacing: 10){
                Circle()
                    .fill(taskModel.isCurrentHour(date: task.taskDate) ? Color("mmiColor") : .clear)
                    .frame(width: 15, height: 15)
                    .background(
                        Circle()
                            .stroke(Color("mmiColor"), lineWidth: 1)
                            .padding(-3)
                    
                    )
                    .scaleEffect(!taskModel.isCurrentHour(date: task.taskDate) ? 0.8 : 1)
                
                Rectangle()
                    .fill(Color("mmiColor"))
                    .frame(width: 3)

            }
            
            VStack {
                HStack(alignment: .top, spacing: 10) {
                    VStack(alignment: .leading, spacing: 12){
                        Text(task.taskTitle)
                            .font(.title2.bold())
                        Text(task.taskDescription)
                            .font(.callout)
                            .foregroundColor(taskModel.isCurrentHour(date: task.taskDate) ? .white : .secondary)
                        
                    }
                    .hLeading()
                    VStack {
                        Text(task.taskDate.formatted(date: .omitted, time: .shortened))
                        Text(task.taskEndDate.formatted(date: .omitted, time: .shortened))
                    }
                }
                

            }
            .foregroundColor(taskModel.isCurrentHour(date: task.taskDate) ? .white : .black)
            .padding(taskModel.isCurrentHour(date: task.taskDate) ? 15 : 0)
            .padding(.bottom, taskModel.isCurrentHour(date: task.taskDate) ? 0 : 10)
            .hLeading()
            .background(
                Color("mmiColor")
                    .cornerRadius(25)
                    .opacity(taskModel.isCurrentHour(date: task.taskDate) ? 1 : 0)
            )
            
        }
        .hLeading()
    }
    
    // MARK : Header
    func HeaderView()-> some View{
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 10) {
                Text(Date().formatted(date: .abbreviated, time: .omitted))
                    .foregroundColor(.secondary)
                HStack {
                    Text("Aujourd'hui")
                        .font(.largeTitle.bold())
                    
                    Spacer()
                    
                    Picker("Choisir son groupe", selection: $selectedGroup) {
                        ForEach(groups, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .hLeading()
        }
        .padding(.top, 30)
        .padding()
        .padding(.top, getSafeArea().top)
        .background(Color.white)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View {
    func hLeading()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func hTrailing()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    func hCenter()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .center)
    }
        
    func getSafeArea()->UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
    
}
