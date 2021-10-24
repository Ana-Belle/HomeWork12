//
//  Sections.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 20.10.2021.
//

import UIKit

extension ViewController {
    func configure() {
        models.append(Section(title: " ", options: [
            .switchCell(model: SettingsSwitchOption(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, handler: {
                print("Нажата ячейка Авиарежим")
            }, isOn: false)),
            .staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, titleStatus: "Не подключено") {
                print("Нажата ячейка Wi-Fi")
            }),
            .staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(named: "bluetooth"), iconBackgroundColor: .systemBlue, titleStatus: "Вкл.") {
                print("Нажата ячейка Bluetooth")
            }),
            .staticCell(model: SettingsOption(title: "Сотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, titleStatus: "") {
                print("Нажата ячейка Сотовая связь")
            }),
            .staticCell(model: SettingsOption(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, titleStatus: "") {
                print("Нажата ячейка Режим модема")
            }),
            .switchCell(model: SettingsSwitchOption(title: "VPN", icon: UIImage(named: "vpn"), iconBackgroundColor: .systemBlue, handler: {
                print("Нажата ячейка VPN")
            }, isOn: false)),
        ]))

        models.append(Section(title: "", options: [
            .staticCell(model: SettingsOption(title: "Уведомления", icon: UIImage(systemName: "app.badge"), iconBackgroundColor: .systemRed, titleStatus: "") {
                print("Нажата ячейка Уведомления")
            }),
            .staticCell(model: SettingsOption(title: "Звуки, тактильные сигналы", icon: UIImage(systemName: "speaker.wave.3.fill"), iconBackgroundColor: .systemPink, titleStatus: "") {
                print("Нажата ячейка Звуки, тактильные сигналы")
            }),
            .staticCell(model: SettingsOption(title: "Не беспокоить", icon: UIImage(systemName: "moon.fill"), iconBackgroundColor: .systemIndigo, titleStatus: "") {
                print("Нажата ячейка Не беспокоить")
            }),
            .staticCell(model: SettingsOption(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemIndigo, titleStatus: "") {
                print("Нажата ячейка Экранное врем")
            })
        ]))

        models.append(Section(title: "", options: [
            .staticCell(model: SettingsOption(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, titleStatus: "") {
                print("Нажата ячейка Основные")
            }),
            .staticCell(model: SettingsOption(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, titleStatus: "") {
                print("Нажата ячейка Пункт управления")
            }),
            .staticCell(model: SettingsOption(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, titleStatus: "") {
                print("Нажата ячейка Экран и яркость")
            }),
            .staticCell(model: SettingsOption(title: "Экран \u{00AB}Домой\u{00BB}", icon: UIImage(systemName: "house.fill"), iconBackgroundColor: .systemIndigo, titleStatus: "") {
                print("Нажата ячейка Экран \u{00AB}Домой\u{00BB}")
            }),
            .staticCell(model: SettingsOption(title: "Универсальный доступ", icon: UIImage(systemName: "figure.stand"), iconBackgroundColor: .systemBlue, titleStatus: "") {
                print("Нажата ячейка Универсальный доступ")
            })
        ]))
    }

}
