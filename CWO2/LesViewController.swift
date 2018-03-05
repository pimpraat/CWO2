//
//  LesViewController.swift
//  CWO2
//
//  Created by Pim Praat on 30/01/2018.
//  Copyright © 2018 Pim Praat. All rights reserved.
//

import UIKit

class LesViewController: UIViewController {

    let safe = UserDefaults.standard
    
     @IBOutlet weak var standenbedieningvandezeilen: UISegmentedControl!
    @IBOutlet weak var sturenroerenzwaardbediening: UISegmentedControl!
    @IBOutlet weak var overstaggaan: UISegmentedControl!
    @IBOutlet weak var opkruisen: UISegmentedControl!
    @IBOutlet weak var gijpen: UISegmentedControl!
    @IBOutlet weak var afvarenhogerenlangswal: UISegmentedControl!
    @IBOutlet weak var aankomen: UISegmentedControl!
    @IBOutlet weak var lesnotes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")!
        let CurrentSailorNumber = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        
        
        // Get stored values and display
        standenbedieningvandezeilen.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "standenbedieningvandezeilen" + currentlessonnumber))
        
        sturenroerenzwaardbediening.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "sturenroerenzwaardbediening" + currentlessonnumber))
        
        overstaggaan.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "overstaggaan" + currentlessonnumber))
        
        opkruisen.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "opkruisen" + currentlessonnumber))
        
        gijpen.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "gijpen" + currentlessonnumber))
        
        afvarenhogerenlangswal.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "afvarenhogerenlangswal" + currentlessonnumber))
        
        aankomen.selectedSegmentIndex = safe.integer(forKey:(CurrentSailorNumber + "aankomen" + currentlessonnumber))
        
        lesnotes.text = safe.string(forKey: (trainingsgroep + currentlessonnumber))

        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        
     //  let str = ("standenbedieningvandezeilen" + "\(b)")
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")!
        let CurrentSailorNumber = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        // Save samen met currentLessonNumber achteraan
        
        
     //   safe.set(bootzeilklaar.selectedSegmentIndex, forKey: "bootzeilklaar")
        
        safe.set(standenbedieningvandezeilen.selectedSegmentIndex, forKey: (CurrentSailorNumber + "standenbedieningvandezeilen" + currentlessonnumber))
        
        safe.set(sturenroerenzwaardbediening.selectedSegmentIndex, forKey: (CurrentSailorNumber + "sturenroerenzwaardbediening" + currentlessonnumber))
        
        safe.set(overstaggaan.selectedSegmentIndex, forKey: (CurrentSailorNumber + "overstaggaan" + currentlessonnumber))
        
        safe.set(opkruisen.selectedSegmentIndex, forKey: (CurrentSailorNumber + "opkruisen" + currentlessonnumber))
        
        safe.set(gijpen.selectedSegmentIndex, forKey:(CurrentSailorNumber + "gijpen" + currentlessonnumber))
        
        safe.set(afvarenhogerenlangswal.selectedSegmentIndex, forKey: (CurrentSailorNumber + "afvarenhogerenlangswal" + currentlessonnumber))
        
        safe.set(aankomen.selectedSegmentIndex, forKey: (CurrentSailorNumber + "aankomen" + currentlessonnumber))
        
        safe.set(lesnotes.text, forKey: (trainingsgroep + currentlessonnumber))
        
        
        
        
        NSLog("Saved")
        
       // safe.set(0, forKey: "CurrentLessonNumber")
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
