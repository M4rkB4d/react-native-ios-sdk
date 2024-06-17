//
//  ReactNativeSDKClient.swift
//  react-native-ios-sdk
//
//  Created by Mark Paul Ramirez on 6/17/24.
//

import Foundation
import UIKit
@_implementationOnly import React

public class ReactNativeSDKClient {

    // SHOULD BE THE SAME NAME DEFINED IN ./app.json
    private let moduleName: String
    private var resourceName: String? = "main" // default name

    public init(
        moduleName: String,
        resourceName: String? = nil
    )
    {
        self.moduleName = moduleName
        self.resourceName = resourceName
    }

    public func getView() -> UIView {
        RCTRootView(
            bundleURL: getBundle(),
            moduleName: moduleName,
            initialProperties: nil,
            launchOptions: nil
        )
    }

    private func getBundle() -> URL {
        // USE FOR PRODUCTION, NEEDS A .js MINIFIED BUNDLE
        Bundle.main.url(
            forResource: resourceName,
            withExtension: "jsbundle"
        )!
    }
}
