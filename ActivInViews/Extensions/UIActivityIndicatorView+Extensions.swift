//
//  UIActivityIndicatorView+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 02.04.2021.
//

import UIKit

extension UIActivityIndicatorView {

    public func configure(with style: ActivityIndicatorViewStyle) {
        self.color = style.color
        self.style = style.size
        self.hidesWhenStopped = style.hidesWhenStopped
    }
}
