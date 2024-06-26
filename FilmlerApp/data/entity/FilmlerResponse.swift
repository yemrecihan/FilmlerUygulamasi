//
//  FilmlerResponse.swift
//  FilmlerApp
//
//  Created by Yunus emre cihan on 25.06.2024.
//

import Foundation
class FilmlerResponse: Codable {
    var filmler: [Filmler]?
    var success: Int?
}
