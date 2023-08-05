//import UIKit
//
//public struct SPMTest {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}

import Foundation
import UIKit

public class SPMTest: UIView {

    //MARK: - components
    private let toastLabel: BasePaddingLabel = {
        let label = BasePaddingLabel()
        label.text = "네트워크 연결이 끊겼거나 통신 오류가 발생했습니다"
        label.font = .systemFont(ofSize: 16)
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        label.layer.cornerRadius = 10
        label.clipsToBounds  =  true
        return label
    }()

    //MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setConstraints()
        actions()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addComponents() {
        addSubview(toastLabel)
        print("Add Subview")
    }

    func setConstraints() {
        NSLayoutConstraint.activate([
            self.toastLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.toastLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }

    func actions() {
        UIView.animate(withDuration: 3.0, delay: 0.1, options: .curveEaseOut, animations: {self.toastLabel.alpha = 0.0}) { _ in
            self.toastLabel.removeFromSuperview()
        }
    }
}
