//
//  DunsterMenuTableViewController.swift
//  GrilleOrderNew
//
//  Created by Matthew Hawes on 12/2/18.
//

import UIKit
import MessageUI

class DunsterMenuTableViewController: UITableViewController, UINavigationControllerDelegate {
    
    // make sure there is a cancel button for the message view
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result) {
            case .sent: do {
                controller.dismiss(animated: true)
            } case .cancelled: do {
                controller.dismiss(animated: true)
            } case .failed: do {
                controller.dismiss(animated: true)
            }
        }
    }

    // Mark: Properties
    // delegating each part of the UI so that it can be referenced in the code
    @IBOutlet weak var food1a: UILabel!
    @IBOutlet weak var stepper1a: UIStepper!
    @IBOutlet weak var counterLabel1a: UILabel!
    
    @IBOutlet weak var food1b: UILabel!
    @IBOutlet weak var stepper1b: UIStepper!
    @IBOutlet weak var counterLabel1b: UILabel!
    
    @IBOutlet weak var food2a: UILabel!
    @IBOutlet weak var stepper2a: UIStepper!
    @IBOutlet weak var counterLabel2a: UILabel!
    
    @IBOutlet weak var food2b: UILabel!
    @IBOutlet weak var stepper2b: UIStepper!
    @IBOutlet weak var counterLabel2b: UILabel!
    
    @IBOutlet weak var food2c: UILabel!
    @IBOutlet weak var stepper2c: UIStepper!
    @IBOutlet weak var counterLabel2c: UILabel!
    
    @IBOutlet weak var food3a: UILabel!
    @IBOutlet weak var stepper3a: UIStepper!
    @IBOutlet weak var counterLabel3a: UILabel!
    
    @IBOutlet weak var food3b: UILabel!
    @IBOutlet weak var stepper3b: UIStepper!
    @IBOutlet weak var counterLabel3b: UILabel!
    
    @IBOutlet weak var food3c: UILabel!
    @IBOutlet weak var stepper3c: UIStepper!
    @IBOutlet weak var counterLabel3c: UILabel!
    
    @IBOutlet weak var food3d: UILabel!
    @IBOutlet weak var stepper3d: UIStepper!
    @IBOutlet weak var counterLabel3d: UILabel!
    
    @IBOutlet weak var food3e: UILabel!
    @IBOutlet weak var stepper3e: UIStepper!
    @IBOutlet weak var counterLabel3e: UILabel!
    
    @IBOutlet weak var food3f: UILabel!
    @IBOutlet weak var stepper3f: UIStepper!
    @IBOutlet weak var counterLabel3f: UILabel!
    
    @IBOutlet weak var food4a: UILabel!
    @IBOutlet weak var stepper4a: UIStepper!
    @IBOutlet weak var counterLabel4a: UILabel!
    
    @IBOutlet weak var food4b: UILabel!
    @IBOutlet weak var stepper4b: UIStepper!
    @IBOutlet weak var counterLabel4b: UILabel!
    
    @IBOutlet weak var food4c: UILabel!
    @IBOutlet weak var stepper4c: UIStepper!
    @IBOutlet weak var counterLabel4c: UILabel!
    
    @IBOutlet weak var food4d: UILabel!
    @IBOutlet weak var stepper4d: UIStepper!
    @IBOutlet weak var counterLabel4d: UILabel!
    
    @IBOutlet weak var food5a: UILabel!
    @IBOutlet weak var stepper5a: UIStepper!
    @IBOutlet weak var counterLabel5a: UILabel!
    
    @IBOutlet weak var food5b: UILabel!
    @IBOutlet weak var stepper5b: UIStepper!
    @IBOutlet weak var counterLabel5b: UILabel!
    
    @IBOutlet weak var food5c: UILabel!
    @IBOutlet weak var stepper5c: UIStepper!
    @IBOutlet weak var counterLabel5c: UILabel!
    
    @IBOutlet weak var food5d: UILabel!
    @IBOutlet weak var stepper5d: UIStepper!
    @IBOutlet weak var counterLabel5d: UILabel!
    
    @IBOutlet weak var food5e: UILabel!
    @IBOutlet weak var stepper5e: UIStepper!
    @IBOutlet weak var counterLabel5e: UILabel!
    
    @IBOutlet weak var food6a: UILabel!
    @IBOutlet weak var stepper6a: UIStepper!
    @IBOutlet weak var counterLabel6a: UILabel!
    
    @IBOutlet weak var food6b: UILabel!
    @IBOutlet weak var stepper6b: UIStepper!
    @IBOutlet weak var counterLabel6b: UILabel!
    
    @IBOutlet weak var food6c: UILabel!
    @IBOutlet weak var stepper6c: UIStepper!
    @IBOutlet weak var counterLabel6c: UILabel!
    
    @IBOutlet weak var food6d: UILabel!
    @IBOutlet weak var stepper6d: UIStepper!
    @IBOutlet weak var counterLabel6d: UILabel!
    
    @IBOutlet weak var food6e: UILabel!
    @IBOutlet weak var stepper6e: UIStepper!
    @IBOutlet weak var counterLabel6e: UILabel!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    // there are 7 sections in this table
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    // https://stackoverflow.com/questions/29472327/can-i-have-a-different-number-of-rows-in-each-section-of-a-master-detail-app
    // list of the number of rows in each section so they will show accordingly
    let numberOfRowsAtSection: [Int] = [2, 3, 6, 4, 5, 5, 1]
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var rows: Int = 0
        
        if section < numberOfRowsAtSection.count {
            rows = numberOfRowsAtSection[section]
        }
        return rows
    }
    
    // Mark: Actions
    // changes the number displayed on screen each time the stepper changes value
    @IBAction func changeCounter1a(_ sender: UIStepper) {
        // change display in app
        let string = "\(Int(stepper1a.value))"
        counterLabel1a.text = string
    }
    @IBAction func changeCounter1b(_ sender: UIStepper) {
        let string = "\(Int(stepper1b.value))"
        counterLabel1b.text = string
    }
    @IBAction func changeCounter2a(_ sender: UIStepper) {
        let string = "\(Int(stepper2a.value))"
        counterLabel2a.text = string

    }
    @IBAction func changeCounter2b(_ sender: UIStepper) {
        let string = "\(Int(stepper2b.value))"
        counterLabel2b.text = string

    }
    @IBAction func changeCounter2c(_ sender: UIStepper) {
        let string = "\(Int(stepper2c.value))"
        counterLabel2c.text = string

    }
    @IBAction func changeCounter3a(_ sender: UIStepper) {
        let string = "\(Int(stepper3a.value))"
        counterLabel3a.text = string
    }
    @IBAction func changeCounter3b(_ sender: UIStepper) {
        let string = "\(Int(stepper3b.value))"
        counterLabel3b.text = string

    }
    @IBAction func changeCounter3c(_ sender: UIStepper) {
        let string = "\(Int(stepper3c.value))"
        counterLabel3c.text = string

    }
    @IBAction func changeCounter3d(_ sender: UIStepper) {
        let string = "\(Int(stepper3d.value))"
        counterLabel3d.text = string

    }
    @IBAction func changeCounter3e(_ sender: UIStepper) {
        let string = "\(Int(stepper3e.value))"
        counterLabel3e.text = string

    }
    @IBAction func changeCounter3f(_ sender: UIStepper) {
        let string = "\(Int(stepper3f.value))"
        counterLabel3f.text = string

    }
    @IBAction func changeCounter4a(_ sender: UIStepper) {
        let string = "\(Int(stepper4a.value))"
        counterLabel4a.text = string

    }
    @IBAction func changeCounter4b(_ sender: UIStepper) {
        let string = "\(Int(stepper4b.value))"
        counterLabel4b.text = string
    }
    @IBAction func changeCounter4c(_ sender: UIStepper) {
        let string = "\(Int(stepper4c.value))"
        counterLabel4c.text = string
    }
    @IBAction func changeCounter4d(_ sender: UIStepper) {
        let string = "\(Int(stepper4d.value))"
        counterLabel4d.text = string
    }
    @IBAction func changeCounter5a(_ sender: UIStepper) {
        let string = "\(Int(stepper5a.value))"
        counterLabel5a.text = string
    }
    @IBAction func changeCounter5b(_ sender: UIStepper) {
        let string = "\(Int(stepper5b.value))"
        counterLabel5b.text = string

    }
    @IBAction func changeCounter5c(_ sender: UIStepper) {
        let string = "\(Int(stepper5c.value))"
        counterLabel5c.text = string
    }
    @IBAction func changeCounter5d(_ sender: UIStepper) {
        let string = "\(Int(stepper5d.value))"
        counterLabel5d.text = string
    }
    @IBAction func changeCounter5e(_ sender: UIStepper) {
        let string = "\(Int(stepper5e.value))"
        counterLabel5e.text = string
    }
    @IBAction func changeCounter6a(_ sender: UIStepper) {
        let string = "\(Int(stepper6a.value))"
        counterLabel6a.text = string
    }
    @IBAction func changeCounter6b(_ sender: UIStepper) {
        let string = "\(Int(stepper6b.value))"
        counterLabel6b.text = string
    }
    @IBAction func changeCounter6c(_ sender: UIStepper) {
        let string = "\(Int(stepper6c.value))"
        counterLabel6c.text = string
    }
    @IBAction func changeCounter6d(_ sender: UIStepper) {
        let string = "\(Int(stepper6d.value))"
        counterLabel6d.text = string
    }
    @IBAction func changeCounter6e(_ sender: UIStepper) {
        let string = "\(Int(stepper6e.value))"
        counterLabel6e.text = string
    }
    
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self as? MFMessageComposeViewControllerDelegate
        
        // Construct the message for the grill
        var grillmsg = ""
        var menunum:[Double] = [stepper1a.value, stepper1b.value, stepper2a.value, stepper2b.value, stepper2c.value, stepper3a.value, stepper3b.value, stepper3c.value, stepper3d.value, stepper3e.value, stepper3f.value, stepper4a.value, stepper4b.value, stepper4c.value, stepper4d.value, stepper5a.value, stepper5b.value, stepper5c.value, stepper5d.value, stepper5e.value, stepper6a.value, stepper6b.value, stepper6c.value, stepper6d.value, stepper6e.value]
        var menuname:[String] = [food1a.text!, food1b.text!, food2a.text!, food2b.text!, food2c.text!, food3a.text!, food3b.text!, food3c.text!, food3d.text!, food3e.text!, food3f.text!, food4a.text!, food4b.text!, food4c.text!, food4d.text!, food5a.text!, food5b.text!, food5c.text!, food5d.text!, food5e.text!, food6a.text!, food6b.text!, food6c.text!, food6d.text!, food6e.text!]
        var ordered = [String]()
        var quantity = [Double]()
        for i in 0...(menunum.count-1) {
            if menunum[i] != 0 {
                ordered.append(menuname[i])
                quantity.append(menunum[i])
            }
        }
        let user: String? = name.text
        grillmsg.append("\(user ?? "Student") ordered: ")
        for i in 0...(ordered.count-1) {
            grillmsg.append("\(quantity[i]) of \(ordered[i])")
            if i < (ordered.count-1) {
                grillmsg.append(", ")
            }
        }

        // sends the created grill message to the selected phone number
        composeVC.recipients = ["6092401073"]
        composeVC.body = "\(grillmsg)"
        
        // Present the view controller modally.
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send message.")
        }
    }

    // https://learnappmaking.com/uialertcontroller-alerts-swift-how-to/
    // prevents the user from submitting the order without putting a name in the name text field first
    @IBAction func submitOrder(_ sender: UIButton) {
        if ((name.text?.isEmpty)!) {
            let alert = UIAlertController(title: "Name Field Blank", message: "You must enter your name to submit your order.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        } else {
        displayMessageInterface()
        }
    }
}
