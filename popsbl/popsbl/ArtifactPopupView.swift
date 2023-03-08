//
//  ArtifactPopupView.swift
//  popsbl
//
//  Created by Kazakh on 06.03.2023.
//

import Foundation
import SwiftUI

public struct ArtifactPopupView: View {
    
    @Binding public var isPresented: Bool
    
    public var body: some View {
        VStack {
            Text("+1 артефакт")
                .foregroundColor(.black)
                .font(.system(size: 29, weight: .bold))
                .padding(.top, 41)
                .padding(.bottom, 8)
            Text("Поздравляем, вы нашли артефакт! Продолжайте ходить, чтобы собрать больше призов.")
                .foregroundColor(.gray)
                .font(.system(size: 13, weight: .medium))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 25)
            Image("stone")
            Button {
                
            } label:{
                HStack{
                    Spacer()
                    Text("Продолжить")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .frame(height: 60)
            .background(Color.red)
            .cornerRadius(12)
            .padding(16)
        }
        .background(Color.white.smoothCorners(radius: 21))
        .padding(.horizontal, 16)
        .overlay(
            VStack{
                HStack{
                    Spacer()
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 23, weight: .medium))
                            .foregroundColor(.gray)
                            .padding(20)
                    }
                }
                .padding(.trailing, 16)
                Spacer()
            }
        )
    }
}
