//
//  StartViewController.swift
//  RetainCycleApp
//
//  Created by Andre on 04/01/24.
//  Copyright © 2024 andrecocuroci.com.br. All rights reserved.
//

import UIKit

final class StartViewController: UIViewController {
    private lazy var containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 8
        return stackView
    }()

    private lazy var buttonNoLeakUIKit: UIButton = {
        let button = UIButton(primaryAction: .init(title: "UIKit No Leak") { [weak self] action in
            self?.present(UIKitFactory.make(), animated: true)
        })
        return button
    }()

    private lazy var buttonLeakUIKit: UIButton = {
        let button = UIButton(primaryAction: .init(title: "UIKit Leak") { [weak self ]action in
            self?.present(UIKitFactory.make(showLeak: true), animated: true)
        })
        return button
    }()

    private lazy var buttonSwiftUI: UIButton = {
        let button = UIButton(primaryAction: .init(title: "SwiftUI") { [weak self] action in
            self?.present(SwiftUIFactory.makeViewController(), animated: true)
        })
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(containerStackView)

        containerStackView.addArrangedSubview(buttonNoLeakUIKit)
        containerStackView.addArrangedSubview(buttonLeakUIKit)
        containerStackView.addArrangedSubview(buttonSwiftUI)

        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
