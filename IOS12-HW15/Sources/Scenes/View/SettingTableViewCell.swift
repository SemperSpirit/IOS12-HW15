//
//  SettingTableViewCell.swift
//  IOS12-HW15
//
//  Created by Kaiten Aiko on 01.04.2024.
//

import UIKit

final class SettingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets -
    
    static let reuseIdentifier = "SettingTableViewCell"
    
    var model: Model
    
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
    
     lazy var switchControl: UISwitch = {
        let switchControl = UISwitch()
        return switchControl
    }()
    
    // MARK: - Inits -
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        self.model = Model(name: "", image: UIImage(named: "imageName"), color: UIColor(named: "colorName"))
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.prepareForReuse()
        accessoryType = .disclosureIndicator
        accessoryView = nil
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup -
    
    private func setupHierarchy() {
        addSubview(settingImageView)
        addSubview(nameLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            settingImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            settingImageView.widthAnchor.constraint(equalToConstant: 30),
            settingImageView.heightAnchor.constraint(equalToConstant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: settingImageView.trailingAnchor, constant: 8),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
