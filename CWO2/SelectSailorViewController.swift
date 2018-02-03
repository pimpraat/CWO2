//
//  SelectSailorViewController.swift
//  CWO2
//
//  Created by Pim Praat on 30/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SelectSailorViewController: UIViewController {
    @IBOutlet weak var zeiler1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Set names from save
        let safe = UserDefaults.standard
        zeiler1.setTitle(safe.string(forKey: "NameSailor1"), for: .normal)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
      let safe = UserDefaults.standard
    
    
    @IBAction func sailor1(_ sender: Any) { safe.set("1", forKey: "CurrentSailorNumber") }
    @IBAction func sailor2(_ sender: Any) { safe.set("2", forKey: "CurrentSailorNumber") }
    @IBAction func sailor3(_ sender: Any) { safe.set("3", forKey: "CurrentSailorNumber") }
    @IBAction func sailor4(_ sender: Any) { safe.set("4", forKey: "CurrentSailorNumber") }
    @IBAction func sailor5(_ sender: Any) { safe.set("5", forKey: "CurrentSailorNumber") }
    @IBAction func sailor6(_ sender: Any) { safe.set("6", forKey: "CurrentSailorNumber") }
    @IBAction func sailor7(_ sender: Any) { safe.set("7", forKey: "CurrentSailorNumber") }
    @IBAction func sailor8(_ sender: Any) { safe.set("8", forKey: "CurrentSailorNumber") }
    @IBAction func sailor9(_ sender: Any) { safe.set("9", forKey: "CurrentSailorNumber") }
    @IBAction func sailor10(_ sender: Any) { safe.set("10", forKey: "CurrentSailorNumber") }
    @IBAction func sailor11(_ sender: Any) { safe.set("11", forKey: "CurrentSailorNumber") }
    @IBAction func sailor12(_ sender: Any) { safe.set("12", forKey: "CurrentSailorNumber") }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
