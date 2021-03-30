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
                inputBoxView(text: "Nome", placeholder: pesquisa)
                inputBoxView(text: "E-mail", placeholder: pesquisa)
                inputBoxView(text: "Senha", placeholder: pesquisa).padding(.bottom,30)
                
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .red, text: "Criar conta", textColor: .white)
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .white, text: "Login with Apple", textColor: .black, image: "applelogo").padding(.vertical,5)
                Spacer()
                Text("Já tem uma conta? Fazer login.")
                    .padding()
                    .font(.footnote)
            }
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
