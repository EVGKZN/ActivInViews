//
//  ActivityIndicatorViewStyle.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 02.04.2021.
//

import UIKit

public enum ActivityIndicatorViewLocation {
    case center
    case left
    case right
}

public enum ButtonActivityIndicatorViewLocation {
    case withTextLeft
    case withTextRight
}

public enum TextFieldActivityIndicatorViewLocation {
    case leftView
    case rightView
    case centerWithoutText
}

public enum TextViewActivityIndicatorViewLocation {
    case centerWithoutText
}

public enum CustomActivityIndicatorType {
    case spinningCircle
}

public struct ActivityIndicatorViewStyle {
    var color: UIColor
    var size: UIActivityIndicatorView.Style
    var hidesWhenStopped: Bool

    public init(color: UIColor = .gray,
                size: UIActivityIndicatorView.Style = .gray,
                hidesWhenStopped: Bool = true) {
        self.color = color
        self.size = size
        self.hidesWhenStopped = hidesWhenStopped
    }
}
