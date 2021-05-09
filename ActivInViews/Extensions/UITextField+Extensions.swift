//
//  UITextField+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 09.05.2021.
//

import UIKit

extension UITextField {

    public func addActivityIndicator(style: ActivityIndicatorViewStyle, location: TextFieldActivityIndicatorViewLocation) {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.configure(with: style)
        addActivityIndicator(activityIndicator, isStyledAfter: true)
        setupActivityIndicatorLocation(location: location)
    }

    private func setupActivityIndicatorLocation(location: TextFieldActivityIndicatorViewLocation) {
        guard let activityIndicator = getActivityIndicator() else { return }
        switch location {
        case .leftView:
            activityIndicator.removeFromSuperview()
            leftViewMode = .always
            leftView = activityIndicator
        case .centerWithoutText:
            activityIndicator.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
        case .rightView:
            activityIndicator.removeFromSuperview()
            rightViewMode = .always
            rightView = activityIndicator
        }
    }

    public override func getActivityIndicator() -> UIActivityIndicatorView? {
        if let activityIndicator = self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView {
            return activityIndicator
        } else if let activityIndicator = leftView as? UIActivityIndicatorView {
            return activityIndicator
        } else if let activityIndicator = rightView as? UIActivityIndicatorView {
            return activityIndicator
        } else {
            return nil
        }
    }

    public override func showActivityIndicator() {
        super.showActivityIndicator()
        if let activityIndicator = self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView {
            self.textInputView.isHidden = true
        }
    }

    public override func hideActivityIndicator() {
        super.hideActivityIndicator()
        if let activityIndicator = self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView {
            self.textInputView.isHidden = false
        }
    }
}
