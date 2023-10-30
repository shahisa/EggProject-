//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft":5, "Medium":7, "Hard":12]
    var secondsRemaining = 60;
    
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate();
        progressBar.progress = 1.0;
        
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,  selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    func showTitle(buttonTitle: String) {
        if (eggTimes.keys.contains(buttonTitle)){
            print(eggTimes[buttonTitle] ?? "Error")
        }
        
    }
    
    @objc func updateTimer() {
        
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds");
            secondsRemaining -= 1;
        } else {
            timer.invalidate();
            titleLabel.text = "DONE!"
        }
    }
    


}
