//
//  InformationScoreView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct InformationScoreView: View {
    let viewModel = ViewModel.shared
    
    var body: some View {
        VStack(spacing: 14) {
            HStack(spacing: 4) {
                ForEach(["3", "2", "1", "-"], id: \.self) { score in
                    ZStack {
                        Circle()
                            .fill(.gray.opacity(0.2))
                            .frame(width: 36, height: 36)
                        
                        Text(score)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
            }
            
            HStack() {
                ForEach(viewModel.scores, id: \.self) { score in
                    ZStack {
                        Circle()
                            .fill(.gray.opacity(0.2))
                            .frame(width: 36, height: 36)
                        
                        Text("\(score)")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    
}
