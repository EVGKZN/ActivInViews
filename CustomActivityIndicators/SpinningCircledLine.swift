//
//  SpinningCircledLine.swift
//  ActivInViews
//
//  Created by Евгений Кузьмин on 18.05.2021.
//

import UIKit

class SpinningCircledLine: UIView {
    let spinningLine = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        let rect = self.bounds
        let circledPath = UIBezierPath(ovalIn: rect)
        spinningLine.path = circledPath.cgPath
        spinningLine.fillColor = UIColor.clear.cgColor
        spinningLine.strokeColor = UIColor.white.cgColor
        spinningLine.lineWidth = 5
        spinningLine.strokeEnd = 0.3
        spinningLine.lineCap = .round
        self.layer.addSublayer(spinningLine)
    }

    func animate() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.transform = CGAffineTransform(rotationAngle: .pi)
        }) { _ in
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
                self.transform = CGAffineTransform(rotationAngle: 0)
            }) { _ in
                self.animate()
            }
        }
    }
}
