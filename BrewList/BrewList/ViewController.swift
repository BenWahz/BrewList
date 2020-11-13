//
//  ViewController.swift
//  BrewList
//
//  Created by user180592 on 10/27/20.
//
//test Henry
import UIKit

class ViewController: UIViewController {

    //@IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.delegate = self;
        //tableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
//extension ViewController: UITableViewDelegate{
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        //print(brewerNames[indexPath.row] + " selected.")
//    }
//}

//extension ViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return brewerNames.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
//        cell.textLabel?.text = brewerNames[indexPath.row]
//
//        return cell
//    }
//}
