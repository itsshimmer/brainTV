//
//  LoginScreen.swift
//  brainTV
//
//  Created by Marcelo Diefenbach on 29/03/21.
//

import SwiftUI

struct LoginScreen: View {
    
    @Binding var currentScreen: String
    
    @State var pesquisa: String = ""

    var body: some View {
        ZStack{
            VStack{
                Spacer()
                logoBlackView().fixedSize()
                Spacer()
                InputBoxView(text: "", placeholder: "E-mail", color: .red).padding(.bottom,-10)
                InputBoxView(text: "", placeholder: "Senha", color: .red).padding(.bottom,50)
                
                
                ToScreenButtonView(width: 200, height: 40, backgroundColor: .red, text: "Login", textColor: .white, toScreen: "TabBarView", currentScreen: $currentScreen)
                
                ToScreenButtonView(width: 200, height: 40, backgroundColor: .white, text: "Login with Apple", textColor: .black, image: "applelogo", toScreen: "TabBarView", currentScreen: $currentScreen).padding(.vertical,5)
                
                ToScreenButtonView(width: 200, height: 40, backgroundColor: .gray, text: "Criar conta", textColor: .white, toScreen: "RegisterScreen", currentScreen: $currentScreen)
                Spacer()
            }.padding(.horizontal,30)
        }
    }
}
//
//struct LoginScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginScreen()
//    }
//}
