//
//  ViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 27/11/21.
//

import UIKit

class ListaLembreteController: UITableViewController {
    static let detalheSegue = "DetalheLembreteSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.detalheSegue,
           let destino = segue.destination as? DetalheLembreteViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let lembrete = Lembrete.listaLembrete[indexPath.row]
            destino.configure(lembrete: lembrete)
        }
    }
}

extension ListaLembreteController {
    static let lembreteCellIdentifier = "LembreteCellIdentifier"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Lembrete.listaLembrete.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Self.lembreteCellIdentifier) as? LembreteCell else {
            fatalError()
        }
        
        let lembrete = Lembrete.listaLembrete[indexPath.row]
        
        let imagem = lembrete.foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        cell.dataLabel.text = lembrete.dataLimite.description
        cell.tituloLabel.text = lembrete.titulo
        cell.botaoFeito.setBackgroundImage(imagem, for: .normal)
        cell.acaoBotaoFeito = {
            Lembrete.listaLembrete[indexPath.row].foiFeito.toggle()
            tableView.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
