//
//  OnboardingScreen.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct OnboardingScreen: View {
    var body: some View {
        let yExtension: CGFloat = 55
        GeometryReader { g in
            TabView {
                FirstOnboardingView()
                SecondOnboardingView()
                ThirdOnboardingView()
            }
            .frame(width: g.size.width, height: g.size.height + yExtension)
            .tabViewStyle(PageTabViewStyle())
        }
        .offset(y: -yExtension)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
