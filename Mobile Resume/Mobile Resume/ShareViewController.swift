//
//  ShareViewController.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/9/24.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var resumeDisplay: UILabel!
    @IBOutlet weak var coverLetterDisplay: UILabel!

    
    var myResume: Resume = Resume(
        fName: "Steve",
        lName: "Jobs",
        address: "Infinite Loop, Cupertino, CA 11111",
        phone: "555-555-5555",
        email: "sjobs@example.com",
        jobs: ["McDonalds" : "Dishwasher", "Wendy's" : "Assistant Manager"],
        education: ["East-West High School", "College of Palo Alto"],
        skills: ["Python":SkillType.progLanguage, "Project Management":SkillType.management])
    
    // Example for CoverLetter <--------Mohammed---------------
    // for now, just use dummy text and get it displayed on the screen (see below)
    // for example in updateView()
    var coverText: CoverLetter = CoverLetter(content: "I would like to work for Apple because I used to work here when I was younger.  In that time I have developed many skills and led a team of Dish Washers at Wendy's. I feel that I am ready to once again take on the role of CEO of Apple Computer.")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Scott Testing data
        print("in ShareViewController vDL()")
        print(myResume)
        updateView()
    
    }
    
    // Called to update the contents of the Share View Controller view.
    // resume and cover letter are instantiated above following the structs in
    // Resume.swift The stringify() and format() methods simply return
    // formatted text that we set the UILabel.text values to (outlets above)
    
    func updateView() {
        
        resumeDisplay.text = myResume.stringify()
        coverLetterDisplay.text = coverText.format()
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
