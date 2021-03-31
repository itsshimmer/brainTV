//
//  Schedule.swift
//  brainTV
//
//  Created by Lucca Molon on 31/03/21.
//

import Foundation
import SwiftUI

struct Schedule {
    var doctor: Doctor
    var time: String
    var color: Color
    var about: String
}

var Schedules: [Schedule] = [
    Schedule(doctor: doctors[0], time: "10 horas", color: Color(.sRGB, red: 123, green: 216, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos"),
    Schedule(doctor: doctors[1], time: "10 horas", color: Color(.sRGB, red: 82, green: 47, blue: 159), about: "Neuropsiclogia, Neuroreabilitação e Transtornos de Aprendizagem"),
    Schedule(doctor: doctors[2], time: "13 horas", color: Color(.sRGB, red: 254, green: 152, blue: 0), about: "Epilepsia, Parkinson e Distúrbios do Movimento"),
    Schedule(doctor: doctors[3], time: "10 horas", color: Color(.sRGB, red: 82, green: 47, blue: 159), about: "Neuropsiclogia, Neuroreabilitação e Transtornos de Aprendizagem"),
    Schedule(doctor: doctors[4], time: "10 horas", color: Color(.sRGB, red: 123, green: 216, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos"),
    Schedule(doctor: doctors[3], time: "13 horas", color: Color(.sRGB, red: 254, green: 152, blue: 0), about: "Epilepsia, Parkinson e Distúrbios do Movimento"),
    Schedule(doctor: doctors[0], time: "16 horas", color: Color(.sRGB, red: 123, green: 216, blue: 0), about: "Envelhecimento, Memória e Transtornos Cognitivos")
]
