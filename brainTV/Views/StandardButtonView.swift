//
//  StandardButtonView.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 29/03/21.
//

import SwiftUI

struct StandardButtonView: View {
    var width: CGFloat
    var height: CGFloat
    var backgroundColor: Color
    var text: String
    var textColor: Color
    var image: String?
    var fontSizee: Double

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 150, style: .continuous)
                .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(backgroundColor)
                .shadow(radius: 5)
            HStack {
                if let validImage = image {
                    Image(systemName: validImage)
                        .font(.body)
                    Text(text)
                        .font(.system(size: CGFloat(fontSizee)))
                }
                else {
                  Text(text)
                    .font(.system(size: CGFloat(fontSizee)))
                }
            }
            .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(textColor)
        }
    }
}

struct StandardButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StandardButtonView(width: 200, height: 50, backgroundColor: .white, text: "login with Apple", textColor: .black, image: "applelogo", fontSizee: 15)
    }
}
