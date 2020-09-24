//
//  NSView+Animation.swift
//  ViewPlus
//
//  Created by Matt Massicotte on 2020-09-24.
//

import Cocoa

public extension NSView {
    func animateLayout(changes: (NSAnimationContext) -> Void) {
        layoutSubtreeIfNeeded()

        NSAnimationContext.runAnimationGroup { (context) in
            context.allowsImplicitAnimation = true

            changes(context)

            self.layoutSubtreeIfNeeded()
        }
    }
}
