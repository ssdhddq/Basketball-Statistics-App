//
//  ViewModel.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

final class ViewModel: ObservableObject {
    static let shared = ViewModel()
    
    @Published var scores: [Int] = [2, 2, 5, 15]
    @Published var currentData = Date()
    
    var last7Days: [Date] {
        (0..<7).compactMap {
            Calendar.current.date(byAdding: .day, value: -$0, to: Date())
        }.reversed()
    }
    
}
