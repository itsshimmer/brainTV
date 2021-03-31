//
//  ClassCardView.swift
//  brainTV
//
//  Created by Lucca Molon on 29/03/21.
//

import SwiftUI

struct ClassCardView: View {
    var doctor: Doctor
    var image: Image
    var time: String
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(maxWidth: 357, maxHeight: 260)
                .foregroundColor(.white)
            VStack(alignment: .leading) {
                HStack {
                    doctor.image
                        .resizable()
                        .frame(width: 28, height: 28)
                        .clipShape(Circle())
                        .padding(.horizontal)
                    Text(doctor.name)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(time)
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 12.0)
                }.padding(.top,13)
                
                ZStack(alignment: .top) {
                    image
                        .resizable()
                        .frame(width: .infinity, height: 208)
                    HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text(text)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .frame(width: 200, height: .infinity, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.top)

                            StandardButtonView(width: 120, height: 30, backgroundColor: .red, text: "Assistir", textColor: .white)
                            
                        }.frame(width: .infinity, height: .infinity, alignment: .leading)
                    }.padding(.leading,-100)
                }
            }
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 2)
                    .foregroundColor(.white).opacity(0)
            )
            .padding(.horizontal)
        }.padding(.bottom,5)
    }
}

struct ClassCardView_Previews: PreviewProvider {
    static var previews: some View {
        ClassCardView(doctor: doctors[0], image: Image("Envelhecimento"), time: "40 min", text: "Envelhecimento, Memória e Transtornos Cognitivos")
    }
}
