import UIKit

protocol UIKitViewDisplaying: AnyObject {
    func displayLabelValue(value: String)
}

final class UIKitViewController: UIViewController {
    private let interactor: UIKitInteracting

    private lazy var containerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 8
        return stackView
    }()

    private lazy var button: UIButton = {
        let button = UIButton(primaryAction: .init(title: "Get Label Value") { [weak self] action in
            self?.interactor.getLabelValue()
        })
        return button
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    init(interactor: UIKitInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(containerStackView)

        containerStackView.addArrangedSubview(button)
        containerStackView.addArrangedSubview(label)

        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension UIKitViewController: UIKitViewDisplaying {
    func displayLabelValue(value: String) {
        label.text = value
    }
}
