//
//  Capuchas.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class Capuchas: NSObject {
    let IDnombre = "nombre"
    let IDfoto = "foto"
    
    var sID:String?
    var sNombre:String?
    var sFoto:String?
    
    func setMap(valores:[String:Any]) {
        sNombre = valores[IDnombre] as? String
        sFoto = valores[IDfoto] as? String
    }
    
    func getMap() -> [String:Any] {
        return[
            IDnombre: sNombre as Any        ]
    }
}
