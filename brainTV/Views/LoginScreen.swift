//
//  LoginScreen.swift
//  brainTV
//
//  Created by Marcelo Diefenbach on 29/03/21.
//

import SwiftUI

struct LoginScreen: View {
    
    @State var pesquisa: String = ""

    var body: some View {
        ZStack{
            VStack{
                Spacer()
                logoBlackView().fixedSize()
                Spacer()
                InputBoxView(text: "E-mail", placeholder: pesquisa, color: .red).padding(.bottom,5)
                InputBoxView(text: "Senha", placeholder: pesquisa, color: .red).padding(.bottom,50)
                
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .red, text: "Login", textColor: .white)
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .white, text: "Login with Apple", textColor: .black, image: "applelogo").padding(.vertical,5)
                
                StandardButtonView(width: 200, height: 40, backgroundColor: .gray, text: "Criar conta", textColor: .white)
                Spacer()
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
