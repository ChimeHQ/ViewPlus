//
//  NSView+TrackingArea.swift
//  ViewPlus
//
//  Created by Matt Massicotte on 2020-09-24.
//

import Cocoa

public extension NSView {
    func removeTrackingArea(with rect: NSRect) {
        guard let area = trackingAreas.first(where: { $0.rect == rect }) else {
            fatalError("Area not tracked")
        }

        removeTrackingArea(area)
    }

    func removeTrackingAreas(_ areas: [NSTrackingArea]) {
        for area in areas {
            removeTrackingArea(area)
        }
    }

    func removeAllTrackingAreas() {
        let existingAreas = trackingAreas

        existingAreas.forEach(removeTrackingArea)
    }
}
