//
//  SelectSailorViewController.swift
//  CWO2
//
//  Created by Pim Praat on 30/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SelectSailorViewController: UIViewController {
    
    @IBOutlet weak var sailor1outlet: UIButton!
    @IBOutlet weak var sailor2outlet: UIButton!
    @IBOutlet weak var sailor3outlet: UIButton!
    @IBOutlet weak var sailor4outlet: UIButton!
    @IBOutlet weak var sailor5outlet: UIButton!
    @IBOutlet weak var sailor6outlet: UIButton!
    @IBOutlet weak var sailor7outlet: UIButton!
    @IBOutlet weak var sailor8outlet: UIButton!
    @IBOutlet weak var sailor9outlet: UIButton!
    @IBOutlet weak var sailor10outlet: UIButton!
    @IBOutlet weak var sailor11outlet: UIButton!
    @IBOutlet weak var sailor12outlet: UIButton!
    @IBOutlet weak var sailor13outlet: UIButton!
    @IBOutlet weak var sailor14outlet: UIButton!
    @IBOutlet weak var sailor15outlet: UIButton!
    @IBOutlet weak var sailor16outlet: UIButton!
    @IBOutlet weak var sailor17outlet: UIButton!
    @IBOutlet weak var sailor18outlet: UIButton!
    @IBOutlet weak var sailor19outlet: UIButton!
    @IBOutlet weak var sailor20outlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Set names from save
        let safe = UserDefaults.standard
        let CurrentTrainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "1")) != nil { sailor1outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "1"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "2")) != nil { sailor2outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "2"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "3")) != nil { sailor3outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "3"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "4")) != nil { sailor4outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "4"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "5")) != nil { sailor5outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "5"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "6")) != nil { sailor6outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "6"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "7")) != nil { sailor7outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "7"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "8")) != nil { sailor8outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "8"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "9")) != nil { sailor9outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "9"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "10")) != nil { sailor10outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "10"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "11")) != nil { sailor11outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "11"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "12")) != nil { sailor12outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "12"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "13")) != nil { sailor13outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "13"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "14")) != nil { sailor14outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "4"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "15")) != nil { sailor15outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "15"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "16")) != nil { sailor16outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "16"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "17")) != nil { sailor17outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "17"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "18")) != nil { sailor18outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "18"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "19")) != nil { sailor19outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "19"))), for: UIControlState.normal)}
        if (safe.string(forKey: "name" + CurrentTrainingsgroep + "Sailor" + "20")) != nil { sailor20outlet.setTitle((safe.string(forKey:( "name" + CurrentTrainingsgroep + "Sailor" + "20"))), for: UIControlState.normal)}
    

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
    @IBAction func sailor13(_ sender: Any) { safe.set("13", forKey: "CurrentSailorNumber") }
    @IBAction func sailor14(_ sender: Any) { safe.set("14", forKey: "CurrentSailorNumber") }
    @IBAction func sailor15(_ sender: Any) { safe.set("15", forKey: "CurrentSailorNumber") }
    @IBAction func sailor16(_ sender: Any) { safe.set("16", forKey: "CurrentSailorNumber") }
    @IBAction func sailor17(_ sender: Any) { safe.set("17", forKey: "CurrentSailorNumber") }
    @IBAction func sailor18(_ sender: Any) { safe.set("18", forKey: "CurrentSailorNumber") }
    @IBAction func sailor19(_ sender: Any) { safe.set("19", forKey: "CurrentSailorNumber") }
    @IBAction func sailor20(_ sender: Any) { safe.set("20", forKey: "CurrentSailorNumber") }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
