//
//  HomeViewController.swift
//  Mobile Resume
//
//  Created by Wayne Bell on 2024/05/02.
//


import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var resumeText: UILabel!
    
    // Create the dummy Resume struct for display -SP
    var myResume: Resume = Resume(
        fName: "Steve",
        lName: "Jobs",
        address: "One Infinite Loop, Cupertino, CA 95014",
        phone: "555-555-5555",
        email: "sjobs@example.com",
        jobs: ["McDonalds" : "Dishwasher", "Wendy's" : "Assistant Manager"],
        education: ["East-West High School", "College of Palo Alto"],
        skills: ["Python":SkillType.progLanguage, "Project Management":SkillType.management])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Display text in the label and some debugging -SP
        updateView()
        print(myResume)
        print(myResume.chopSkills(skills: myResume.skills))
    }

    // Called to update the contents of the Home View Controller view.
    // resume is instantiated above following the structs in
    // Resume.swift The stringify() method simply return
    // formatted text that we set the UILabel.text values to (outlets above) -SP
    
    func updateView() {

        resumeText.text = myResume.stringify()
    }
}

