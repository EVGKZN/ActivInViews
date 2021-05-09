//
//  UIButton+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 12.04.2021.
//

import UIKit

extension UIButton {

    public func addActivityIndicator(style: ActivityIndicatorViewStyle, location: ButtonActivityIndicatorViewLocation) {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.configure(with: style)
        addActivityIndicator(activityIndicator, isStyledAfter: true)
        setupActivityIndicatorLocation(location: location)
    }

    private func setupActivityIndicatorLocation(location: ButtonActivityIndicatorViewLocation) {
        guard let activityIndicator = getActivityIndicator() else { return }
        switch location {
        case .withTextLeft:
            activityIndicator.snp.makeConstraints { make in
                make.centerX.equalTo(self).offset((-(self.intrinsicContentSize.width) / 2) - activityIndicator.intrinsicContentSize.width / 2 - 5)
                make.centerY.equalTo(self)
            }
        case .withTextRight:
            activityIndicator.snp.makeConstraints { make in
                make.centerX.equalTo(self).offset(((self.intrinsicContentSize.width) / 2) + activityIndicator.intrinsicContentSize.width / 2 + 5)
                make.centerY.equalTo(self)
            }
        }
    }
}
