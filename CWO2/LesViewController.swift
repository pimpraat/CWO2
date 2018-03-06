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
        
        let safe = UserDefaults.standard
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")!
        let CurrentSailorNumber = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        
       
        
        // Get stored values and display
        standenbedieningvandezeilen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "standenbedieningvandezeilen" + currentlessonnumber))
        
        sturenroerenzwaardbediening.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "sturenroerenzwaardbediening" + currentlessonnumber))
        
        overstaggaan.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "overstaggaan" + currentlessonnumber))
        
        opkruisen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "opkruisen" + currentlessonnumber))
        
        gijpen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "gijpen" + currentlessonnumber))
        
        afvarenhogerenlangswal.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "afvarenhogerenlangswal" + currentlessonnumber))
        
        aankomen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "aankomen" + currentlessonnumber))
        
        let targetcwo = safe.integer(forKey: ("cwo" + trainingsgroep + "Sailor" + CurrentSailorNumber))
        if targetcwo == 1 {
            //maak voor 2 en 3 onzichtbaar
        }
        
        if targetcwo == 2 {
            // maak die voor 3 ontzichtbaar
        }
       
        lesnotes.text = safe.string(forKey: (trainingsgroep + currentlessonnumber))
        if lesnotes.text == "" {
            lesnotes.text = "Weer, wind en wat heb je gedaan?"
        }

        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        
     //  let str = ("standenbedieningvandezeilen" + "\(b)")
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")!
        let CurrentSailorNumber = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        // Save samen met currentLessonNumber achteraan
        
        
     //   safe.set(bootzeilklaar.selectedSegmentIndex, forKey: "bootzeilklaar")
        
        safe.set(standenbedieningvandezeilen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "standenbedieningvandezeilen" + currentlessonnumber))
        
        safe.set(sturenroerenzwaardbediening.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "sturenroerenzwaardbediening" + currentlessonnumber))
        
        safe.set(overstaggaan.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "overstaggaan" + currentlessonnumber))
        
        safe.set(opkruisen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "opkruisen" + currentlessonnumber))
        
        safe.set(gijpen.selectedSegmentIndex, forKey:(trainingsgroep + CurrentSailorNumber + "gijpen" + currentlessonnumber))
        
        safe.set(afvarenhogerenlangswal.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "afvarenhogerenlangswal" + currentlessonnumber))
        
        safe.set(aankomen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "aankomen" + currentlessonnumber))
        
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
