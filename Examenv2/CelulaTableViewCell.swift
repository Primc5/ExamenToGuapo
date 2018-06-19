//
//  CelulaTableViewCell.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit
import Firebase

class CelulaTableViewCell: UITableViewCell, DataHolderDelegate {

    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var imgCelda1:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var ImagenDescargada:UIImage?
    
    func descargarImagenes(url:String){
        self.imgCelda1?.image = nil
        DataHolder.sharedInstance.bajarImagenes(clave: url, delegate: self)
        
    }
    func imagen(imagen: UIImage) {
        self.imgCelda1?.image = imagen
    }
}
