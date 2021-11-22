//
//  DetalheLembreteViewController.swift
//  Lembretes
//
//  Created by Beatriz Sato on 22/11/21.
//

import UIKit

class DetalheLembreteViewController: UITableViewController {
    enum LinhaLembrete: Int, CaseIterable {
        case title
        case date
        case time
        case notes
        
        func mostrarText(para lembrete: Lembrete?) -> String? {
            switch self {
            case .title:
                return lembrete?.titulo
            case .date:
                return lembrete?.dataLimite.description
            case .time:
                return lembrete?.dataLimite.description
            case .notes:
                return lembrete?.notas
            }
        }
        
        var imagemCelula: UIImage? {
            switch self {
            case .title:
                return nil
            case .date:
                return UIImage(systemName: "calendar.circle")
            case .time:
                return UIImage(systemName: "clock")
            case .notes:
                return UIImage(systemName: "square.and.pencil")
            }
        }
    }

    var lembrete: Lembrete?
    
    func configure(com lembrete: Lembrete) {
        self.lembrete = lembrete
    }
}

extension DetalheLembreteViewController {
    static let detalheLembreteCell = "DetalheLembreteCell"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LinhaLembrete.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.detalheLembreteCell, for: indexPath)
        
        let linha = LinhaLembrete(rawValue: indexPath.row)
        cell.textLabel?.text = linha?.mostrarText(para: lembrete)
        cell.imageView?.image = linha?.imagemCelula
        return cell
    }
}
