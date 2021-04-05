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
                .padding(.bottom, -55)
            //ForEach(doctors){ doctor in
            ScrollView {
                FilterNavBarView(tags: ["Geriatria","Neurologia","Psiquiatria","Radiografia"]).padding(.top,5)
                ClassCardView(doctor: doctors[0], image: Image("Envelhecimento"), time: "40 min", text: "Envelhecimento, Memória e Transtornos Cognitivos")
                ClassCardView(doctor: doctors[1], image: Image("neuro"), time: "2h", text: "Neuropsicologia, Neuroreabilitação e Transtornos de Aprendizagem")
                ClassCardView(doctor: doctors[2], image: Image("Epilepsia"), time: "4 h", text: "Epilepsia, Parkinson e Distúrbios do Movimento")
            }
        }
        .background(Color(.sRGB, red: 240/255, green: 240/255, blue: 240/255, opacity: 1), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct RecentClassesScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecentClassesScreen()
    }
}
