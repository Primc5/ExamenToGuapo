//
//  TablaControlador.swift
//  Examenv2
//
//  Created by PABLO CRUZ MENDEZ on 19/6/18.
//  Copyright © 2018 PABLO CRUZ MENDEZ. All rights reserved.
//

import UIKit

class TablaControlador: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataHolder.sharedInstance.arColumnas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CelulaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")as! CelulaTableViewCell
        
        cell.lblNombre?.text = DataHolder.sharedInstance.arColumnas[indexPath.row].sNombre
        cell.descargarImagenes(url: DataHolder.sharedInstance.arColumnas[indexPath.row].sFoto!)
        
        return cell
    }
    
    @IBOutlet var tbMiTabla:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
