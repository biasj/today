//
//  ViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 27/11/21.
//

import UIKit

class ListaLembreteController: UITableViewController {
    static let detalheSegue = "DetalheLembreteSegue"
    
    private var lembreteDataSource: LembreteDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lembreteDataSource = LembreteDataSource()
        tableView.dataSource = lembreteDataSource
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
