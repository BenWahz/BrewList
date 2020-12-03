//
//  ViewController.swift
//  BrewList2
//
//  Created by user180592 on 11/12/20.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var locationOutlet: UITextField!
    @IBOutlet weak var ratingOutlet: UITextField!
    @IBOutlet weak var descriptionOutlet: UITextField!
    
    var brewer: Brewer!
    var brewerStore: BrewerStore!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameOutlet.text = brewer.name
        locationOutlet.text = brewer.location
        ratingOutlet.text = brewer.starRating
        descriptionOutlet.text = brewer.desc
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // "Save" changes to item
        view.endEditing(true)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        //            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //            //tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        brewer.name = nameOutlet.text ?? ""
        brewer.location = locationOutlet.text ?? ""
        brewer.desc = descriptionOutlet.text ?? ""
        brewer.starRating = ratingOutlet.text ?? ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        brewerStore.saveChanges()
        view.endEditing(true)
    }
    
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}

