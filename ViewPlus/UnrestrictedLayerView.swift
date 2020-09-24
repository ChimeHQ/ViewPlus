//
//  UnrestrictedLayerView.swift
//  ViewPlus
//
//  Created by Matt Massicotte on 2020-09-24.
//

import AppKit

public class UnrestrictedLayerView: NSView {
    public var unrestrictedLayer: CALayer? {
        didSet {
            oldValue?.removeFromSuperlayer()

            guard let newLayer = unrestrictedLayer else {
                return
            }

            layer?.addSublayer(newLayer)

            precondition(layer?.sublayers?.count == 1)

            needsLayout = true
        }
    }

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)

        postInitSetup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        postInitSetup()
    }

    private func postInitSetup() {
        wantsLayer = true
    }

    public override func layout() {
        super.layout()

        guard
            let bounds = layer?.bounds,
            let unrestrictedLayer = unrestrictedLayer
        else {
            return
        }

        // prevent animations while adjusting our layer properties
        CATransaction.begin()
        CATransaction.setDisableActions(true)

        // this is a simple calculation that should produce correct positioning even if
        // unrestrictedLayer has a non (0.5, 0.5) anchor point
        let xPos = bounds.width * unrestrictedLayer.anchorPoint.x
        let yPos = bounds.height * unrestrictedLayer.anchorPoint.y

        unrestrictedLayer.position = CGPoint(x: xPos, y: yPos)
        unrestrictedLayer.bounds = CGRect(origin: .zero, size: bounds.size)

        CATransaction.commit()
    }
}
