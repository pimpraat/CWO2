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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")
        
        
        
        // Get stored values and display
        standenbedieningvandezeilen.selectedSegmentIndex = safe.integer(forKey:  String("standenbedieningvandezeilen" + "\(String(describing: currentlessonnumber))"))
        
        sturenroerenzwaardbediening.selectedSegmentIndex = safe.integer(forKey:  String("sturenroerenzwaardbediening" + "\(String(describing: currentlessonnumber))"))
        
        overstaggaan.selectedSegmentIndex = safe.integer(forKey:  String("overstaggaan" + "\(String(describing: currentlessonnumber))"))
        
        opkruisen.selectedSegmentIndex = safe.integer(forKey:  String("opkruisen" + "\(String(describing: currentlessonnumber))"))
        
        gijpen.selectedSegmentIndex = safe.integer(forKey:  String("gijpen" + "\(String(describing: currentlessonnumber))"))
        
        afvarenhogerenlangswal.selectedSegmentIndex = safe.integer(forKey:  String("afvarenhogerenlangswal" + "\(String(describing: currentlessonnumber))"))
        
        aankomen.selectedSegmentIndex = safe.integer(forKey:  String("aankomen" + "\(String(describing: currentlessonnumber))"))
        
        

        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        
     //  let str = ("standenbedieningvandezeilen" + "\(b)")
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")
        
        
        // Save samen met currentLessonNumber achteraan
        
        
     //   safe.set(bootzeilklaar.selectedSegmentIndex, forKey: "bootzeilklaar")
        
        safe.set(standenbedieningvandezeilen.selectedSegmentIndex, forKey: String("standenbedieningvandezeilen" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(sturenroerenzwaardbediening.selectedSegmentIndex, forKey: String("sturenroerenzwaardbediening" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(overstaggaan.selectedSegmentIndex, forKey: String("overstaggaan" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(opkruisen.selectedSegmentIndex, forKey: String("opkruisen" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(gijpen.selectedSegmentIndex, forKey: String("gijpen" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(afvarenhogerenlangswal.selectedSegmentIndex, forKey: String("afvarenhogerenlangswal" + "\(String(describing: currentlessonnumber))"))
        
        safe.set(aankomen.selectedSegmentIndex, forKey: String("aankomen" + "\(String(describing: currentlessonnumber))"))
        
        
        
        
        
        NSLog("Saved")
        
        safe.set(0, forKey: "CurrentLessonNumber")
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
