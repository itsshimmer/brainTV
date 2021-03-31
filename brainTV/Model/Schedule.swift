//
//  Schedule.swift
//  brainTV
//
//  Created by Lucca Molon on 31/03/21.
//

import Foundation
import SwiftUI

struct Schedule: Identifiable {
    var id: Int
    var day: Int
    var doctor: Doctor
    var time: String
    var color: Color
    var about: String
}

var schedules: [Schedule] = [
    Schedule(id:0, day: 25, doctor: doctors[0], time: "10 horas", color: Color(.sRGB, red: 123/255, green: 216/255, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos"),
    Schedule(id: 1, day: 26, doctor: doctors[1], time: "10 horas", color: Color(.sRGB, red: 82/255, green: 47/255, blue: 159/255), about: "Neuropsiclogia, Neuroreabilitação e Transtornos de Aprendizagem"),
    Schedule(id: 2, day: 26, doctor: doctors[2], time: "13 horas", color: Color(.sRGB, red: 254/255, green: 152/255, blue: 0), about: "Epilepsia, Parkinson e Distúrbios do Movimento"),
    Schedule(id: 3, day: 27, doctor: doctors[3], time: "10 horas", color: Color(.sRGB, red: 82/255, green: 47/255, blue: 159/255), about: "Neuropsiclogia, Neuroreabilitação e Transtornos de Aprendizagem"),
    Schedule(id: 4, day: 27, doctor: doctors[4], time: "10 horas", color: Color(.sRGB, red: 123/255, green: 216/255, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos"),
    Schedule(id: 5, day: 27, doctor: doctors[3], time: "13 horas", color: Color(.sRGB, red: 254/255, green: 152/255, blue: 0), about: "Epilepsia, Parkinson e Distúrbios do Movimento"),
    Schedule(id: 6, day: 27, doctor: doctors[0], time: "16 horas", color: Color(.sRGB, red: 123/255, green: 216/255, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos")
]
