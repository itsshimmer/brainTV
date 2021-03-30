//
//  RecentClassesScreen.swift
//  brainTV
//
//  Created by João Brentano on 30/03/21.
//

import SwiftUI

struct RecentClassesScreen: View {
    var body: some View {
        VStack {
            HeaderView(text: "Aulas Recentes")
                .ignoresSafeArea()
                .padding(.bottom, -40)
            // TO DO -> REDUZIR PADDING ENTRE ESTES DOIS ELEMENTOS
            FilterNavBarView(tags: ["Geriatria","Neurologia","Psiquiatria","Radiografia"])
            //ForEach(doctors){ doctor in
            ScrollView {
                ClassCardView(doctor: doctors[0], image: Image("Envelhecimento"), time: "40 min", text: "Envelhecimento, Memória e Transtornos Cognitivos")
                ClassCardView(doctor: doctors[1], image: Image("neuro"), time: "2h", text: "Neuropsicologia, Neuroreabilitação e Transtornos de Aprendizagem")
                ClassCardView(doctor: doctors[2], image: Image("Epilepsia"), time: "4 h", text: "Epilepsia, Parkinson e Distúrbios do Movimento")
            }
            
            
            Spacer()
        }
        .background(Color.gray, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)// <- TO DO
    }
}

struct RecentClassesScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecentClassesScreen()
    }
}
