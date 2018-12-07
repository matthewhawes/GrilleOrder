//
//  GrilleInfoTableViewController.swift
//  GrilleOrderNew
//
//  Created by Matthew Hawes on 11/30/18.
//

import UIKit
import CallKit

class GrilleInfoTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    func providerDidReset(_ provider: CXProvider) {
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    

    // Mark: Actions
    // https://www.youtube.com/watch?v=2g80VA6rzQA
    // stored the numbers for the grilles under the restoration identifiers of the buttons
    // dunster grille number is set to my phone number and the rest are not real phone numbers because they don't have real phone numbers yet
    @IBAction func contactDunster(_ sender: UIButton) {
        guard let numberString = sender.restorationIdentifier, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    @IBAction func contactWinthrop(_ sender: UIButton) {
        guard let numberString = sender.restorationIdentifier, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    @IBAction func contactQuincy(_ sender: UIButton) {
        guard let numberString = sender.restorationIdentifier, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    @IBAction func contactEliot(_ sender: UIButton) {
        guard let numberString = sender.restorationIdentifier, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    @IBAction func contactPforzheimer(_ sender: UIButton) {
        guard let numberString = sender.restorationIdentifier, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    
    
}
