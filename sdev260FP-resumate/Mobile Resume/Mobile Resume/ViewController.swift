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
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Scott Testing data
        
        print(mySkill.skillname)
        
    }


}

