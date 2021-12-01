//
//  SettingsView.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 28.11.2021.
//

import Foundation
import UIKit

class SettingsView: UIView {

    //  MARK: - Configuration

    func configureView(with model: [Section]) {
        self.models = model
    }

    // MARK: - Private properties

    private var models = [Section]()

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 57, bottom: 0, right: 0)

        return tableView
    }()

    //  MARK: - Initial

    init() {
        super.init(frame: .zero)
        setupHierarchy()
        setupLayots()
        backgroundColor = UIColor.systemGroupedBackground
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    //  MARK: - Settings

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayots() {
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}

extension SettingsView: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let model = models[indexPath.section].options[indexPath.row]

        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: model)
        return cell
    }
}

extension SettingsView: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Была нажата ячейка \(models[indexPath.section].options[indexPath.row].title)")
    }
}
