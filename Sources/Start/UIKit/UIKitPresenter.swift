//
//  UIKitPresenter.swift
//  RetainCycleApp
//
//  Created by Andre on 04/01/24.
//  Copyright © 2024 andrecocuroci.com.br. All rights reserved.
//

import Foundation

protocol UIKitPresenting: AnyObject {
    var viewController: UIKitViewDisplaying? { get set }
    func presentLabel(counter: Int)
}

final class UIKitPresenterNoLeak: UIKitPresenting {
    weak var viewController: UIKitViewDisplaying?

    func presentLabel(counter: Int) {
        viewController?.displayLabelValue(value: "New value \(counter)")
    }
}

final class UIKitPresenterLeak: UIKitPresenting {
    var viewController: UIKitViewDisplaying?

    func presentLabel(counter: Int) {
        viewController?.displayLabelValue(value: "New value with leak \(counter)")
    }
}
