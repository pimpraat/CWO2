//
//  SelecteerTrainingsgroepViewController.swift
//  CWO2
//
//  Created by Pim Praat on 03/03/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SelecteerTrainingsgroepViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    let safe = UserDefaults.standard
    
    @IBAction func optib(_ sender: Any) {
        safe.set("optia", forKey: "trainingsgroep")
        
    }
    @IBAction func optic(_ sender: Any) { safe.set("optib", forKey: "trainingsgroep") }
    @IBAction func optid(_ sender: Any) { safe.set("optic", forKey: "trainingsgroep") }
    @IBAction func splashlaser(_ sender: Any) { safe.set("splashlaser", forKey: "trainingsgroep") }
    @IBAction func tweemans(_ sender: Any) { safe.set("tweemans", forKey: "trainingsgroep") }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func print() {
        let safe = UserDefaults.standard
        NSLog("%@", safe.dictionaryRepresentation())
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
