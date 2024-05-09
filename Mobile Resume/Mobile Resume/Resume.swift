//
//  Resume.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/8/24.
//

import Foundation


struct Resume {
    var fName: String
    var lName: String
    var address: String
    var phone: String
    var email: String
    var jobs: [String : String]
    var education: [String]
    var skills: [Skill]
    
    init(fName: String, lName: String, address: String, phone: String, email: String, jobs: [String:String], education: [String], skills: [Skill]) {
        self.fName = fName
        self.lName = lName
        self.address = address
        self.phone = phone
        self.email = email
        self.jobs = jobs
        self.education = education
        self.skills = skills
    }
}


//struct Job {
//    var Employer: String
//    var Description: String
//}

//struct School {
//    var schoolname: String
//}

//struct Skills {
//    var skill: [Skill]
//    
//    init(skill: [Skill]) {
//        self.skill = skill
//    }
//}

struct Skill {
    let skillname: String
    var skillType: SkillType
    
    init(skillname: String, skillType: SkillType) {
        self.skillname = skillname
        self.skillType = skillType
    }
}

enum SkillType {
    case progLanguage, technology, communication, management, misc
}
