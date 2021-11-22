//
//  ViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 21/11/21.
//

import UIKit

class ListaLembreteViewController: UITableViewController {
    static let detalheLembreteSegue = "DetalheLembreteSegue"
    
    private var dataSource: ListaLembreteDataSource?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.detalheLembreteSegue,
           let destino = segue.destination as? DetalheLembreteViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let lembrete = Lembrete.dadosLembretes[indexPath.row]
            destino.configure(com: lembrete)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = ListaLembreteDataSource()
        tableView.dataSource = dataSource
    }
}
