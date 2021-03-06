import XCTest
import Quick
import Nimble

final class SampleLibrarySpec: QuickSpec {
    override func spec() {
        describe("foo") {
            it("returns a nice greeting") {
                expect("Hello").to(equal("Hello"))
            }

            it("fails") {
                expect(false).to(equal(true))
            }
        }
    }
}
