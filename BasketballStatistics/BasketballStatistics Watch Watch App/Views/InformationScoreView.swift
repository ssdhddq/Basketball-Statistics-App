//
//  InformationScoreView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct InformationScoreView: View {
    @ObservedObject var viewModel = ViewModel.shared
    let array = ["3", "2", "1", "-"]
    
    var body: some View {
        VStack(spacing: 14) {
            HStack(spacing: 4) {
                ForEach(array, id: \.self) { score in
                    ZStack {
                        Circle()
                            .fill(.gray.opacity(0.2))
                            .frame(width: 36, height: 36)
                        
                        Text(score)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .onTapGesture {
                                if score == "3" {
                                    viewModel.scores[0] += 3
                                } else if score == "2" {
                                    viewModel.scores[1] += 2
                                } else if score == "1" {
                                    viewModel.scores[2] += 1
                                }
                            }
                    }
                    
                }
            }
            
            HStack() {
                ForEach(Array(viewModel.scores.enumerated()), id: \.offset) { index, score in
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
