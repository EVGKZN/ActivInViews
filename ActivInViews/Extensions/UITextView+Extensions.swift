//
//  UITextView+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 18.05.2021.
//

import UIKit

extension UITextView {

    public func addActivityIndicator(style: ActivityIndicatorViewStyle, location: TextViewActivityIndicatorViewLocation) {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.configure(with: style)
        addActivityIndicator(activityIndicator: activityIndicator, isStyledAfter: true)
        setupActivityIndicatorLocation(location: location)
    }

    private func setupActivityIndicatorLocation(location: TextViewActivityIndicatorViewLocation) {
        guard let activityIndicator = getActivityIndicator() else { return }
        switch location {
        case .centerWithoutText:
            activityIndicator.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
        }
    }

    public override func showActivityIndicator() {
        super.showActivityIndicator()
        if let activityIndicator = self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView {
            self.textInputView.isHidden = true
            self.isUserInteractionEnabled = false
        }
    }

    public override func hideActivityIndicator() {
        super.hideActivityIndicator()
        if let activityIndicator = self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView {
            self.textInputView.isHidden = false
            self.isUserInteractionEnabled = true
        }
    }
}
