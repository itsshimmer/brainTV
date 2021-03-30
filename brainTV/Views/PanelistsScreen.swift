//
//  PanelistsScreen.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 30/03/21.
//

import SwiftUI

struct PanelistsScreen: View {
    var text: String
    
    var body: some View {
        VStack{
            HeaderView(text: "Palestrantes")
            InputBoxView(text: text, placeholder: "Digite o nome do palestrante...", color: .black)
            ScrollView {
                ForEach(doctors) { doctor in
                    //NavigationLink(destination: MovieDetailView(doctor: doctor)){
                        PanelistCardView(doctor: doctor)
                    //}
                    Divider()
                        .padding(.horizontal)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct PanelistsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PanelistsScreen(text: "")
    }
}
