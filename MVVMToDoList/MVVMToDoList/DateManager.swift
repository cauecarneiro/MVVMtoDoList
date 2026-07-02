//
//  DateManager.swift
//  MVVMToDoList
//
//  Created by Cauê Carneiro on 06/11/25.
//

import Foundation

class DateManager: ObservableObject {
    @Published var weeks: [WeekModel] = []
    @Published var selectDate: Date
    
    init(with date: Date = Date()) {
        self.selectDate = Calendar.current.startOfDay(for: date)
    }
}
