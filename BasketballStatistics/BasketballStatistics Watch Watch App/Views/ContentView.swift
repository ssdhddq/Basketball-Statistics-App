//
//  ContentView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ViewModel.shared
    
    var body: some View {
        VStack(spacing: 20) {
            InformationScoreView()
            
            DateScrollView(selectedDate: $viewModel.currentData)

        }
        .ignoresSafeArea(edges: [.top, .bottom])
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
