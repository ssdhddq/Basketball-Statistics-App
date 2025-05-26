//
//  DateScrollView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct DateScrollView: View {
    @Binding var selectedDate: Date
    
    private var last7Days: [Date] {
        (0..<7).compactMap {
            Calendar.current.date(byAdding: .day, value: -$0, to: Date())
        }.reversed()
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(last7Days, id: \.self) { date in
                    Text(shortFormatted(date))
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Calendar.current.isDate(date, inSameDayAs: selectedDate) ? .blue : .gray.opacity(0.2))
                        )
                        .onTapGesture {
                            selectedDate = date
                        }
                }
            }
        }
    }
    
    private func shortFormatted(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM"
        return formatter.string(from: date)
    }
}
