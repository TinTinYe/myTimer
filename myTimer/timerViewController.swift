//
//  timerViewController.swift
//  myTimer
//
//  Created by Yvonne on 2019/11/24.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit
import AVFoundation
class timerViewController: UIViewController {
    
    
    @IBOutlet weak var showTime: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
        
        // Do any additional setup after loading the view.
        
    
    
   
    @IBAction func baoshi(_ sender: Any) {
        
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { (_) in
                   let now = Date()
                   let formatter = DateFormatter()
                   formatter.dateFormat = "HH:mm:ss"
                   let time = formatter.string(from: now)
                   print (time)
                   
                   let synthesizer = AVSpeechSynthesizer()
                   let utterance = AVSpeechUtterance(string: "now is \(time),peter is stsy with yvonne")
                   synthesizer.speak(utterance)
            
            self.showTime.text = (time)
               }
        
       
        
        
        
    }




}
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


