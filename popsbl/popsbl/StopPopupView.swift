//
//  StopPopupView.swift
//  popsbl
//
//  Created by Kazakh on 06.03.2023.
//

import Foundation
import SwiftUI

public struct StopPopupView: View {
    @Binding public var isPresented: Bool
    
    public var body: some View {
        VStack {
            Spacer()
                .frame(height: 24)
                .minimumScaleFactor(0.38)
            Text("Остановить игру?")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .bold))
            Spacer()
                .frame(height: 24)
                .minimumScaleFactor(0.38)
            HStack {
                Spacer()
                    .frame(width: 24)
                    .minimumScaleFactor(0.38)
                Button {
                    
                } label: {
                    HStack{
                        Spacer()
                        Text("Остановить")
                            .lineLimit(1)
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.red)
                            .minimumScaleFactor(0.38)
                        Spacer()
                    }
                }
                .frame(height: 44)
                .background(Color.white)
                .smoothCorners(radius: 16)
                
                Spacer()
                    .frame(width: 8)
                
                Button {
                    
                } label: {
                    HStack{
                        Spacer()
                        Text("Продолжить")
                            .lineLimit(1)
                            .font(.system(size: 17, weight: .semibold))
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.38)
                        Spacer()
                    }
                }
                .frame(height: 44)
                .background(Color.red)
                .smoothCorners(radius: 16)
                Spacer()
                    .frame(width: 24)
                    .minimumScaleFactor(0.38)
            }
            Spacer()
                .frame(height: 24)
                .minimumScaleFactor(0.38)
        }
        .background(Color.white.cornerRadius(20))
        .padding(.horizontal, 60)
    }
}
