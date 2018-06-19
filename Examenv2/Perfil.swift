//
//  Perfil.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class Perfil: NSObject {
    var sNombre:String?
    var sEmail:String?
    var sRutaimagen:String?
    
    
    func setMap(valores:[String:Any]) {
        sNombre = valores["nombre"] as? String
        sEmail = valores["email"] as? String
        sRutaimagen = valores["capucha"] as? String
        
        print("Nombre: ",sNombre)
        print("Email: ",sEmail)
        print("Enlace imagen: ",sRutaimagen)
    }
    
    func getMap() -> [String:Any] {
        return[
            "nombre": sNombre as Any,
            "email": sEmail as Any,
            "capuchas": sRutaimagen as Any
        ]
    }
    func setCapucha(link: String){
        sRutaimagen = link
        print("capucha cambiada")
    }
}