//
//  FirstOnboardingView.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI

struct FirstOnboardingView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Spacer()
                Image("Hand_Smartphone_1")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding(.top, -70.0)
                Spacer()
                Text("Aqui você vai poder assistir todas as aulas ao vivo.")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, -100.0)
                    .padding(.horizontal, 100.0)
                Spacer()
            }
        }
    }
}

struct FirstOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FirstOnboardingView()
    }
}
