//
//  Doctor.swift
//  brainTV
//
//  Created by Lucca Molon on 29/03/21.
//

import Foundation
import SwiftUI

struct Doctor: Identifiable{
    var id: Int
    var name: String
    var speciality: String
    var bio: String
    var email: String
    var local: String
    var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}

var doctors: [Doctor] = [
    Doctor(id: 0, name: "Dr. João Senger", speciality: "Geriatria", bio: "Pós-graduado em Geriatria, Mestre em Saúde Coletiva, professor colaborador do curso de pós graduação em Gerontologia da UCS, pesquisador do Instituto Moriguchi/Centro de Estudos do Envelhecimento", email: "joao.senger@gmail.com", local: "Brasil", imageName: "João Senger"),
    Doctor(id: 1, name: "Dra. Josiane Silvera", speciality: "Neurologia", bio: "Possui graduação em Medicina pela UFJR (1985), doutorado em Neurociências pela UNIFESP (1997) e Livre Docência pela UNIFESP (2007).", email: "josiane.silvera@gmail.com", local: "Brasil", imageName: "Josiane Silvera"),
    Doctor(id: 2, name: "Dr. Augusto Buchweitz", speciality: "Neurologia", bio: "Augusto is the Director of the Center for Cognitive and Brain Health and professor of Psychology at Northeastern University in Boston.", email: "augusto.buchweitz@gmail.com", local: "EUA", imageName: "Augusto Buchweitz"),
    Doctor(id: 3, name: "Dr. Cleber de Souza", speciality: "Neurologia", bio: "Professor de Neurologia do Hospital Nacional de Neurologia e Neurocirurgia, Queen Square, Londres, University College London e professor visitante da University of Liverpool.", email: "cleber.souza@gmail.com", local: "Brasil", imageName: "Cleber de Souza"),
    Doctor(id: 4, name: "Dra. Flávia Fernandes", speciality: "Geriatria", bio: "Médica geriatra e docente da Disciplina de Geriatria da Faculdade de Medicina da Universidade de São Paulo. ", email: "flavia.fernandes@gmail.com", local: "Brasil", imageName: "Flávia Fernandes"),
    Doctor(id: 5, name: "Dra. Thaís Fragoso", speciality: "Psicologia", bio: "Diretora do Instituto Central de Saúde Mental e Diretora Médica do Departamento de Psiquiatria e Psicoterapia do Instituto, em Mannheim, Alemanha.", email: "thais.fragoso@gmail.com", local: "Brasil", imageName: "Thais Fragoso"),
    Doctor(id: 6, name: "Dr. Fernando Gomes", speciality: "Neurologia", bio: "Professor do Programa de Pós-Graduação em Psicologia e do Programa de Pós-Graduação em Ciências Sociais da Pontifícia Universidade Católica do Rio Grande do Sul (PUCRS).", email: "fernando.gomes@gmail.com", local: "Brasil", imageName: "Fernando Gomes")
]
