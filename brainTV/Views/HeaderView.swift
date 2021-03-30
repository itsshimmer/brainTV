//
//  HeaderView.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 30/03/21.
//

import SwiftUI

struct HeaderView: View {
    var text: String
    
    var body: some View {
        VStack{
            Spacer()
            Text(text)
                .foregroundColor(.white)
                .font(.title2)
                .frame(width: UIScreen.main.bounds.width * 0.93, height: 20, alignment: .leading)
                .padding(.bottom, 14)
        }
            .frame(width: UIScreen.main.bounds.width, height: 92, alignment: .center)
            .background(Color.black)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Programacão")
    }
}
