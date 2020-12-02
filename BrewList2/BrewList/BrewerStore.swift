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

    let brewerArchiveURL: URL = {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("brewers.archive")
    }()

    
    @discardableResult func createItem() -> Brewer {
        let newBrewer = Brewer(random: true)
        allBrewers.append(newBrewer)
        return newBrewer
    }
    
    init()
    {
        if let archivedItems =
            NSKeyedUnarchiver.unarchiveObject(withFile: brewerArchiveURL.path) as? [Brewer] {
            allBrewers = archivedItems
        }
//        for _ in 0..<5
//        {
//            createItem()
//        }
    }
    
    func removeBrewer(_ brewer: Brewer)
    {
        if let index = allBrewers.index(of: brewer)
        {
            allBrewers.remove(at: index)
        }
    }
    
    func saveChanges() -> Bool {
        print("Saving items to: \(brewerArchiveURL.path)")
        return NSKeyedArchiver.archiveRootObject(allBrewers, toFile: brewerArchiveURL.path)
    }
    
    
}


