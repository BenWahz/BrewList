//
//  Brewer.swift
//  BrewList
//
//  Created by user180592 on 11/27/20.
//

import Foundation
import UIKit

class Brewer: NSObject {
    var name: String
    var desc: String
    var location: String
    var starRating: Int
    
    
    init(name: String, desc: String, location: String, stars: Int)
    {
        self.name = name
        self.desc = desc
        self.location = location
        self.starRating = stars
    }
    
    convenience init(random: Bool = false)
    {
        if random
        {
            let adjectives = ["Foamy", "Green","Crafty"];
            let nouns = ["State", "Mountain", "Country"];
            let endNouns = ["Brewery", "Brewers", "Brewing Company"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            idx = arc4random_uniform(UInt32(endNouns.count))
            let randomEndNoun = endNouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun) \(randomEndNoun)"
            let randomStarRating = Int(arc4random_uniform(5))
            
            self.init(name: randomName, desc: "convinient description", location: "Somewhere in VT!", stars: randomStarRating)
            
        }else {
            self.init(name: "", desc: "", location: "", stars: 0)
        }
    }
}
