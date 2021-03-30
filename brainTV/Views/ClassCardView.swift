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
        VStack(alignment: .leading) {
            HStack {
                doctor.image
                    .resizable()
                    .frame(width: 28, height: 28)
                    .clipShape(Circle())
                    .padding(11.0)
                    .padding(.leading)
                Text(doctor.name)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.leading, -10.0)
                Spacer()
                Text(time)
                    .font(.caption2)
                    .foregroundColor(Color.gray)
                    .padding(.trailing, 12.0)
            }
            .padding(.top)
            ZStack(alignment: .leading) {
                image
                    .resizable()
                    .frame(width: 355, height: 206)
                Text(text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 99.0)
                    .padding(.leading, 25.0)
                    .padding(.top, -40.0)
                StandardButtonView(width: 120, height: 30, backgroundColor: .red, text: "Assistir", textColor: .white, image: "")
                    .padding(.top, 140.0)
                    .padding(.leading, 20.0)
                    .padding(.bottom, 20.0)
            }
        }
        .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                )
                .padding([.top, .horizontal])
    }
}

struct ClassCardView_Previews: PreviewProvider {
    static var previews: some View {
        ClassCardView(doctor: doctors[0], image: Image("Envelhecimento"), time: "40 min", text: "Envelhecimento, Memória e Transtornos Cognitivos")
    }
}
