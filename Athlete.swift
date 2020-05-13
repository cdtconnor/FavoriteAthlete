//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Connor Thompson on 4/1/20.
//

import Foundation

struct Athlete {
    let name: String
    let age: String
    let league: String
    let team: String
    
    var description: String {
        return "\(name) is \(age) years old when he plays for the \(team) in the \(league)."
    }
    
}
