//
//  SailorSettingsViewController.swift
//  CWO2
//
//  Created by Pim Praat on 31/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SailorSettingsViewController: UIViewController {
    
    let safe = UserDefaults.standard
    
    // Outlets
    
    // alert met dropdown om alles te verwijderen?
    
    @IBOutlet weak var sailor1_field: UITextField!
    @IBOutlet weak var sailor1_Delete: UIButton!
    @IBOutlet weak var CwoSelectorSailor1: UISegmentedControl!
    
    
    // TODO IMPLEMENT DELETE FUNCTION
    
    
    @IBAction func back(_ sender: Any) {
        
        // TODO: SAVE EVERY FIELD
        
        safe.set(sailor1_field.text, forKey: "NameSailor1")
        safe.set(CwoSelectorSailor1.selectedSegmentIndex, forKey: "CertificateSailor1")
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // TODO: SET ALL DATA
        
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
