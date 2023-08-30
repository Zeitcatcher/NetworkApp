//
//  Character.swift
//  NetworkApp
//
//  Created by Arseniy Oksenoyt on 8/29/23.
//

struct Character: Decodable {
    let name: String
    let yearOfBirth: Int?
    let house: String
    let wand: Wand
    let alive: Bool
    let image: String
}

struct Wand: Decodable {
    let wood: String?
    let core: String?
    let length: Double?
}
