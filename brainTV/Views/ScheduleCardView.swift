//
//  ScheduleCardView.swift
//  brainTV
//
//  Created by Lucca Molon on 29/03/21.
//

import SwiftUI

struct ScheduleCardView: View {
    var doctor: Doctor
    var time: String
    var color: Color
    var about: String
    
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 15, height: 133)
                .foregroundColor(color)
            VStack(alignment: .leading) {
                Text(time)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(color)
                    .padding(.leading)
                    .padding(.top, 7.0)
                    .padding(.bottom, -5.0)
                Text(about)
                    .font(.subheadline)
                    .padding(.horizontal)
                Text(doctor.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom])
                    .padding(.top, -5.0)
            }
        }
        
        .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                        .shadow(radius: 10)
                )
        .padding(7)
    }
}

struct ScheduleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCardView(doctor: doctors[0], time: "10 horas", color: Color(.magenta), about: "Neuropsicologia, Neuroreabilitação e Transtornos de Aprendizagem.")
    }
}
