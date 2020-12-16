//
//  Checkbox.swift
//  Test Messenger
//
//  Created by Алексей Макеров on 18.11.2020.
//

import UIKit
import AudioToolbox

class Checkbox: UIButton {
    
    var onOff: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addTarget(self, action: #selector(toggleOnOff), for: .touchUpInside)
    }
    
    @objc
    func toggleOnOff(button: UIButton) {
        onOff.toggle()
        if onOff {
            button.setImage(#imageLiteral(resourceName: "checkbox_on"), for: .normal)
        } else {
            button.setImage(#imageLiteral(resourceName: "checkbox_off"), for: .normal)
        }
        button.increaseAnimation {}
        AudioServicesPlaySystemSound(1519)
    }
}
