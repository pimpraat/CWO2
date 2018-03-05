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
        let CurrentSailorNumber:String  = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep  = safe.string(forKey: "trainingsgroep")!
        
        bootzeilklaar.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "bootzeilklaar"))
        boottewaterlaten.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "boottewaterlaten"))
        schiemanswerk.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "schiemanswerk"))
        zeiltermenenonderdelen.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "zeiltermenenonderdelen"))
        regelementen.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "regelementen"))
        veiligheid.selectedSegmentIndex = safe.integer(forKey: (trainingsgroep + CurrentSailorNumber + "veiligheid"))
        
        
    }
    
    // MARK - Informatie pushes

    @IBAction func ibootzeilklaar(_ sender: Any) {
        PushMessage(title: "Boot zeil- en nachtklaar maken", message: "Zeilklaar maken: boot zeilklaar maken op de wal. Zeil dat reeds is bevestigd aan de rondhouten in het schip aanbrengen, zeilschoot inscheren, spriet bevestigen. Inventaris compleet maken. Nachtklaar maken: mast en zeil uit de boot nemen, zeil (nog bevestigd aan mast en giek) goed oprollen, inventaris uit het schip halen, schip schoon en droog maken.")
    }
    
    @IBAction func boottewaterlaten(_ sender: Any) {
        PushMessage(title: "Boot te water laten en varen", message: "Te water laten: kunnen meehelpen bij het in het water laten van de boot. Verhalen d.m.v.: roeien: met twee riemen rechtuit roeien, bochten draaien en afstoppen en/of Peddelen: met behulp van een peddel of ander daartoe geschikt voorwerp de boot verhalen.")
    }
    
    @IBAction func schiemanswerk(_ sender: Any) {
        PushMessage(title: "Schiemanswerk", message: "In de in praktijk voorkomende gevallen de volgende steken kunnen leggen: Slipsteek met daarop een halve steek, achtknoop.")
    }
    
    @IBAction func zeiltermenenonderdelen(_ sender: Any) {
        PushMessage(title: "Zeiltermen en benaming van onderdelen van de boot", message: "Zeiltermen: Het kunnen aangeven wat wordt bedoeld met vijf van de volgende termen: in de wind, halve wind, voor de wind, aan de wind, hoger- en lagerwal, bakboord, stuurboord, hoge en lage zijde en loef- en lijzijde van het schip, killen van het zeil. Benamingen: Het kunnen benoemen van minimaal vijf onderdelen van de eigen boot en tuigage.")
    }
    
    @IBAction func regelementen(_ sender: Any) {
        PushMessage(title: "Regelementen", message: "De volgende regels uit het Binnenvaartpolitiereglement kunnen toepassen: 1.04 Voorzorgsmaatregelen 1.05 Afwijking reglement 6.04 lid 6,8 Tegengestelde koersen: kleine zeilschepen onderling en zeil – spier – motor 6.17 lid 6 Kruisende koersen: kleine zeilschepen onderling")
    }
    
    @IBAction func veiligheid(_ sender: Any) {
        PushMessage(title: "Veiligheid", message: "Kunnen vertellen wat te doen als de boot omslaat en dit in praktijk een keer hebben gezien.")
    }
    
    @IBAction func back(_ sender: Any) {
        //back slaat ook op
        
         let CurrentSailorNumber:String  = safe.string(forKey: "CurrentSailorNumber")!
        let trainingsgroep = safe.string(forKey: "trainingsgroep")!
        
        safe.set(bootzeilklaar.selectedSegmentIndex, forKey: ((trainingsgroep + CurrentSailorNumber + "bootzeilklaar")))
        safe.set(boottewaterlaten.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "boottewaterlaten"))
        safe.set(schiemanswerk.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "schiemanswerk"))
        safe.set(zeiltermenenonderdelen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "zeiltermenenonderdelen"))
        safe.set(regelementen.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "regelementen"))
        safe.set(veiligheid.selectedSegmentIndex, forKey: (trainingsgroep + CurrentSailorNumber + "veiligheid"))
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
