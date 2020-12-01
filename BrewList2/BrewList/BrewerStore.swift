//
//  BrewerStore.swift
//  BrewList
//
//  Created by user180592 on 11/27/20.
//

import Foundation
import UIKit

class BrewerStore {
    var allBrewers = [Brewer]()

    @discardableResult func createItem() -> Brewer {
        let newBrewer = Brewer(random: true)
        allBrewers.append(newBrewer)
        return newBrewer
    }
    
    init()
    {
        for _ in 0..<5
        {
            createItem()
        }
    }
}
