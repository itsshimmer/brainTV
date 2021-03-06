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
                    .padding(.horizontal,10)
                    ScrollView {
                        ForEach(doctors) { doctor in
                            PanelistCardView(doctor: doctor)
                            Divider().padding(.horizontal,10).padding(.vertical,2)
                        }
                    }.padding(.bottom,83)
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
