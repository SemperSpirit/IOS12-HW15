//
//  DetailViewController.swift
//  IOS12-HW15
//
//  Created by Kaiten Aiko on 01.04.2024.
//

import UIKit

final class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    var model: Model?
    
     lazy var settingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
     lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle
    
     func config() {
        setupHierarchy()
        setupLayout()
        fillSettings()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(settingImageView)
        view.addSubview(nameLabel)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            settingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            settingImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            settingImageView.widthAnchor.constraint(equalToConstant: 100),
            settingImageView.heightAnchor.constraint(equalToConstant: 100),
            
            nameLabel.topAnchor.constraint(equalTo: settingImageView.bottomAnchor, constant: 20),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
