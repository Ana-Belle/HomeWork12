//
//  SettingTableViewCell.swift
//  HomeWork12
//
//  Created by Anastasia Belyakova on 18.10.2021.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    static let identifier = "SettingTableViewCell"

    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()

    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()

    private let labelStatus: UILabel = { //
        let labelStatus = UILabel()
        labelStatus.textColor = .systemGray
        labelStatus.numberOfLines = 1
        return labelStatus
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        contentView.addSubview(iconImageView)
        contentView.addSubview(labelStatus)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 10, y: 6, width: size, height: size)

        let imageSize: CGFloat = size/1.5
        iconImageView.frame = CGRect(x: 0, y: 0, width: imageSize, height: imageSize)
        iconImageView.center = iconContainer.center

        label.frame = CGRect(x: 25 + iconContainer.frame.size.width, y: 0, width: contentView.frame.size.width - 15 - iconContainer.frame.size.width, height: contentView.frame.size.height)

        labelStatus.frame = CGRect(x: 225 + iconContainer.frame.size.width, y: 0, width: contentView.frame.size.width - 225 - iconContainer.frame.size.width - 10, height: contentView.frame.size.height)
        labelStatus.textAlignment = NSTextAlignment.right
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        labelStatus.text = nil
    }

    public func configure(with model: SettingsOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        labelStatus.text = model.titleStatus
    }
}

