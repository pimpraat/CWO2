//
//  SkillsViewController.swift
//  CWO2
//
//  Created by Pim Praat on 30/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    let safe = UserDefaults.standard

    @IBOutlet weak var bootzeilklaar: UISegmentedControl!
    @IBOutlet weak var boottewaterlaten: UISegmentedControl!
    @IBOutlet weak var schiemanswerk: UISegmentedControl!
    @IBOutlet weak var zeiltermenenonderdelen: UISegmentedControl!
    @IBOutlet weak var regelementen: UISegmentedControl!
    @IBOutlet weak var veiligheid: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // GET SEGMENTED CONTROLS FROM USERDEFAULTS AND APPLY!
        
        bootzeilklaar.selectedSegmentIndex = safe.integer(forKey: "bootzeilklaar")
        boottewaterlaten.selectedSegmentIndex = safe.integer(forKey: "boottewaterlaten")
        schiemanswerk.selectedSegmentIndex = safe.integer(forKey: "schiemanswerk")
        zeiltermenenonderdelen.selectedSegmentIndex = safe.integer(forKey: "zeiltermenenonderdelen")
        regelementen.selectedSegmentIndex = safe.integer(forKey: "regelementen")
        veiligheid.selectedSegmentIndex = safe.integer(forKey: "veiligheid")
        
        
    }

    @IBAction func ibootzeilklaar(_ sender: Any) {
        PushMessage(title: "Boot zeil- en nachtklaar maken", message: "beschrijving uit het handboek!")
    }
    
    @IBAction func boottewaterlaten(_ sender: Any) {
    }
    
    @IBAction func schiemanswerk(_ sender: Any) {
    }
    
    @IBAction func zeiltermenenonderdelen(_ sender: Any) {
    }
    
    @IBAction func regelementen(_ sender: Any) {
    }
    
    @IBAction func veiligheid(_ sender: Any) {
    }
    
    @IBAction func back(_ sender: Any) {
        //back slaat ook op
        
        
        safe.set(bootzeilklaar.selectedSegmentIndex, forKey: "bootzeilklaar")
        safe.set(boottewaterlaten.selectedSegmentIndex, forKey: "boottewaterlaten")
        safe.set(schiemanswerk.selectedSegmentIndex, forKey: "schiemanswerk")
        safe.set(zeiltermenenonderdelen.selectedSegmentIndex, forKey: "zeiltermenenonderdelen")
        safe.set(regelementen.selectedSegmentIndex, forKey: "regelementen")
        safe.set(veiligheid.selectedSegmentIndex, forKey: "veiligheid")
        NSLog("Saved")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK - Funcs
    
    func PushMessage(title: String, message: String) {
        let alert = UIAlertController(title: title , message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
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
