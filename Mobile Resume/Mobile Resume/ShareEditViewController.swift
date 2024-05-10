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
    

    @IBAction func editName(_ sender: UITextField) {
        if let name = editName.text {
            print(name)
        }
       
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
