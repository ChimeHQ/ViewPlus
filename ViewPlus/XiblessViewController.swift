//
//  XiblessViewController.swift
//  ViewPlus
//
//  Created by Matthew Massicotte on 2021-02-18.
//

import Cocoa

public class XiblessViewController<View: NSView>: NSViewController {
    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func loadView() {
        self.view = View(frame: .zero)
    }

    public var contentView: View {
        guard let typedView = view as? View  else {
            fatalError("view property not expected type")
        }

        return typedView
    }
}
