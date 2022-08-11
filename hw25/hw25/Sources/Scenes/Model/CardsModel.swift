//
//  CardsModel.swift
//  hw25
//
//  Created by  Евгений on 11.08.2022.
//

import Foundation

struct Cards: Decodable {
    let all: [Card]

    enum CodingKeys: String, CodingKey {
        case all = "cards"
    }
}
