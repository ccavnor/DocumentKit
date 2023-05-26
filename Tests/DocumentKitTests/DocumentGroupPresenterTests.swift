//
//  DocumentGroupPresenterTests.swift
//  DocumentKit
//
//  Created by Daniel Saidi on 2023-05-26.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import DocumentKit
import XCTest

final class DocumentGroupPresenterTests: XCTestCase {

    private let presenter = TestPresenter()

    func testRootViewControllerIsPublic() {

        XCTAssertNil(presenter.rootViewController)
    }
}

private class TestPresenter: DocumentGroupPresenter {}
