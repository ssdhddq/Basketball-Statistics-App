//
//  ContentView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var one: Int = 0
    @State private var two: Int = 0
    @State private var three: Int = 0
    
    @State private var currentData = Date()
    
    var body: some View {
        VStack(spacing: 8) {
            Text(formattedDate(currentData))
                .font(.footnote.bold())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding([.top, .leading], 14)
            
            DateScrollView(selectedDate: $currentData)

        }
        .ignoresSafeArea(edges: .top)
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM"
        return formatter.string(from: date)
    }
}


#Preview {
    ContentView()
}
