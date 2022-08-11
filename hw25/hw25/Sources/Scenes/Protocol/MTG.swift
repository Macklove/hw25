//
//  MTG.swift
//  hw25
//
//  Created by  Евгений on 11.08.2022.
//

import Foundation

protocol MtgDisplayable {
    var nameLabelText: String { get }
    var manaCostLabelText: String { get }
    var typeLabelText: String { get }
    var rarityLabelText: String { get }
    var setNameLabelText: String { get }
    var artistLabelText: String { get }
    var powerLabelText: String { get }
    var descriptionLabelText: String { get }
    var legalitieslabelText: String { get }
}
