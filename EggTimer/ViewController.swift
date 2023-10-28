//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft":5, "Medium":7, "Hard":12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        startTimer(inputTime: eggTimes[sender.currentTitle!] ?? 0)
        
        
    }
    
    func showTitle(buttonTitle: String) {
        if (eggTimes.keys.contains(buttonTitle)){
            print(eggTimes[buttonTitle] ?? "Error")
        }
        
    }
    
    func startTimer(inputTime: Int) {
        Timer.invalidate()
        var time = inputTime * 60
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if time > 0 {
                    print ("\(time) seconds")
                    time -= 1
                } else {
                    Timer.invalidate()
                }
            }
    }
    


}
