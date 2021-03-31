//
//  PanelistsScreen.swift
//  brainTV
//
//  Created by Lucas Dimer Justo on 30/03/21.
//

import SwiftUI

struct PanelistsScreen: View {
    
    var body: some View {
        NavigationView {
            VStack{
                    HeaderView(text: "Palestrantes")
                    InputBoxView(text: "", placeholder: "Digite o nome do palestrante...", color: .black)
                    ScrollView {
                        ForEach(doctors) { doctor in
                            NavigationLink(destination: PanelistDetailView(doctor: doctor)) {
                                PanelistCardView(doctor: doctor)
                            }
                            Divider()
                                .padding(.horizontal)
                        }
                    }
                    //TabBarView()
                }
            .ignoresSafeArea()
        }
    }
}

struct PanelistsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PanelistsScreen()
    }
}
