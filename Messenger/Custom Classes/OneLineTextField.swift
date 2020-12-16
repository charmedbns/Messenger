//
//  OneLineTextField.swift
//  IChat
//
//  Created by Алексей Пархоменко on 26.01.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class OneLineTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setTextField()
    }
    
    func setTextField() {
        self.borderStyle = .none
        self.translatesAutoresizingMaskIntoConstraints = false

        var lineView = UIView()
        lineView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        lineView.backgroundColor = Colors.mainTurquoise
        lineView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(lineView)

        NSLayoutConstraint.activate([
            lineView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
