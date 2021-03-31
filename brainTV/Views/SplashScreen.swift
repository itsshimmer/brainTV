//
//  SplashScreen.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct SplashScreen: View {
    
    @Binding var currentScreen: String
    
    @State var isActive:Bool = false
    
    var body: some View {
        if self.isActive {
            OnboardingScreen(currentScreen: $currentScreen)
        } else {
            ZStack {
                Image("BG-splash")
                    .resizable()
                    .ignoresSafeArea(.all)
                VStack {
                    logoView()
                        .frame(width: 310, height: 150, alignment: .center)
                    Spacer()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}
//
//struct SplashScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreen()
//    }
//}
