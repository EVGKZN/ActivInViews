//
//  UIView+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 02.04.2021.
//

import UIKit

extension UIView {

    public func addActivityIndicator(activityIndicator: UIActivityIndicatorView) {
        self.addSubview(activityIndicator)

        activityIndicator.center = CGPoint(x: self.bounds.width/2, y: self.bounds.height/2)
    }

    public func removeActivityIndicator() {
        if let activityIndicator = self.subviews.first(where: {$0 is UIActivityIndicatorView}) as? UIActivityIndicatorView {
            activityIndicator.removeFromSuperview()
        }
    }

    public func showActivityIndicator() {
        if let activityIndicator = self.subviews.first(where: {$0 is UIActivityIndicatorView}) as? UIActivityIndicatorView {
            activityIndicator.startAnimating()
        } else {
            self.addActivityIndicator(activityIndicator: UIActivityIndicatorView())
            showActivityIndicator()
        }
    }

    public func hideActivityIndicator() {
        if let activityIndicator = self.subviews.first(where: {$0 is UIActivityIndicatorView}) as? UIActivityIndicatorView {
            activityIndicator.stopAnimating()
        }
    }
}
