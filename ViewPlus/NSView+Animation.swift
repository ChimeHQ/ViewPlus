import Cocoa

public extension NSView {
    /// Set up for animation that affects view layout
    ///
    /// This function calls `changes` within an `NSAnimationContext.runAnimationGroup` block.
    /// It enabled implicit animations, and ensures that any pending layout is complete
    /// both before starting and after completing changes. This allows for surprise-free
    /// layout animation.
    @available(OSX 10.12, *)
    func animateLayout(changes: (NSAnimationContext) -> Void) {
        layoutSubtreeIfNeeded()

        NSAnimationContext.runAnimationGroup { (context) in
            context.allowsImplicitAnimation = true

            changes(context)

            self.layoutSubtreeIfNeeded()
        }
    }
}
