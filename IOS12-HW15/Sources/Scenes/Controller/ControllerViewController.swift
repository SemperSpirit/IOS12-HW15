//
//  ControllerViewController.swift
//  IOS12-HW15
//
//  Created by Kaiten Aiko on 01.04.2024.
//

import UIKit

final class ControllerViewController: UIViewController {
            
        private var viewOn: MainView? {
            guard isViewLoaded else { return nil }
            return view as? MainView
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            title = "Настройки"
            let basicView = MainView()
            view.addSubview(basicView)
            basicView.frame = view.bounds
            basicView.navigationController = navigationController
        }
    }

extension SettingTableViewCell {
    
    func configure(with model: Model) {
        self.model = model
        settingImageView.image = model.image
        nameLabel.text = model.name
        
        if model.name == "Авиарежим" || model.name == "VPN" {
                setupSwitch()
            } else {
                switchControl.removeFromSuperview()
            }
    }
    
    func setupSwitch() {
        accessoryView = switchControl
        selectionStyle = .none
    }
}

extension DetailViewController {
    
    func fillSettings() {
        guard let model = model else { return }
        settingImageView.image = model.image
        nameLabel.text = model.name
    }
}

extension MainView {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.reuseIdentifier, for: indexPath) as! SettingTableViewCell
        let data = models[indexPath.section][indexPath.row]
        cell.configure(with: data)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedModel = models[indexPath.section][indexPath.row]
        
        guard selectedModel.name != "Авиарежим" && selectedModel.name != "VPN" else { return }
        
        let detail = DetailViewController()
        detail.model = selectedModel
        navigationController?.pushViewController(detail, animated: true)
        
        print("Нажата ячейка \(selectedModel.name)")
    }
}
