//
//  ReactNativeSDKClient.swift
//  ReactNativeSDK
//
//  Created by Mark Paul Ramirez on 6/17/24.
//

import Foundation
import UIKit
@_implementationOnly import React

public class ReactNativeSDKClient {

    public enum ReactNativeProject {
        case gofam // Globe Rewards Plus
        case gnd // Globe Next Door

        // module name should be the same name defined in app.json
        // resource name should be the same name as the embeded jsbundle
        var property: (
            moduleName: String,
            resourceName: String
        ) {
            switch self {
            case .gofam:
                ("GlobeRewardsPlus", "gofam")
            case .gnd:
                ("GlobeNextDoorApp", "gnd")
            }
        }
    }

    private let moduleName: String
    private var resourceName: String

    public init(project: ReactNativeProject) {
        self.moduleName = project.property.moduleName
        self.resourceName = project.property.resourceName
    }

    public func getController(
        initialProperties: [AnyHashable : Any]? = nil,
        launchOptions: [AnyHashable : Any]? = nil
    )
    -> UIViewController
    {
        guard let bundleURL = getBundle()
        else {
            return .init()
        }
        
        let controller = UIViewController()
        controller.view = RCTRootView(
            bundleURL: bundleURL,
            moduleName: moduleName,
            initialProperties: initialProperties,
            launchOptions: launchOptions
        )

        return controller
    }

    private func getBundle() -> URL? {
        // USE FOR PRODUCTION, NEEDS A .js MINIFIED BUNDLE
        Bundle(identifier: "personalproject.ReactNativeSDK")?
            .url(
                forResource: resourceName,
                withExtension: "jsbundle"
            )
    }
}
