//
//  DetalheLembreteDataSource.swift
//  Lembretes
//
//  Created by Beatriz Sato on 28/11/21.
//

import UIKit

class DetalheLembreteDataSource: NSObject {
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
    
    init(lembrete: Lembrete) {
        self.lembrete = lembrete
        super.init()
    }
}

extension DetalheLembreteDataSource: UITableViewDataSource {
    static let detalheCellIdentifier = "DetalheLembreteCellIdentifier"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DetalheLinha.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.detalheCellIdentifier, for: indexPath)
        
        let linha = DetalheLinha(rawValue: indexPath.row)
        cell.textLabel?.text = linha?.mostrarTexto(lembrete: lembrete)
        cell.imageView?.image = linha?.imagem
        
        return cell
    }
}
