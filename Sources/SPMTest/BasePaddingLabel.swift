//
//  BasePaddingLabel.swift
//  
//
//  Created by Joy on 2023/08/05.
//

import Foundation
import UIKit

public class BasePaddingLabel: UILabel {

    private var padding = UIEdgeInsets(top: 2.0, left: 10.0, bottom: 2.0, right: 10.0)

    convenience init(padding: UIEdgeInsets) {
        self.init()
        self.padding = padding
    }

    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }

    public override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right
        return contentSize
    }
}
