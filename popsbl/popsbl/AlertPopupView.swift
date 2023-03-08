//
//  AlertPopupView.swift
//  popsbl
//
//  Created by Kazakh on 06.03.2023.
//

import SwiftUI

public struct AlertPopupView: View {

    @Binding public var isPresented: Bool
    
    public var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 21)
                .foregroundColor(.red)
                .padding(.top, 26)
                
            Text("Внимание!")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .bold))
                .padding(.vertical, 8)
            Text("Играя в Радар будьте внимательны и следите за происходящим вокрув вас.\n\nВы должны строго придерживаться всех законов и правил дорожного движения вашей страны!")
                .foregroundColor(.black)
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            Button {
                isPresented = false
            } label: {
                HStack{
                    Spacer()
                    Text("Я согласен")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .frame(height: 44)
            .background(Color.red)
            .smoothCorners(radius: 16)
            .padding(24)
        }
        .background(Color.white.cornerRadius(20))
        .frame(width: 280)
        //.padding(.horizontal, 60)
    }
}
