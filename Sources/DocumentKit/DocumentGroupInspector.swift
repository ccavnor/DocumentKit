//
//  DocumentGroupInspector.swift
//  DocumentKit
//
//  Created by Daniel Saidi on 2023-05-26.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This protocol can be implemented by any type that should be
 able to inspect the current `DocumentGroup`.

 The protocol is automatically implemented by `DocumentGroup`.
 */
public protocol DocumentGroupInspector {}

extension DocumentGroup: DocumentGroupInspector {}

public extension DocumentGroupInspector {

    /**
     Get the current key window's root view controller.
     */
    var documentGroup: UIDocumentBrowserViewController? {
        rootViewController as? UIDocumentBrowserViewController
    }

    /**
     Get the current key window's root view controller.
     */
    var rootViewController: UIViewController? {
        keyWindow?.rootViewController
    }
}

private extension DocumentGroupInspector {

    var keyWindow: UIWindow? {
        UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .filter { $0.isKeyWindow }
            .first
    }
}
