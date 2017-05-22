//
//  ViewController.swift
//  Slider Switch
//
//  Created by zaid on 5/21/17.
//  Copyright © 2017 Zaid Amer. All rights reserved.
//

import UIKit

func theSwitch() -> SliderSwitch {
    let swit = SliderSwitch()
    swit.backColor = .black
    swit.cornerRadius = 5.0
    swit.switchImage = UIImage(named: "switch2")!
    swit.isOFFmage = UIImage(named: "OFF")!
    swit.isONImage = UIImage(named: "ON")!
    swit.backgroundColor = .clear
    swit.layer.cornerRadius = 5.0
    swit.translatesAutoresizingMaskIntoConstraints = false
    return swit
}

class ViewController: UIViewController {
    
    let swit = theSwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        swit.switchON()
        
        // --- or do this to switch ON or OFF ---
        
        // swit.changeSwitchStatus(true) // ON
        // swit.changeSwitchStatus(false) // OFF
        
        // adding the Switch to the View
        view.addSubview(swit)
        swit.heightAnchor.constraint(equalToConstant: 40).isActive = true
        swit.widthAnchor.constraint(equalToConstant: 80).isActive = true
        swit.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        swit.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        swit.valueDidChange = { (st: Bool) -> () in
            if st {
                print("Switch ON")
            } else {
                print("Switch OFF")
            }
        }
       
        
    }
}

