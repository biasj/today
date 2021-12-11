//
//  Lembrete.swift
//  Lembretes
//
//  Created by Beatriz Sato on 27/11/21.
//

import Foundation

struct Lembrete {
    var titulo: String
    var dataLimite: Date
    var notas: String?
    var foiFeito: Bool
}

extension Lembrete {
    static var listaLembrete = [
        Lembrete(titulo: "Correr 10km", dataLimite: Date().addingTimeInterval(800), notas: "Preparação para Maratona", foiFeito: false),
        Lembrete(titulo: "Ir ao mercado", dataLimite: Date().addingTimeInterval(1800), notas: "Comprar ovo", foiFeito: false),
        Lembrete(titulo: "Fazer lição de casa", dataLimite: Date().addingTimeInterval(90000), notas: "de Matemática e Português", foiFeito: true),
        Lembrete(titulo: "Responder questionário DIO", dataLimite: Date().addingTimeInterval(80000), foiFeito: false),
        Lembrete(titulo: "Assistir todas as aulas do curso MVC", dataLimite: Date().addingTimeInterval(3400), notas: "E responder o questionário", foiFeito: false)
    ]
}
