//
//  Registro.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit
import Firebase

class Registro: UIViewController, DataHolderDelegate {

    @IBOutlet var User: UITextField?
    @IBOutlet var Email: UITextField?
    @IBOutlet var Password: UITextField?
    @IBOutlet var RePassword: UITextField?
    
    @IBOutlet var Salir: UIButton?
    @IBOutlet var Aceptar: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        Email?.text = DataHolder.sharedInstance.email
        User?.text = DataHolder.sharedInstance.user
        Password?.text = DataHolder.sharedInstance.pass
        RePassword?.text = DataHolder.sharedInstance.repass
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickRegister(){
        
        
        DataHolder.sharedInstance.email = (Email?.text)!
        DataHolder.sharedInstance.user = (User?.text)!
        DataHolder.sharedInstance.pass = (Password?.text)!
        DataHolder.sharedInstance.repass = (RePassword?.text)!
        
        
        DataHolder.sharedInstance.Registro(delegate: self, sEmail: (Email?.text)!, sPass: (Password?.text)!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func dataHolderRegister(blfin: Bool) {
        if blfin==true{
            self.performSegue(withIdentifier: "registrado", sender: self)
        }
    }
}
