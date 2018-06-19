//
//  ViewController.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataHolderDelegate {

    @IBOutlet var Email: UITextField?
    @IBOutlet var Password: UITextField?
    
    @IBOutlet var Registro: UIButton?
    @IBOutlet var Aceptar: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func dataHolderLogin(blfin: Bool) {
        if blfin==true{
           self.performSegue(withIdentifier: "logueado", sender: self)
        }
    }
    
    @IBAction func cliclogevent(){
        DataHolder.sharedInstance.Login(delegate: self, sEmail: (Email?.text)!, sContrasena: (Password?.text)!)
    }
    
}

