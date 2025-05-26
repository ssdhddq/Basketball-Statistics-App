//
//  InformationScoreView.swift
//  BasketballStatistics Watch Watch App
//
//  Created by SSDHDDQ on 26.05.2025.
//

import SwiftUI

struct InformationScoreView: View {
    let scores = ["3", "2", "1", "-"]
    var scoresInformation = ["2","1","4", "12"]
    
    var body: some View {
        VStack(spacing: 14) {
            HStack(spacing: 4) {
                ForEach(scores, id: \.self) { score in
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
                ForEach(scoresInformation, id: \.self) { score in
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
        }
    }
    
}
