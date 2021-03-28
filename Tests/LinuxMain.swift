import XCTest
import Quick

import QuickSPMDemoTests

var tests = [XCTestCaseEntry]()
tests += QuickSPMDemoTests.allTests()
XCTMain(tests)

QCKMain([
    SampleLibrarySpec.self,
])
