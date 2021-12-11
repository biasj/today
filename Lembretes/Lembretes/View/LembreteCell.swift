//
//  LembreteCell.swift
//  Lembretes
//
//  Created by Beatriz Sato on 27/11/21.
//

import UIKit

class LembreteCell: UITableViewCell {
    typealias DoneButtonAction = () -> Void
    
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var botaoFeito: UIButton!
    
    private var acaoBotaoFeito: DoneButtonAction?
    
    @IBAction func botaoFeitoApertado(_ sender: UIButton) {
        acaoBotaoFeito?()
    }
    
    func configure(titulo: String, data: String, foiFeito: Bool, acaoBotao: @escaping DoneButtonAction) {
        self.tituloLabel.text = titulo
        self.dataLabel.text = data
        let imagem = foiFeito ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        botaoFeito.setBackgroundImage(imagem, for: .normal)
        self.acaoBotaoFeito = acaoBotao
    }
    
}
