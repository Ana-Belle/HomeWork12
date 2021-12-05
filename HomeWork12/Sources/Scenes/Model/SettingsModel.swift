//
//  Sections.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 20.10.2021.
//

import UIKit

final class SettingsModel {

    func createModels() -> [Section] {
        return [
            Section(title: " ", options: [
                SettingOption(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, titleStatus: nil, isSwitch: true),
                SettingOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, titleStatus: "Не подключено", isSwitch: false),
                SettingOption(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue, titleStatus: "Вкл.", isSwitch: false),
                SettingOption(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, titleStatus: nil, isSwitch: false),
                SettingOption(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, titleStatus: nil, isSwitch: false),
                SettingOption(title: "VPN", icon: UIImage(named: "vpn"), iconBackgroundColor: .systemBlue, titleStatus: nil, isSwitch: true)
            ]),
            Section(title: "", options: [
                SettingOption(title: "Уведомления", icon: UIImage(systemName: "app.badge"), iconBackgroundColor: .systemRed, titleStatus: nil, isSwitch: false),
                SettingOption(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemPink, titleStatus: nil, isSwitch: false),
                SettingOption(title: "Не беспокоить", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo, titleStatus: "", isSwitch: false),
                SettingOption(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo, titleStatus: nil, isSwitch: false)
            ]),
            Section(title: "", options: [
                SettingOption(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, titleStatus: "", isSwitch: false),
                SettingOption(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, titleStatus: "", isSwitch: false),
                SettingOption(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, titleStatus: "", isSwitch: false),
                SettingOption(title: "Экран \u{00AB}Домой\u{00BB}", icon: UIImage(systemName: "house.fill"), iconBackgroundColor: .systemIndigo, titleStatus: "", isSwitch: false),
                SettingOption(title: "Универсальный доступ", icon: UIImage(systemName: "figure.stand"), iconBackgroundColor: .systemBlue, titleStatus: "", isSwitch: false)
            ])
        ]
    }
}
