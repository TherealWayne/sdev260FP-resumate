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
    var skills: [String : SkillType]
    
    func stringify() -> String {
        let resumeText = "Name: \(self.fName) \(self.lName)\nAddress: \(self.address)\nPhone: \(self.phone)\tEmail: \(self.email)"
        return resumeText
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

//struct Skill {
//    let skillname: String
//    var skillType: SkillType
//    
//    init(skillname: String, skillType: SkillType) {
//        self.skillname = skillname
//        self.skillType = skillType
//    }
//}

enum SkillType {
    case progLanguage, technology, communication, management, misc
}
