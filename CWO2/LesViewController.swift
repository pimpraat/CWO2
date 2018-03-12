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
    
    
    // Declare views
    @IBOutlet weak var cwo2eisen: UIView!
    @IBOutlet weak var cwo3eisen: UIView!
    
    // Declare UISegmentedControls
    @IBOutlet weak var standenbedieningvandezeilen: UISegmentedControl!
    @IBOutlet weak var sturenroerenzwaardbediening: UISegmentedControl!
    @IBOutlet weak var overstaggaan: UISegmentedControl!
    @IBOutlet weak var opkruisen: UISegmentedControl!
    @IBOutlet weak var gijpen: UISegmentedControl!
    @IBOutlet weak var afvarenhogerenlangswal: UISegmentedControl!
    @IBOutlet weak var aankomen: UISegmentedControl!
    // Dat hierboven is al gedaan
    @IBOutlet weak var aanlopenbovenwindsgelegenpunt: UISegmentedControl!
    @IBOutlet weak var hangtechnieken: UISegmentedControl!
    @IBOutlet weak var bootstilleggenenopgangbrengen: UISegmentedControl!
    @IBOutlet weak var bzvaartechniekencwo2: UISegmentedControl!
    @IBOutlet weak var veilighandelenmetwindvlagen: UISegmentedControl!
    @IBOutlet weak var opkruisennauwvaarwater: UISegmentedControl!
    @IBOutlet weak var bijzondercwo3: UISegmentedControl!
    @IBOutlet weak var afmerenvdboot: UISegmentedControl!
    @IBOutlet weak var zeiltrim: UISegmentedControl!
    
    @IBOutlet weak var lesnotes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = UserDefaults.standard
        let currentlessonnumber = safe.string(forKey: "CurrentLessonNumber")!
        let CurrentSailorNumber = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
       
        cwo3eisen.isHidden = false
        cwo2eisen.isHidden = false
        
        // Get stored values and display
        standenbedieningvandezeilen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "standenbedieningvandezeilen" + currentlessonnumber))
        
        sturenroerenzwaardbediening.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "sturenroerenzwaardbediening" + currentlessonnumber))
        
        overstaggaan.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "overstaggaan" + currentlessonnumber))
        
        opkruisen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "opkruisen" + currentlessonnumber))
        
        gijpen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "gijpen" + currentlessonnumber))
        
        afvarenhogerenlangswal.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "afvarenhogerenlangswal" + currentlessonnumber))
        
        aankomen.selectedSegmentIndex = safe.integer(forKey:(trainingsgroep + CurrentSailorNumber + "aankomen" + currentlessonnumber))
        
        aanlopenbovenwindsgelegenpunt.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "aanlopenbovenwindsgelegenpunt" + currentlessonnumber))
        hangtechnieken.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "hangtechnieken" + currentlessonnumber))
        bootstilleggenenopgangbrengen.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "bootstilleggenenopgangbrengen" + currentlessonnumber))
        bzvaartechniekencwo2.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "bzvaartechniekencwo2" + currentlessonnumber))
        veilighandelenmetwindvlagen.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "veilighandelenmetwindvlagen" + currentlessonnumber))
        opkruisennauwvaarwater.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "opkruisennauwvaarwater" + currentlessonnumber))
        bijzondercwo3.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "bijzondercwo3" + currentlessonnumber))
        afmerenvdboot.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "afmerenvdboot" + currentlessonnumber))
        zeiltrim.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "zeiltrim" + currentlessonnumber))

        
        
        let targetcwo = safe.integer(forKey: ("cwo" + trainingsgroep + "Sailor" + CurrentSailorNumber))
        if targetcwo == 0 {
            //maak voor 2 en 3 onzichtbaar
            cwo2eisen.isHidden = true
            
        }
        
        if targetcwo == 1 {
            // maak die voor 3 ontzichtbaar
            cwo3eisen.isHidden = true
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
        
        safe.set(aanlopenbovenwindsgelegenpunt.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "aanlopenbovenwindsgelegenpunt" + currentlessonnumber))
        
        
        safe.set(hangtechnieken.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "hangtechnieken" + currentlessonnumber))
        
        
        safe.set(bootstilleggenenopgangbrengen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "bootstilleggenenopgangbrengen" + currentlessonnumber))
        
        
        safe.set(bzvaartechniekencwo2.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "bzvaartechniekencwo2" + currentlessonnumber))
        
        
        safe.set(veilighandelenmetwindvlagen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "veilighandelenmetwindvlagen" + currentlessonnumber))
        
        
        safe.set(opkruisennauwvaarwater.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "opkruisennauwvaarwater" + currentlessonnumber))
        
        
        safe.set(bijzondercwo3.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "bijzondercwo3" + currentlessonnumber))
        
        
        safe.set(afmerenvdboot.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "afmerenvdboot" + currentlessonnumber))
        
        
        safe.set(zeiltrim.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "zeiltrim" + currentlessonnumber))

        
        
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
