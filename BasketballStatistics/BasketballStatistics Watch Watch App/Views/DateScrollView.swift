//
//  DateScrollView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct DateScrollView: View {
    @Binding var selectedDate: Date
    let viewModel = ViewModel.shared
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                ForEach(viewModel.last7Days, id: \.self) { date in
                    Text(shortFormatted(date))
                        .font(.system(size: 12, weight: .semibold))
                        .padding(8)
                        .frame(width: 50, height: 25)
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
