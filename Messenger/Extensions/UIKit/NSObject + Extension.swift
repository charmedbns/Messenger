//
//  NSObject + Extension.swift
//  Test Messenger
//
//  Created by Алексей Макеров on 11.11.2020.
//

import UIKit

protocol Reusable {
    
    static var reuseIdentifire: String { get }
}

extension NSObject: Reusable {
    static var reuseIdentifire: String {
        return "\(self)"
    }
}
