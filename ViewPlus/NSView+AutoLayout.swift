//
//  NSView+AutoLayout.swift
//  ViewPlus
//
//  Created by Matt Massicotte on 2020-09-24.
//

import Cocoa

public extension NSView {
    var useAutoLayout: Bool {
        get {
            return translatesAutoresizingMaskIntoConstraints == false
        }
        set {
            translatesAutoresizingMaskIntoConstraints = !newValue
        }
    }

    var subviewsUseAutoLayout: Bool {
        get {
            return subviews.reduce(into: true, { (result, subview) in
                result = result && subview.useAutoLayout
            })
        }
        set {
            subviews.forEach { $0.useAutoLayout = newValue }
        }
    }
}
