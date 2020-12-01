//
//  TableViewController.swift
//  BrewList2
//
//  Created by user180592 on 11/12/20.
//

import UIKit

let brewerNames = [
    "Foam Brewers",
    "Lawson's Finest Liquids",
    "The Alchemist",
    "Zero Gravity Brewery",
    "Queen City Brewery",
    "Four Quarters Brewing",
    "Burlington Beer Company",
    "Switchback Brewing Company",
    "Vermont Pub & Brewery",
    "Fiddlehead Brewing Company"
]

let brewerDesc = ["Founded in 2016 by an eclectic group of industry professionals with a shared appreciation for brewing, science, art, music, and culture. If you would like to get to know more about the individuals behind the brewery, stop on by for a little Foam.", "Lawson’s Finest Liquids produces beer of the highest quality with outstanding freshness. We emulate the best of widely appreciated styles of beer, featuring world class IPAs and unique maple brews, while quenching the thirst of beer lovers from near and far.", "The Alchemist is a family run brewery specializing in fresh, unfiltered IPA. John and Jen Kimmich originally opened The Alchemist as a 60 seat brew pub in the village of Waterbury in 2003. After eight years of success and growing popularity, they decided to open a small production brewery. Today The Alchemist currently operates two breweries in Vermont and distributes Heady Topper and Focal Banger throughout the state.", "Beautiful & balanced beers from Burlington, Vermont.","LOCATED IN BURLINGTON'S VIBRANT SOUTH END, QUEEN CITY BREWERY'S TASTING ROOM OFFERS CLASSIC BEER STYLES IN A COMFORTABLE PUB SETTING", "Four Quarters Brewing, founded in March 2014, is a 10 barrel brewery located in Winooski VT specializing in sours, stouts, and hoppy beers.", "Burlington Beer Company is an independent craft brewery that opened in May 2014. We strive to find balance between going too far and staying rooted in tradition. We brew a wide range of hazy, hop forward Pales Ale's, IPA's, Double IPA's, and Triple IPA's. As well as a plethora of fruit beers; some tart ones, some hoppy ones, and some easy drinking ones. We also love brewing dark beers. Brown Ale's, Porter's, Oatmeal Stout, Double Stout's, and Imperial Stouts. Each of our beers has a mind melting name and inspired artwork to match each beer. We can more than 75 different types of beer a year.", "The Switchback Brewing Company was founded in 2002 with one goal in mind – to brew unexpected, relatable, great tasting beer." ,  "With so much history, and so much beer, there's really no excuse to not visit the pub right now!", "Fiddlehead Brewing Company is a brewer owned business. Crafting approachable, multidimensional beers, while growing responsibly with a focus on the arts and positively impacting those in our communities – one pint at a time."]

var myIndex = 0

class TableViewController: UITableViewController {

    // MARK: - Table view data source

    var brewerStore: BrewerStore!
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return brewerStore.allBrewers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = brewerStore.allBrewers[indexPath.row].name
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let brewer = brewerStore.allBrewers[indexPath.row]
            
            let title = "Delete \(brewer.name)?"
            let messaget = "Are you sure you want to delete this item?"
            let ac = UIAlertController(title: title, message: messaget, preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            ac.addAction(cancelAction)
            
            let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
                self.brewerStore.removeBrewer(brewer)
                //self.brewerStore.deleteImage(forKey: brewer.itemKey)
                self.tableView.deleteRows(at: [indexPath], with: .automatic)
            })
            ac.addAction(deleteAction)
            
            present(ac, animated: true, completion: nil)
        }
    }
    
    @IBAction func addNewBrewer(_ sender: UIButton) {
        // Make a new index path for the 0th section, last row
        // Create a new item and add it to the store
        let newItem = brewerStore.createItem()
        // Figure out where that item is in the array
        if let index = brewerStore.allBrewers.index(of: newItem) {
        let indexPath = IndexPath(row: index, section: 0)
        // Insert this new row into the table
        tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func toggleEditMode(_ sender: UIButton) {
        if isEditing
        {
            // Change text of button to inform user of state
            sender.setTitle("Edit", for: .normal)
            // Turn off editing mode
            setEditing(false, animated: true)
         } else {
            // Change text of button to inform user of state
            sender.setTitle("Done", for: .normal)
            // Enter editing mode
            setEditing(true, animated: true)
         }
    }
    
    
    
}
