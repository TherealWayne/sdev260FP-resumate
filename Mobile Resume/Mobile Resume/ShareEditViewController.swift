//
//  ShareEditViewController.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/9/24.
//

import UIKit

class ShareEditViewController: UIViewController {

    
    @IBOutlet weak var editName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// Action to show text captured form the text field.
    @IBAction func editName(_ sender: UITextField) {
        if let name = editName.text {
            print("Sending to: \(name)")
        }
       
    }
    
    

}
