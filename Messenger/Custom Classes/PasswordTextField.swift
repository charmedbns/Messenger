//
//  PasswordTextField.swift
//  Test Messenger
//
//  Created by Алексей Макеров on 18.11.2020.
//

import UIKit
import AudioToolbox

class PasswordTextField: UITextField {
    
    struct Constants {
        static let closedEyeImageName: String = "ic_eye_close"
        static let openedEyeImageName: String = "ic_eye__hover"
        static let vibrationSoundId: SystemSoundID = 1519
    }
    
    var rightButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        rightButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -15, bottom: 0, right: 15)
        rightButton.setImage(UIImage(named: Constants.closedEyeImageName) , for: .normal)
        rightButton.addTarget(self, action: #selector(toggleShowHide), for: .touchUpInside)
        rightButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        rightViewMode = .always
        rightView = rightButton
        isSecureTextEntry = true
    }
    
    @objc
    func toggleShowHide(button: UIButton) {
        isSecureTextEntry.toggle()
        if isSecureTextEntry {
            rightButton.setImage(UIImage(named: Constants.closedEyeImageName) , for: .normal)
        } else {
            rightButton.setImage(UIImage(named: Constants.openedEyeImageName) , for: .normal)
        }
        button.increaseAnimation {}
        AudioServicesPlaySystemSound(Constants.vibrationSoundId)
    }
}

