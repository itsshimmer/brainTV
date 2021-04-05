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
                            .frame(height: 300.0)
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(.sRGB, red: 217/255, green: 44/255, blue: 45/255, opacity: 0), lineWidth: 4))
                            .padding(.top, 80.0)
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
                                            .font(.title2)
                                            .foregroundColor(.red)
                                    }.padding(.top,12)
                                    Divider()
                                    HStack {
                                        Text("Especialidade")
                                            .font(.callout)
                                        Spacer()
                                        Text(doctor.speciality)
                                            .font(.title3)
                                    }
                                    .padding(.top,5)
                                    Divider()
                                    HStack {
                                        Text("Biografia")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.bio)
                                            .font(.caption)
                                            .multilineTextAlignment(.trailing)
                                            .frame(width: 190, height: .infinity)
                                            .padding(.vertical,5)
                                    }
                                    Divider()
                                    HStack {
                                        Text("E-mail")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.email)
                                            .font(.caption)
                                            .frame(width: 190, height: 30, alignment: .trailing)
                                            
                                    }
                                    Divider()
                                    HStack {
                                        Text("Localização")
                                            .font(.callout)
                                        Spacer()
                                            .padding(.bottom)
                                        Text(doctor.local)
                                            .font(.caption)
                                    }.padding(.vertical,5).padding(.bottom,10)
                                }
                                .padding(.horizontal)
                            }
                            StandardButtonView(width: .infinity, height: 30, backgroundColor: .red, text: "Enviar e-mail", textColor: .white, fontSizee: 15).padding(.bottom,100)
                        }
    //                    Spacer()
                    }
                .padding(.horizontal)
                .padding(.top)
                .padding(.bottom,13)
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
