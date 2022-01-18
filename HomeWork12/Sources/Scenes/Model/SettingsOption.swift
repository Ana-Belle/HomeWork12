//
//  SettingsOption.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 20.10.2021.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingOption]
}

struct SettingOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let titleStatus: String?
    var isSwitch: Bool
}
