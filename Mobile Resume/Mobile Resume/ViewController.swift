//
//  ViewController.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 4/23/24.
// testing commit - Wayne 
//

import UIKit

class ViewController: UIViewController {

    var mySkill = Skill(skillname: "Python", skillType: .progLanguage)
    var mySkill2 = Skill(skillname: "Project Management", skillType: .management)
    var mySkills = [mySkill, mySkill2]
    var mySchools = ["East-West High School"]
    var myJobs = ["McDonalds" : "Dishwasher"]
    
    var myResume = Resume(fName: "Steve", lName: "Jobs", address: "Infinite Loop, Cupertino, CA 11111", phone: "555-555-5555", email: "sjobs@example.com", jobs: myJobs, education: mySchools, skills: mySkills)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Scott Testing data
        
        print(mySkill.skillname)
        
    }


}

