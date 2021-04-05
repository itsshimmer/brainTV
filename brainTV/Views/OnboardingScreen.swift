//
//  OnboardingScreen.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @Binding var currentScreen: String
    
    var body: some View {
        let yExtension: CGFloat = 55
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.black)
//            if self.isActive {
//                LoginScreen()
//            } else {
                GeometryReader { g in
                    TabView {
                        FirstOnboardingView()
                        SecondOnboardingView()
                        ThirdOnboardingView(currentScreen: $currentScreen)
                    }
                    .frame(width: g.size.width, height: g.size.height + yExtension)
                    .tabViewStyle(PageTabViewStyle())
                    .onAppear(perform: {
                       UIScrollView.appearance().bounces = false
                     })
                    .onDisappear(perform: {
                       UIScrollView.appearance().bounces = true
                     })
                }
                .offset(y: -yExtension)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    logoView()
                        .frame(width: 310, height: 150, alignment: .center)
                        .padding(.top, 50.0)
                    Spacer()
                }
            //}
        }
    }
}
//
//struct OnboardingScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingScreen()
//    }
//}
