//
//  PanelistCardView.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 29/03/21.
//

import SwiftUI

struct PanelistCardView: View {
    var doctor: Doctor
    
    var body: some View {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(
                        doctor.image
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    )
                
                VStack(alignment: .leading) {
                    Text(doctor.name)
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.title2)
                    Text(doctor.speciality)
                        .foregroundColor(Color.black)
                    NavigationLink(destination: PanelistDetailView(doctor: doctor)) {
                        StandardButtonView(width: 80, height: 20, backgroundColor: .red, text: "Ver mais", textColor: .white, fontSizee: 10)
                    }.padding(.leading,5)
                }
            }
            .frame(width: UIScreen.main.bounds.width*0.9, height: 107, alignment: .leading)
        }
}

struct PanelistCardView_Previews: PreviewProvider {
    static var previews: some View {
        PanelistCardView(doctor: doctors[0])
    }
}
