//
//  FilterNavBarView.swift
//  brainTV
//
//  Created by Felipe Grosze Nipper de Oliveira on 30/03/21.
//

import SwiftUI

struct Tag: Identifiable {
    var id: String { name }
    var name: String
    var index:Int
}

struct FilterNavBarView: View {
    var tagsEntity:[Tag] = []
    init(tags:[String]) {
        for k in 0...tags.count-1 {
            tagsEntity.append(Tag(name: tags[k],index:k))
        }
    }
    @State private var isPressed = 0
    var body: some View {
        HStack{
            ScrollView(.horizontal,showsIndicators:
                        false) {
                HStack{
                    Spacer()
                    ForEach(tagsEntity){ tag in
                        Button(tag.name){
                            isPressed = tag.index
                        }
                        .frame(width: 120.0, height: 30.0)
                        .background(isPressed == tag.index ? Color.red : Color(.sRGB, red: 217/255, green: 44/255, blue: 45/255, opacity: 0))
                            .foregroundColor(isPressed == tag.index ? Color.white : Color.black)
                        .font(.body)
                        .cornerRadius(40)
                    }
                }.frame(width: .infinity, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.leading,10)
            }.background(Color.init(.white).opacity(0))
        }
    }
}

struct FilterNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        FilterNavBarView(tags: ["teste1","teste2","teste3","teste4"])
    }
}
