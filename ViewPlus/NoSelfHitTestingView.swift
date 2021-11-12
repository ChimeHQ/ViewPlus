import Cocoa

/// A view that will never return self for a hitTest
///
/// Useful for makeFirstResponder passthough to superviews due
/// to mouseDown events.
open class NoSelfHitTestingView: NSView {
    open override func hitTest(_ point: NSPoint) -> NSView? {
        let resultView = super.hitTest(point)

        if resultView === self {
            return nil
        }

        return resultView
    }
}
