//
//  SelfConfiguringCell.swift
//  Test Messenger
//
//  Created by Алексей Макеров on 30.11.2020.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
