//
//  TableViewController.swift
//  BrewList
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


class TableViewController: UITableViewController {
    
    // MARK: - Table view data source
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tableView.delegate = self;
//        tableView.dataSource = self;
//    }
    //override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
    //    return brewerNames.count
    //}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return brewerNames.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = brewerNames[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
