//
//  Doctor.swift
//  brainTV
//
//  Created by Lucca Molon on 29/03/21.
//

import Foundation
import SwiftUI

struct Doctor {
    var name: String
    var speciality: String
    var bio: String
    var email: String
    var local: String
    
    var image: Image {
        Image(name)
    }
}

var doctors: [Doctor] = [
    Doctor(name: "Josiane Silvera", speciality: "Neurologia", bio: "Possui graduação em Medicina pela UFJR (1985), doutorado em Neurociências pela UNIFESP (1997) e Livre Docência pela UNIFESP (2007).", email: "josiane.silvera@gmail.com", local: "Brasil")
]
