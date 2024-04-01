//
//  ModelWithData.swift
//  IOS12-HW15
//
//  Created by Kaiten Aiko on 01.04.2024.
//

import UIKit

final class ModelWithData {
    
    static func addModels() -> [[Model]] {
        let arrayOfSettings: [[Model]] = [
            [
                Model(name: "Авиарежим", image: UIImage(systemName: "airplane.circle.fill"), color: .systemOrange),
                Model(name: "Wi-Fi", image: UIImage(systemName: "wifi.circle.fill"), color: .orange),
                Model(name: "BlueTooth", image: UIImage(systemName: "f.cursive.circle"), color: .systemBlue),
                Model(name: "Сотовая связь", image: UIImage(systemName: "antenna.radiowaves.left.and.right.circle.fill"), color: .systemGreen),
                Model(name: "Режим модема", image: UIImage(systemName: "personalhotspot.circle.fill"), color: .systemGreen),
                Model(name: "VPN", image: UIImage(systemName: "network.badge.shield.half.filled"), color: .systemBlue)
            ],
            [
                Model(name: "Уведомления", image: UIImage(systemName: "bell.badge.circle.fill"), color: .systemRed),
                Model(name: "Звуки, тактильные сигналы", image: UIImage(systemName: "speaker.wave.2.circle.fill"), color: .systemRed),
                Model(name: "Не беспокоить", image: UIImage(systemName: "moon.circle.fill"), color: .systemPurple),
                Model(name: "Экранное время", image: UIImage(systemName: "hourglass.circle.fill"), color: .systemPurple)
            ],
            [
                Model(name: "Основные", image: UIImage(systemName: "gear.circle.fill"), color: .systemGray),
                Model(name: "Пункт управления", image: UIImage(systemName: "switch.2"), color: .systemGray),
                Model(name: "Экран и яркость", image: UIImage(systemName: "sun.max.circle.fill"), color: .systemBlue),
                Model(name: "Универсальный доступ", image: UIImage(systemName: "accessibility.fill"), color: .systemBlue)
            ]
        ]
        return arrayOfSettings
    }
}
