//
//  TaskViewModel.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 03/11/2022.
//

import SwiftUI

class TaskViewModel: ObservableObject {
    
    //Sample Tasks
    @Published var storedTasks: [Task] = [
        Task(taskTitle: "TD Développement Web", taskDescription: "104F - G. Audemard", taskDate: .init(timeIntervalSince1970: 1669014900), taskEndDate: .init(timeIntervalSince1970: 1669020300)),
         Task(taskTitle: "TD Anglais", taskDescription: "02F - C. Cuveliez", taskDate: .init(timeIntervalSince1970: 1669020600), taskEndDate: .init(timeIntervalSince1970: 1669026000)),
         Task(taskTitle: "TP Dev. Web", taskDescription: "104F - V. Dubois", taskDate: .init(timeIntervalSince1970: 1669026600), taskEndDate: .init(timeIntervalSince1970: 1669032000)),

         Task(taskTitle: "TD Ecr. Multimédia", taskDescription: "02F - B. Charnay", taskDate: .init(timeIntervalSince1970: 1669035600), taskEndDate: .init(timeIntervalSince1970: 1669041000)),
    ]
    
    @Published var currentWeek: [Date] = []
    
    @Published var currentDay: Date = Date()
    
    @Published var filteredTasks: [Task]?
    
    
    // MARK : Initializing
    init() {
        fetchCurrentWeek()
        filterTodayTasks()
    }
    

    func filterTodayTasks() {
        DispatchQueue.global(qos: .userInteractive).async {
            let calendar = Calendar.current
            
            let filtered = self.storedTasks.filter {
                return calendar.isDate($0.taskDate, inSameDayAs: self.currentDay)
            }
                .sorted { task1, task2 in
                    return task2.taskDate > task1.taskDate
                }
            
            DispatchQueue.main.async {
                withAnimation {
                    self.filteredTasks = filtered
                }
            }
        }
    }
    
    func fetchCurrentWeek() {
        let today = Date()
        let calendar = Calendar.current
        
        let week = calendar.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstDateWeek = week?.start else {
            return
        }
        
        (-6...14).forEach { day in
            if let weekday = calendar.date(byAdding: .day, value: day, to: firstDateWeek) {
                currentWeek.append(weekday)
            }
        }
    }
    // MARK : Extracting Date
    
    func extractDate(date: Date, format: String)-> String{
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    // MARK : vérifie la date du jour
    func isToday(date: Date)->Bool {
        
        let calendar = Calendar.current
        
        return calendar.isDate(currentDay, inSameDayAs: date)
    }
    
    func isCurrentHour(date: Date)->Bool {
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let currentHour = calendar.component(.hour, from: Date())
        
        return hour == currentHour
    }
}
