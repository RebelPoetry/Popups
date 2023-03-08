//
//  ContentView.swift
//  popsbl
//
//  Created by Kazakh on 06.03.2023.
//

import SwiftUI
import PopupView

struct PopupsState {
    var showingFirst = true
    var showingSecond = false
    var showingThird = false
    var sheet = false
}

struct ContentView : View {
    @State var popups = PopupsState()
    
    var body: some View {
        VStack {
            Button("show alert", action: {popups.showingFirst.toggle()})
            Button("show artifact", action: {popups.showingSecond.toggle()})
            Button("show stop", action: {popups.showingThird.toggle()})
        }
        .popup(isPresented: $popups.showingFirst) {
            AlertPopupView(isPresented: $popups.showingFirst)
        } customize: {
            $0
                .closeOnTap(false)
                .backgroundColor(.black.opacity(0.4))
        }
        .popup(isPresented: $popups.showingSecond) {
            ArtifactPopupView(isPresented: $popups.showingSecond)
        } customize: {
            $0
                .closeOnTap(false)
                .backgroundColor(.black.opacity(0.4))
        }
        .popup(isPresented: $popups.showingThird) {
            StopPopupView(isPresented: $popups.showingThird)
        } customize: {
            $0
                .position(.bottom)
                .animation(.spring())
                .closeOnTap(false)
                .backgroundColor(.black.opacity(0.4))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
