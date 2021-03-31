//
//  Class.swift
//  brainTV
//
//  Created by Felipe Grosze Nipper de Oliveira on 31/03/21.
//

import Foundation
import SwiftUI

struct Class{
    var name: String
    var doctor:Doctor
    var imageName: String
    var time:String
    
    var image: Image {
        Image(imageName)
    }
    
}


var classes:[Class] = [Class(name: "Envelhecimento, Memória e Transtornos Cognitivos", doctor: doctors[0], imageName: "Envelhecimento", time: "40 min"),Class(name: "Neuropsicologia, Neuroreabilitação e Transtornos de Aprendizagem", doctor: doctors[1], imageName: "neuro", time: "2h"),Class(name: "Epilepsia, Parkinson e Distúrbios do Movimento", doctor: doctors[3], imageName: "Epilepsia", time: "4h")]
