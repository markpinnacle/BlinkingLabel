//
//  ViewController.swift
//  test
//
//  Created by Mark Scrimgeour on 06/22/2018.
//  Copyright (c) 2018 Mark Scrimgeour. All rights reserved.
//

import UIKit
import test

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect(x:10, y:20, width:200, height:30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x:10.00, y:60.00, width:125.00, height:30.00))
        toggleButton.setTitle("Toggle Blinking", for: UIControlState.normal)
        toggleButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        toggleButton.addTarget(self, action: "toggleBlinking", for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

