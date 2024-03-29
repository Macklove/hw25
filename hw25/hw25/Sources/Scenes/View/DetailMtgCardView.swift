//
//  DetailMtgCardView.swift
//  hw25
//
//  Created by  Евгений on 11.08.2022.
//

import UIKit

class DetailMtgCardView: UIScrollView {

    // MARK: - Configuration

    func configure(with card: MtgDisplayable?) {
        nameLabel.text = card?.nameLabelText
        typeLabel.text = card?.typeLabelText
        descriptionLabel.text = card?.descriptionLabelText
        rarityLabel.text = card?.rarityLabelText
        manaCostLabel.text = card?.manaCostLabelText
        setNameLabel.text = card?.setNameLabelText
        powerLabel.text = card?.powerLabelText
        artistLabel.text = card?.artistLabelText
        legalitiesLabel.text = card?.legalitieslabelText
    }

    // MARK: - View

    private lazy var parentView: UIView = {
        let view = UIView()
        return view
    }()

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.nameLabelFontSize, weight: .bold)
        label.numberOfLines = 1
        return label
    }()

    private lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 0
        return label
    }()

    private lazy var rarityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private lazy var setNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private var powerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private lazy var artistLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private lazy var manaCostLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 1
        return label
    }()

    private lazy var legalitiesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.primaryFontSize)
        label.numberOfLines = 0
        return label
    }()

    // MARK: - Initial

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setupHierarchy()
        setupLayout()
        setupView()
    }

    // MARK: - Settings

    private func setupHierarchy() {
        addSubview(parentView)
        parentView.addSubview(nameLabel)
        parentView.addSubview(typeLabel)
        parentView.addSubview(descriptionLabel)
        parentView.addSubview(rarityLabel)
        parentView.addSubview(setNameLabel)
        parentView.addSubview(powerLabel)
        parentView.addSubview(artistLabel)
        parentView.addSubview(manaCostLabel)
        parentView.addSubview(legalitiesLabel)
    }

    private func setupLayout() {
        parentView.snp.makeConstraints { make in
            make.edges.equalTo(self.snp.edges)
            make.width.equalTo(self.snp.width)
            make.height.equalTo(self.snp.height).offset(Metrics.parentViewHeightOffset)
        }

        nameLabel.snp.makeConstraints { make in
            make.centerX.equalTo(parentView.snp.centerX)
            make.top.equalTo(parentView.safeAreaLayoutGuide.snp.top).offset(Metrics.primaryTopOffset)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
            make.right.equalTo(parentView.safeAreaLayoutGuide.snp.right).offset(Metrics.primaryRightOffset)
        }

        typeLabel.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        manaCostLabel.snp.makeConstraints { make in
            make.top.equalTo(typeLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        rarityLabel.snp.makeConstraints { make in
            make.top.equalTo(manaCostLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        powerLabel.snp.makeConstraints { make in
            make.top.equalTo(rarityLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        setNameLabel.snp.makeConstraints { make in
            make.top.equalTo(powerLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        artistLabel.snp.makeConstraints { make in
            make.top.equalTo(setNameLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
        }

        legalitiesLabel.snp.makeConstraints { make in
            make.top.equalTo(artistLabel.snp.bottom).offset(Metrics.primaryTopOffset)
            make.left.equalTo(parentView.safeAreaLayoutGuide.snp.left).offset(Metrics.primaryLeftOffset)
            make.right.equalTo(parentView.safeAreaLayoutGuide.snp.right).offset(Metrics.primaryRightOffset)
        }
    }

    private func setupView() {
        backgroundColor = .systemBackground
    }

}

//MARK: - Metrics

extension DetailMtgCardView {
    enum Metrics {
        static let nameLabelFontSize: CGFloat = 22
        static let primaryFontSize: CGFloat = 14

        static let parentViewHeightOffset = 220

        static let primaryTopOffset = 15
        static let primaryLeftOffset = 15
        static let primaryRightOffset = -20
    }
}
