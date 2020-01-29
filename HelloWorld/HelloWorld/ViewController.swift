//
//  ViewController.swift
//  HelloWorld
//
//  Created by Axel COUDRAY on 29/01/2020.
//  Copyright © 2020 Axel COUDRAY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // Initialize the dictionary for the emoji icons
        let dictionnary = ["🚀":"rocket", "🦹‍♀️":"batgirl", "👨‍🚀":"astronaut", "🧟":"zombie"]


        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender

        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {

            // Get the meaning of the emoji from the dictionary
            // Fill in the code below
            let meaning = dictionnary[wordToLookup]


            // Change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)

            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
       }
    }
    
}

