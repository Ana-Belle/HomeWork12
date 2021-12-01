//
//  SettingsController.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 18.10.2021.
//

import UIKit

class SettingsController: UIViewController {

    var model: SettingsModel?
    
    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        view = SettingsView()
        model = SettingsModel()
        configureView()
    }

    func configureView() {
        guard let models = model?.createModels() else { return }
        settingsView?.configureView(with: models)
    }
}


