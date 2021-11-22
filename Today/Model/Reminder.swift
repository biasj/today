//
//  Reminder.swift
//  Today
//
//  Created by Beatriz Sato on 02/11/21.
//

import Foundation

struct Reminder {
    var title: String
    var dueDate: Date
    var notes: String? = nil
    var isComplete: Bool = false
}

extension Reminder {
    static var testData = [
        Reminder(title: "Fazer a aula 1 do curso MVC", dueDate: Date().addingTimeInterval(800.0)),
        Reminder(title: "Comprar livro de arquitetura de software", dueDate: Date().addingTimeInterval(14000.0), notes: "Procurar por livros do GoF", isComplete: true),
        Reminder(title: "Treinar", dueDate: Date().addingTimeInterval(24000.0), notes: "chamar o João"),
        Reminder(title: "Fazer lista do mercado", dueDate: Date().addingTimeInterval(3200.0), notes: "Ver se a casa não precisa de alguma coisa", isComplete: true),
        Reminder(title: "Criar um pull request", dueDate: Date().addingTimeInterval(60000.0)),
        Reminder(title: "Criar testes unitários", dueDate: Date().addingTimeInterval(72000.0)),
        Reminder(title: "Procurar mais cursos na DIO", dueDate: Date().addingTimeInterval(83000.0), notes: "Cursos iOS"),
        Reminder(title: "Mandar e-mail para o professor", dueDate: Date().addingTimeInterval(92500.0), notes: "Colocar colega em cópia"),
        Reminder(title: "Cancelar assinatura da revista", dueDate: Date().addingTimeInterval(101000.0))
    ]
}


