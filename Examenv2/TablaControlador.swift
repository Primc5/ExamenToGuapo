//
//  TablaControlador.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class TablaControlador: UIViewController, UITableViewDelegate, UITableViewDataSource, DataHolderDelegate {

    
    @IBOutlet var tbMiTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataHolder.sharedInstance.descargarCapuchas(delegate: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DHDDescargaCapucha(blnFin: Bool){
        if blnFin == true{
            self.refreshUI()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataHolder.sharedInstance.arColumnas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CelulaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")as! CelulaTableViewCell
        
        cell.lblNombre?.text = DataHolder.sharedInstance.arColumnas[indexPath.row].sNombre
        cell.descargarImagenes(url: DataHolder.sharedInstance.arColumnas[indexPath.row].sFoto!)
        
        return cell
        
        
    }
    
    func refreshUI() {
        DispatchQueue.main.async(execute: {
            self.tbMiTabla?.reloadData()
        })
    }


}
