//
//  SliderSwitch.swift
//  Slider Switch
//
//  Created by zaid on 5/21/17.
//  Copyright © 2017 Zaid Amer. All rights reserved.
//

import Foundation
import UIKit

class SliderSwitch: UIView {
    
    var backColor: UIColor = .black
    var cornerRadius : CGFloat = 0.0
    var isOn : Bool!
    var switchImage = UIImage()
    var isONImage = UIImage()
    var isOFFmage = UIImage()
    
    private var status = true
    private var backView = UIView()
    private var swipView = UIImageView()
    private var switchButton = UIButton()
    private var onImage = UIImageView()
    private var offImage = UIImageView()
    
    open var valueDidChange: ((_ on: Bool) -> ())?

    override func draw(_ rect: CGRect) {
    
        self.backgroundColor = .red
        self.layer.cornerRadius = cornerRadius

        backView.backgroundColor = backColor
        backView.layer.cornerRadius = 3.0
        backView.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        self.addSubview(backView)
        
        onImage.image = isONImage
        onImage.clipsToBounds = true
        onImage.contentMode = UIViewContentMode.scaleAspectFit
        onImage.translatesAutoresizingMaskIntoConstraints = false
        backView.addSubview(onImage)
        onImage.heightAnchor.constraint(equalToConstant: 15.0).isActive = true
        onImage.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        onImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor, constant: 0.0).isActive = true
        onImage.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 5.0).isActive = true
        
        offImage.image = isOFFmage
        offImage.clipsToBounds = true
        offImage.contentMode = UIViewContentMode.scaleAspectFit
        offImage.translatesAutoresizingMaskIntoConstraints = false
        backView.addSubview(offImage)
        offImage.heightAnchor.constraint(equalToConstant: 15.0).isActive = true
        offImage.widthAnchor.constraint(equalToConstant: 30.0).isActive = true
        offImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor, constant: 0.0).isActive = true
        offImage.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -5.0).isActive = true
    
        wat()
        
        swipView.layer.cornerRadius = cornerRadius
        swipView.contentMode = UIViewContentMode.scaleAspectFit
        swipView.image = switchImage
        backView.addSubview(swipView)
        
        switchButton.backgroundColor = .clear
        switchButton.layer.cornerRadius = cornerRadius
        switchButton.frame = CGRect(x: 0, y: 0, width: backView.bounds.size.width, height: backView.bounds.size.height)
        backView.addSubview(switchButton)
        switchButton.addTarget(self, action: #selector(changeStatus), for: .touchUpInside)
    }
    
    private func wat() {
        if status {
            swipView.frame = CGRect(x: backView.bounds.size.width / 2, y: 0, width: backView.bounds.size.width / 2 - 3.0, height: backView.bounds.size.height)
        } else {
            swipView.frame = CGRect(x: 3.0, y: 0, width: backView.bounds.size.width / 2 - 3.0, height: backView.bounds.size.height)
        }
    }
    
     func changeStatus() {
        if status == false {
            status = true
        } else {
            status = false
        }
        chickStatus()
        self.valueDidChange!(status)
    }
    
    func switchON() {
        status = true
    }
    
    func switchOFF() {
        status = false
    }
    
    func changeSwitchStatus(_ stat: Bool) {
        status = stat
    }
    
    private func chickStatus() {
        UIView.animate(withDuration: 0.2) {
            self.wat()
        }
    }
    
    // تلزيك     
}
