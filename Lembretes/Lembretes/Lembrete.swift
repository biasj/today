//
//  Lembrete.swift
//  Lembretes
//
//  Created by Beatriz Sato on 21/11/21.
//

import Foundation

struct Lembrete {
    var titulo: String
    var dataLimite: Date
    var notas: String?
    var foiFeito: Bool
}

extension Lembrete {
    static var dadosLembretes : [Lembrete] = [
        Lembrete(titulo: "Fazer aula 1 curso MVC", dataLimite: Date().addingTimeInterval(800), notas: "Etapas 1 e 2", foiFeito: true),
        Lembrete(titulo: "Fazer aula 2 curso MVC", dataLimite: Date().addingTimeInterval(1500), notas: "Etapas 1, 2 e 3", foiFeito: false),
        Lembrete(titulo: "Mercado", dataLimite: Date().addingTimeInterval(18000), notas: "Comprar ovo", foiFeito: false),
        Lembrete(titulo: "Fazer trabalho", dataLimite: Date().addingTimeInterval(20000), foiFeito: false),
        Lembrete(titulo: "Treinar", dataLimite: Date().addingTimeInterval(180000), foiFeito: true),
        Lembrete(titulo: "Cozinhar ovo", dataLimite: Date().addingTimeInterval(200000), notas: "Ovo mexido", foiFeito: false),
        Lembrete(titulo: "Dormir", dataLimite: Date().addingTimeInterval(30300), notas: "8h de sono pelo menos", foiFeito: false),
    ]
}
