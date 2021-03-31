//
//  SecondOnboardingView.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct SecondOnboardingView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Spacer()
                Image("Hand_Tablet_1")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(.top, -70.0)
                Spacer()
                Text("As aulas ficam gravadas e são disponibilizadas aqui no App também.")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, -100.0)
                    .padding(.horizontal, 76.0)
                Spacer()
            }
        }
    }
}

struct SecondOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnboardingView()
    }
}
