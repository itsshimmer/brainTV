//
//  ThirdOnboardingView.swift
//  brainTV
//
//  Created by Lucca Molon on 30/03/21.
//

import SwiftUI
import Foundation

struct ThirdOnboardingView: View {
    //@Binding var end: Bool
    
    @Binding var currentScreen: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .ignoresSafeArea()
            VStack {
                Spacer()
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
                ZStack{
                    RoundedRectangle(cornerRadius: 150, style: .continuous)
                        .frame(width: 156, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                        .shadow(radius: 5)
                    Button(action: {
                        currentScreen = "LoginScreen"
                    }, label: {
                        Text("Começar")
                    })
                    .frame(width: 156, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                }
            }
            .padding(.bottom, 150.0)
            
        }
    }
}
//
//struct ThirdOnboardingView_Previews: PreviewProvider {
//
//    @State var temp: Bool = false
//
//    static var previews: some View {
//        ThirdOnboardingView(end: !$temp)
//    }
//}
