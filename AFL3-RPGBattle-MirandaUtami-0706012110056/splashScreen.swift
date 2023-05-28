//
//  splashScreen.swift
//  AFL3-RPGBattle-MirandaUtami-0706012110056
//
//  Created by miranda on 27/04/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
     
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("wo1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 128, height: 128)
 
                    Text("RPG BATTLE")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.1)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
 
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
      
    }
}
