//
//  SplashScreen.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
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
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
