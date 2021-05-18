//
//  UIView+Extensions.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 02.04.2021.
//

import UIKit
import SnapKit

extension UIView {

    public func addActivityIndicator(activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView(), isStyledAfter: Bool = false) {
        self.addSubview(activityIndicator)
        if !isStyledAfter {
            activityIndicator.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
        }
    }

    public func addActivityIndicator(style: ActivityIndicatorViewStyle = ActivityIndicatorViewStyle(), location: ActivityIndicatorViewLocation = .center) {
        let activityIndicator = UIActivityIndicatorView()
        addActivityIndicator(activityIndicator: activityIndicator, isStyledAfter: true)
        activityIndicator.configure(with: style)
        setupActivityIndicatorLocation(location: location)
    }

    public func removeActivityIndicator() {
        if let activityIndicator = getActivityIndicator() {
            activityIndicator.removeFromSuperview()
        }
    }

    @objc public func showActivityIndicator() {
        if let activityIndicator = getActivityIndicator() {
            activityIndicator.startAnimating()
        } else {
            self.addActivityIndicator(activityIndicator: UIActivityIndicatorView())
            showActivityIndicator()
        }
    }

    @objc public func hideActivityIndicator() {
        if let activityIndicator = getActivityIndicator() {
            activityIndicator.stopAnimating()
        }
    }

    @objc public func getActivityIndicator() -> UIActivityIndicatorView? {
        return self.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView
    }

    private func setupActivityIndicatorLocation(location: ActivityIndicatorViewLocation) {
        guard let activityIndicator = getActivityIndicator() else { return }
        switch location {
        case .center:
            activityIndicator.snp.makeConstraints { make in
                make.center.equalToSuperview()
            }
        case .left:
            activityIndicator.snp.makeConstraints { make in
                make.leading.equalToSuperview().inset(20)
                make.centerY.equalToSuperview()
            }
        case .right:
            activityIndicator.snp.makeConstraints { make in
                make.trailing.equalToSuperview().inset(20)
                make.centerY.equalToSuperview()
            }
        }
    }
}
