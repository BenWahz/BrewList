//
//  BrewerStore.swift
//  BrewList
//
//  Created by user180592 on 11/27/20.
//


import UIKit

class BrewerStore {
    var allBrewers = [Brewer]()
    
    let brewerArchiveURL: URL = {
        let documentsDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("brewers.plist")
    }()
    

    init() {
        do {
            let data = try Data(contentsOf: brewerArchiveURL)
            if let archivedData = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Brewer] {
                    allBrewers = archivedData
                }
            } catch {
                allBrewers = []
        }
    }

    
    @discardableResult func createItem() -> Brewer {
        let newBrewer = Brewer(random: true)
        allBrewers.append(newBrewer)
        return newBrewer
    }
    
    func removeBrewer(_ brewer: Brewer)
    {
        if let index = allBrewers.firstIndex(of: brewer)
        {
            allBrewers.remove(at: index)
        }
    }
    
    func saveChanges() -> Bool {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: allBrewers, requiringSecureCoding: false)
            try data.write(to: brewerArchiveURL)
                return true
            } catch {
                return false
        }
        
    }
    
    
}


