[![Github CI](https://github.com/ChimeHQ/ViewPlus/workflows/CI/badge.svg)](https://github.com/ChimeHQ/ViewPlus/actions)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)

# ViewPlus

ViewPlus is a small library that provides some helpful extension and capabilities for working with NSView.

## Integration

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/ViewPlus.git")
]
```

### Carthage

```
github "ChimeHQ/ViewPlus"
```

## Extensions

**TrackingArea**

```swift
func removeTrackingArea(with rect: NSRect)
func removeTrackingAreas(_ areas: [NSTrackingArea])
func removeAllTrackingAreas()
```

**Auto Layout**

```swift
var useAutoLayout: Bool
var subviewsUseAutoLayout: Bool
```

**Animation**

```swift
func animateLayout(changes: (NSAnimationContext) -> Void)
```

**NSLayoutConstraint**

```swift
func withPriority(_ p: NSLayoutConstraint.Priority) -> NSLayoutConstraint
```

**NSLayoutConstraint.Priority**

```swift
func offset(by: Float) -> NSLayoutConstraint.Priority
```

## Classes

**UnrestrictedLayerView**

By default, the `layer` property of an `NSView` has a number of restrictions. There are many properties that are owned and controlled by the AppKit, and are impossible to modify in a safe and predictable way. This class provides a single property `unrestrictedLayer`, which has no restrictions whatsoever.

This layer will just match the frame of the hosting view. This is is a great way to integrate a layer into the Auto Layout system. It's also nice for applying transforms.

**XiblessViewController**

This is a very simple NSViewController subclass that eliminates some boilerplate for view controllers that always create their views programatically. This class is based on work on a blog post about [view controllers without XIBs](https://padraig.org/appkit/2020/10/25/layout-in-code.html), and includes a lot of great discussion about the pros and cons of such an approach.

### Suggestions or Feedback

We'd love to hear from you! Get in touch via [twitter](https://twitter.com/chimehq), an issue, or a pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
