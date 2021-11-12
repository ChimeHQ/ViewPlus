import XCTest
@testable import ViewPlus

final class AutolayoutTests: XCTestCase {
    func testUseAutolayout() {
        let view = NSView()

        XCTAssertTrue(view.translatesAutoresizingMaskIntoConstraints)
        XCTAssertFalse(view.useAutoLayout)

        view.useAutoLayout = true

        XCTAssertFalse(view.translatesAutoresizingMaskIntoConstraints)
        XCTAssertTrue(view.useAutoLayout)
    }
}
