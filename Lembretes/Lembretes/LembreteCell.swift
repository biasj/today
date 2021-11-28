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
    
    var acaoBotaoFeito: DoneButtonAction?
    
    @IBAction func botaoFeitoApertado(_ sender: UIButton) {
        acaoBotaoFeito?()
    }
    
}
