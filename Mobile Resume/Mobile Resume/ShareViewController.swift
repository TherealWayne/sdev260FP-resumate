//
//  ShareViewController.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/9/24.
//
// Handle events in the Share view.  Needs cleaning up, I did much of the testing
// for data handling and display in this file so as not to affect files that the
// other team members depended on.  Results of much of this has been moved to
// HomeViewController.swift though some has been left as an example for RM.

import UIKit
import Foundation

class ShareViewController: UIViewController {


    @IBOutlet weak var emailResume: UIButton!
    @IBOutlet weak var IGResume: UIButton!
    @IBOutlet weak var FBResume: UIButton!
    @IBOutlet weak var LinkedInResume: UIButton!
    

    // Playing with persistent data, need to do using URL and apple classes
    let fileManager = FileManager.default
    let filePath = "myfile.txt"
    
    
    

    
    // Example for CoverLetter <--------Mohammed---------------
    // for now, just use dummy text and get it displayed on the screen (see below)
    // for example in updateView()
    var coverText: CoverLetter = CoverLetter(content: "I would like to work for Apple because I used to work here when I was younger.  In that time I have developed many skills and led a team of Dish Washers at Wendy's. I feel that I am ready to once again take on the role of CEO of Apple Computer.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Scott Testing
        // print("in ShareViewController vDL()")
        // print(myResume)
        // updateView()
        
        // Filesystem stuff, doesnt exist not sure where this checks.  Needs
        // to be done using Apple API instead of general Swift.
        
        if fileManager.fileExists(atPath: filePath) {
            print("file exists")
        } else {
            print("file does not exist")
        }
    
    }
    
    // Stubs for sharing buttons.
    @IBAction func emailButtonPressed(_ sender: Any) {
        print("Email button pressed.")
    }
    
    @IBAction func igButtonPressed(_ sender: Any) {
        print("Instagram button pressed.")
    }
    
    @IBAction func fbButtonPressed(_ sender: Any) {
        print("Facebook button pressed.")
    }
    
    
    @IBAction func linkedInButtonPressed(_ sender: Any) {
        print("LinkedIn button pressed.")
    }
    
    
    
    
    // Called to update the contents of the Share View Controller view.
    // resume and cover letter are instantiated above following the structs in
    // Resume.swift The stringify() and format() methods simply return
    // formatted text that we set the UILabel.text values to (outlets above)
    
//    func updateView() {
//        
//        resumeText.text = myResume.stringify()
//    }

    

}
