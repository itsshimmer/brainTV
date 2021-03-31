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
                doctor.image
                    .resizable()
                    .frame(width: 98, height: 107, alignment: .leading)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.trailing,5)
                VStack(alignment: .leading) {
                    Text(doctor.name)
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.title2)
                    Text(doctor.speciality)
                        .foregroundColor(Color.black)
                        StandardButtonView(width: 100, height: 20, backgroundColor: .red, text: "Ver mais", textColor: .white)
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
