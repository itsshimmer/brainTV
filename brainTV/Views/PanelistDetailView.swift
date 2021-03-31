//
//  PanelistDetailView.swift
//  brainTV
//
//  Created by Felipe Grosze Nipper de Oliveira on 30/03/21.
//

import SwiftUI

struct PanelistDetailView: View {
    var doctor: Doctor
    var body: some View {
            ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(Color(.sRGB, red: 240/255, green: 240/255, blue: 240/255, opacity: 1))
                ScrollView {
                VStack{
                        doctor.image
                            .resizable()
                            .frame(height: 320.0)
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(.sRGB, red: 217/255, green: 44/255, blue: 45/255, opacity: 0), lineWidth: 4))
                            .padding(.top, 78.0)
                        VStack {
                            ZStack {
                                RoundedRectangle(cornerRadius:10.0)
                                    .foregroundColor(.white)
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("Nome")
                                            .font(.callout)
                                        Spacer()
                                        Text(doctor.name)
                                            .bold()
                                            .font(.title)
                                            .foregroundColor(.red)
                                    }
                                    Divider()
                                    HStack {
                                        Text("Especialidade")
                                            .font(.callout)
                                        Spacer()
                                        Text(doctor.speciality)
                                            .font(.title3)
                                    }
                                    Divider()
                                    HStack {
                                        Text("Biografia")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.bio)
                                            .font(.caption)
                                            .multilineTextAlignment(.trailing)
                                        
                                            
                                    }
                                    Divider()
                                    HStack {
                                        Text("E-mail")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.email)
                                            .font(.caption)
                                            
                                    }
                                    Divider()
                                    HStack {
                                        Text("Localização")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.local)
                                            .font(.caption)
                                            
                                    }
                                }
                                .padding(.horizontal)
                            }
                            StandardButtonView(width: .infinity, height: 25, backgroundColor: .red, text: "Enviar e-mail", textColor: .white)
                        }
    //                    Spacer()
                    }
                    .padding()
                }
            .ignoresSafeArea()
        }
    }
}

struct PanelistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PanelistDetailView(doctor: doctors[1])
    }
}
