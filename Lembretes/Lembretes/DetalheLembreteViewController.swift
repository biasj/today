//
//  DetalheLembreteViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 28/11/21.
//

import UIKit

class DetalheLembreteViewController: UITableViewController {
    func configure(lembrete: Lembrete) {
        self.lembrete = lembrete
    }
    
    private var lembrete: Lembrete?
    private var detalheDataSource: DetalheLembreteDataSource?
    
    override func viewDidLoad() {
        guard let lembrete = lembrete else {
            fatalError("Não existe nenhum lembrete para ser mostrado")
        }
        
        detalheDataSource = DetalheLembreteDataSource(lembrete: lembrete)
        tableView.dataSource = detalheDataSource
    }
}
