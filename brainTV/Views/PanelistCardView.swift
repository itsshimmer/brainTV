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
            Image(doctor.name)
                .resizable()
                .frame(width: 98, height: 107, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(doctor.name)
                    .bold()
                    .font(.title2)
                Text(doctor.speciality)
                StandardButtonView(width: 100, height: 20, backgroundColor: .red, text: "Ver mais", textColor: .white)
            }
        }
    }
}

struct PanelistCardView_Previews: PreviewProvider {
    static var previews: some View {
        PanelistCardView(doctor: doctors[0])
    }
}
