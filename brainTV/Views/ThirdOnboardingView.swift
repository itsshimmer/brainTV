//
//  ThirdOnboardingView.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct ThirdOnboardingView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .ignoresSafeArea()
            VStack {
                logoView()
                    .frame(width: 310, height: 150, alignment: .center)
                    .padding(.top, 50.0)
                Spacer()
                Image("Handshake_1")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(.top, -70.0)
                Spacer()
                Text("Agora é com você! Aproveite esta experiência digital.")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, -100.0)
                    .padding(.horizontal, 76.0)
                    .padding(.bottom, -40.0)
                StandardButtonView(width: 156, height:30, backgroundColor: .red, text: "Começar", textColor: .white, image: "")
                    .padding(.bottom, 150.0)
            }
        }
    }
}

struct ThirdOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboardingView()
    }
}
