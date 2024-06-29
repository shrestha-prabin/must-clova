/**
 * Copyright 2023-present NAVER Corp.
 * Unauthorized use, modification and redistribution of this software are strongly prohibited.
 */

import UIKit

final class HeaderTableViewCell_A: UITableViewCell {

    static let height = CGFloat(23)

    private let titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 19, weight: 600)
        $0.textColor = AssetColor.clovaBlack.uiColor
        $0.adjustsFontSizeToFitWidth = true
        return $0
    }(UILabel())

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureLayout()
        selectionStyle = .none
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderTableViewCell_A {

    func set(title: String) {
        titleLabel.text = title
    }
}

extension HeaderTableViewCell_A {

    private func configureLayout() {
        backgroundColor = .clear
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
