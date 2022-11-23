//
//  Task.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 03/11/2022.
//

import SwiftUI

// Task Model
struct Task: Identifiable{
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
    var taskEndDate: Date
}
