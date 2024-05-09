//
//  ShareViewController.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/9/24.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var resumeDisplay: UILabel!
    
    //@IBOutlet weak var resumeDisplay: UILabel!
    
    var myResume: Resume = Resume(
        fName: "Steve",
        lName: "Jobs",
        address: "Infinite Loop, Cupertino, CA 11111",
        phone: "555-555-5555",
        email: "sjobs@example.com",
        jobs: ["McDonalds" : "Dishwasher"],
        education: ["East-West High School"],
        skills: ["Python":SkillType.progLanguage, "Project Management":SkillType.management])
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Scott Testing data
        print("in ShareViewController VDL()")
        print(myResume)
        updateView()
    
    }
    
    func updateView() {
        
        resumeDisplay.text = myResume.stringify()
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
