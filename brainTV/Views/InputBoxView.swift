//
//  inputBoxView.swift
//  brainTV
//
//  Created by João Brentano on 29/03/21.
//

import SwiftUI

struct inputBoxView: View {
    
    @State var text: String = ""
    var placeholder: String = ""
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.red, lineWidth: 1)
                    .frame(minHeight: 40, idealHeight: 40, maxHeight: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(10)
                TextField(placeholder, text: $text)
                    .padding(.leading)
                
            }
        }
    }
}

struct inputBoxView_Previews: PreviewProvider {
    static var previews: some View {
        inputBoxView(placeholder: "placeholder")
    }
}
