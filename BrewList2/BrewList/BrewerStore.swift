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
    
    init()
    {
        if let archivedItems = NSKeyedUnarchiver.unarchiveObject(withFile: brewerArchiveURL.path) as? [Brewer]{
                    allBrewers=archivedItems
                }
//        if let data = try? Data(contentsOf: brewerArchiveURL),
//            let archivedBrewers = try? PropertyListDecoder().decode(Array<Brewer>.self, from: data){
//            allBrewers = archivedBrewers
//                }
//        for _ in 0..<5
//        {
//            createItem()
//        }
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
    
    func saveChanges() {
        print("Saving items to: \(brewerArchiveURL.path)")
        let archivedBrewers = try? PropertyListEncoder().encode(allBrewers)
        do {
            try archivedBrewers?.write(to: brewerArchiveURL, options: .noFileProtection)
            print("Saved all brewers the Brewers.plist")
        } catch {
            print("Could not save any of the Items")
        }
    }
    
    
}


