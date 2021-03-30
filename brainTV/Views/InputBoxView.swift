//
//  inputBoxView.swift
//  brainTV
//
//  Created by João Brentano on 29/03/21.
//

import SwiftUI

struct InputBoxView: View {
    
    @State var text: String = ""
    var placeholder: String
    var color: Color
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 1)
                    .frame(minHeight: 40, idealHeight: 40, maxHeight: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(10)
                TextField(placeholder, text: $text)
                    .padding(.leading, 25)
                
            }
        }
    }
}

struct InputBoxView_Previews: PreviewProvider {
    static var previews: some View {
        InputBoxView(placeholder: "placeholder", color: .red)
    }
}
