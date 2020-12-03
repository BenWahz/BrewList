//
//  Brewer.swift
//  BrewList
//
//  Created by user180592 on 11/27/20.
//


import UIKit
//NSObject, NSCoding
class Brewer: Codable {
    var name: String?
    var desc: String?
    var location: String?
    var starRating: String?
    let brewerKey: String
    
    init(name: String?, desc: String?, location: String?, stars: String?)
    {
        self.name = name
        self.desc = desc
        self.location = location
        self.starRating = stars
        self.brewerKey = UUID().uuidString
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
            let randomStarRating = (String(arc4random_uniform(5)) + " stars")
            
            self.init(name: randomName, desc: "convinient description", location: "Somewhere in VT!", stars: randomStarRating)
            
        }else {
            self.init(name: nil, desc: nil, location: nil, stars: nil)
        }
    }
    
//    required init(coder aDecoder: NSCoder) {
//         name = aDecoder.decodeObject(forKey: "name") as! String
//         desc = aDecoder.decodeObject(forKey: "desc") as! String
//         location = aDecoder.decodeObject(forKey: "lcoation") as! Strin
//         starRating = aDecoder.decodeObject(forKey: "starRating") as! String
//         super.init()
//    }

    
//    func encode(with aCoder: NSCoder) {
//         aCoder.encode(name, forKey: "name")
//         aCoder.encode(desc, forKey: "desc")
//         aCoder.encode(location, forKey: "location")
//         aCoder.encode(starRating, forKey: "starRating")
//    }
    
}

extension Brewer: Equatable {
    
    static func ==(lhs: Brewer, rhs: Brewer) -> Bool {
        return lhs.brewerKey == rhs.brewerKey
    }
}
