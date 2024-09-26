//
//  PaddedTextField.swift
//  PaddedTextField-Package
//
//  Created by Dmytro Akulinin on 26.09.2024.
//

import Foundation
import UIKit

open class PaddedTextField: UITextField {
    private var padding: UIEdgeInsets = .init(top: 12, left: 12, bottom: 12, right: 12)

    public init(padding: UIEdgeInsets = .init(top: 12, left: 12, bottom: 12, right: 12)) {
        self.padding = padding
        super.init(frame: .zero)
    }

    required public init?(coder: NSCoder) {
        self.padding = .init(top: 12, left: 12, bottom: 12, right: 12)
        super.init(coder: coder)
    }

    open func setupPaddings(paddings: UIEdgeInsets) {
        self.padding = paddings
    }

    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    open override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
