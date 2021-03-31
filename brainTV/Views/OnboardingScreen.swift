//
//  OnboardingScreen.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct OnboardingScreen: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        let yExtension: CGFloat = 55
        ZStack{
            if self.isActive {
                LoginScreen()
            } else {
                GeometryReader { g in
                    TabView {
                        FirstOnboardingView()
                        SecondOnboardingView()
                        ThirdOnboardingView(end: $isActive)
                    }
                    .frame(width: g.size.width, height: g.size.height + yExtension)
                    .tabViewStyle(PageTabViewStyle())
                }
                .offset(y: -yExtension)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    logoView()
                        .frame(width: 310, height: 150, alignment: .center)
                        .padding(.top, 50.0)
                    Spacer()
                }
            }
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
