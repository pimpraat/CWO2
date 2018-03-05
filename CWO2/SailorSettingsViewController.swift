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

    @IBOutlet weak var NameField: UITextField!
    @IBOutlet weak var CwoSelector: UISegmentedControl!
    @IBOutlet weak var AantalMansSelector: UISegmentedControl!
    @IBOutlet weak var notefield: UITextView!
    
    
   
    
    
    @IBAction override func delete(_ sender: Any?) {
        // DELETE SAILOR AND PUT BACK DUMMY DATA
        let CurrentSailorNumberr = safe.string(forKey: "CurrentSailorNumber")!
        let CurrentTrainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        safe.set("Zeiler", forKey: ("name" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set(0, forKey: ("cwo" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set(0, forKey: ("mans" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set("Geboortedatum: dd-mm-yyyy", forKey: ("notes" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        
        
        
    }
    
    @IBAction func back(_ sender: Any) {

        
        let CurrentSailorNumberr = safe.string(forKey: "CurrentSailorNumber")!
        let CurrentTrainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        
        safe.set(NameField.text, forKey: ("name" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set(CwoSelector.selectedSegmentIndex, forKey: ("cwo" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set(AantalMansSelector.selectedSegmentIndex, forKey: ("mans" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        safe.set(notefield.text, forKey: ("notes" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        let CurrentSailorNumberr = safe.string(forKey: "CurrentSailorNumber")!
        let CurrentTrainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        
        if safe.string(forKey:("name" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr)) != nil {
            NameField.text = safe.string(forKey: ("name" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
            CwoSelector.selectedSegmentIndex = safe.integer(forKey: ("cwo" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
            AantalMansSelector.selectedSegmentIndex = safe.integer(forKey:("mans" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
            notefield.text = safe.string(forKey: ("notes" + CurrentTrainingsgroep + "Sailor" + CurrentSailorNumberr))
            
        }
    }
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
