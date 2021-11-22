//
//  ListaLembreteDataSource.swift
//  Lembretes
//
//  Created by Beatriz Sato on 22/11/21.
//

import UIKit

class ListaLembreteDataSource: NSObject {
    
}

extension ListaLembreteDataSource: UITableViewDataSource {
    static let lembreteReuseIdentifier = "LembreteCell"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Lembrete.dadosLembretes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteReuseIdentifier) as? LembreteCell else {
            fatalError("Não foi possível desenfileirar célula")
        }
        
        let lembrete = Lembrete.dadosLembretes[indexPath.row]
        
        cell.configurar(titulo: lembrete.titulo, data: lembrete.dataLimite.description, foiFeito: lembrete.foiFeito) {
            Lembrete.dadosLembretes[indexPath.row].foiFeito.toggle()
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
    
}
