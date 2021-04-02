//
//  ActivityIndicatorViewStyle.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 02.04.2021.
//

import UIKit

public struct ActivityIndicatorViewStyle {
    var color: UIColor
    var size: UIActivityIndicatorView.Style
    var hidesWhenStopped: Bool

    public init(color: UIColor,
                size: UIActivityIndicatorView.Style,
                hidesWhenStopped: Bool = true) {
        self.color = color
        self.size = size
        self.hidesWhenStopped = hidesWhenStopped
    }
}
