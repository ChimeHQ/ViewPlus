//
//  NSLayoutConstraint+Priority.swift
//  ViewPlus
//
//  Created by Matt Massicotte on 2020-09-24.
//

import Cocoa

public extension NSLayoutConstraint {
    func withPriority(_ newPriority: NSLayoutConstraint.Priority) -> NSLayoutConstraint {
        priority = newPriority

        return self
    }
}

public extension NSLayoutConstraint.Priority {
    func offset(by offsetValue: Float) -> NSLayoutConstraint.Priority {
        let value = rawValue + offsetValue

        precondition(value >= 0.0)
        precondition(value <= NSLayoutConstraint.Priority.required.rawValue)

        return NSLayoutConstraint.Priority(value)
    }
}
