//
//  LoginScreen.swift
//  brainTV
//
//  Created by Marcelo Diefenbach on 29/03/21.
//

import SwiftUI

struct RegisterScreen: View {
    
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
                
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .red, text: "Criar conta", textColor: .white)
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .white, text: "Login with Apple", textColor: .black, image: "applelogo").padding(.vertical,5)
                Spacer()
                Text("Já tem uma conta? Fazer login.")
                    .padding()
                    .font(.footnote)
            }.padding(.horizontal,30)
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
