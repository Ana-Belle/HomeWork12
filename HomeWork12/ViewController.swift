//
//  ViewController.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 18.10.2021.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
}

struct SettingsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let handler: (() -> Void)
    var isOn: Bool
}

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let titleStatus: String
    let handler: (() -> Void)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        return table
    }()

    var models = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        title = "Настройки"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 57, bottom: 0, right: 0)
    }

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

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = models[section]
        return section.title
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].options[indexPath.row]

        switch model.self {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier, for: indexPath) as? SwitchTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = models[indexPath.section].options[indexPath.row]
        switch type.self {
        case .staticCell(let model):
            model.handler()
        case .switchCell(let model):
            model.handler()
        }
    }

}


