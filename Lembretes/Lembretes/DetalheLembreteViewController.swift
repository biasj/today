//
//  DetalheLembreteViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 28/11/21.
//

import UIKit

class DetalheLembreteViewController: UITableViewController {
    enum DetalheLinha: Int, CaseIterable {
        case titulo
        case data
        case tempo
        case nota
        
        func mostrarTexto(lembrete: Lembrete?) -> String? {
            switch self {
            case .titulo:
                return lembrete?.titulo
            case .data:
                return lembrete?.dataLimite.description
            case .tempo:
                return lembrete?.dataLimite.description
            case .nota:
                return lembrete?.notas
            }
        }
        
        var imagem: UIImage? {
            switch self {
            case .titulo:
                return nil
            case .data:
                return UIImage(systemName: "calendar")
            case .tempo:
                return UIImage(systemName: "clock")
            case .nota:
                return UIImage(systemName: "square.and.pencil")
            }
        }
    }
    
    var lembrete: Lembrete?
    
    func configure(lembrete: Lembrete) {
        self.lembrete = lembrete
    }
}

extension DetalheLembreteViewController {
    static let detalheCellIdentifier = "DetalheLembreteCellIdentifier"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DetalheLinha.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.detalheCellIdentifier, for: indexPath)
        
        let linha = DetalheLinha(rawValue: indexPath.row)
        cell.textLabel?.text = linha?.mostrarTexto(lembrete: lembrete)
        cell.imageView?.image = linha?.imagem
        
        return cell
    }
}
