//
//  LembreteCell.swift
//  Lembretes
//
//  Created by Beatriz Sato on 22/11/21.
//

import UIKit

class LembreteCell: UITableViewCell {
    typealias AcaoBotaoCompletar = () -> Void
    
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var botaoCompletar: UIButton!
    
    private var botaoCompletarAcao: AcaoBotaoCompletar?
    
    @IBAction func botaoCompletarApertado(_ sender: UIButton) {
        botaoCompletarAcao?()
    }
    
    func configurar(titulo: String, data: String, foiFeito: Bool, botaoCompletar: @escaping AcaoBotaoCompletar) {
        self.tituloLabel.text = titulo
        self.dataLabel.text = data
        let image = foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        self.botaoCompletar.setBackgroundImage(image, for: .normal)
        self.botaoCompletarAcao = botaoCompletar
    }
}
