//
//  SplashView.swift
//  Reminder
//
//  Created by Gabriel Monte Olivio Martins on 26/12/25.
//

import Foundation
import UIKit

class SplashView: UIView {

    private let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private let titleLogoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo-title")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [logoImageView, titleLogoImageView])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 4 // ajuste fino aqui 👈
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = .systemBlue
        addSubview(stackView)
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

            logoImageView.widthAnchor.constraint(equalToConstant: 96),
            logoImageView.heightAnchor.constraint(equalToConstant: 96),

            titleLogoImageView.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
}
