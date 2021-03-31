//
//  LoginScreen.swift
//  brainTV
//
//  Created by Marcelo Diefenbach on 29/03/21.
//

import SwiftUI

struct RegisterScreen: View {
    
    @Binding var currentScreen: String
    
    @State var pesquisa: String = ""
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                logoBlackView().fixedSize()
                Spacer()
                InputBoxView(text: "Nome", placeholder: pesquisa, color: .red).padding(.bottom,-10)
                InputBoxView(text: "E-mail", placeholder: pesquisa, color: .red).padding(.bottom,-10)
                InputBoxView(text: "Senha", placeholder: pesquisa, color: .red).padding(.bottom,50)
                
                
                ToScreenButtonView(width: 200, height: 40, backgroundColor: .red, text: "Criar conta", textColor: .white, toScreen: "RegisterScreen", currentScreen: $currentScreen)
                
                ToScreenButtonView(width: 200, height: 40, backgroundColor: .white, text: "Login with Apple", textColor: .black, image: "applelogo", toScreen: "RegisterScreen", currentScreen: $currentScreen).padding(.vertical,5)
                Spacer()
                Button(action: {
                    currentScreen = "LoginScreen"
                }) {
                    Text("Já tem uma conta? Fazer login.")
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.black)
                }
                
                
            }.padding(.horizontal,30)
        }
    }
}

//struct RegisterScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterScreen()
//    }
//}
