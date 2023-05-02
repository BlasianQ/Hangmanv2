//
//  TitleScreen.swift
//  hangmanv2
//
//  Created by Quincy Poynter on 5/1/23.
//

import Foundation
import SwiftUI

struct TitleScreenView: View {
//    @State var imageURL: String = ""
//    @State var lightBlue
    
    @Binding var showingGame: Bool
    
    let lightBlue = Color(red: 145/255, green: 176/255, blue: 205/255)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [lightBlue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            Image("titlePageScreenShot").resizable().scaledToFit()
//            VStack {
//                Text("")
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding()
//                    .padding(8.0)
//
//
//                Button("Start Game") {
//                    showingGame = true
//                }.foregroundColor(.black).font(.system(size: 34)).bold()
//            }

        }
    }
}

struct TitleScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

