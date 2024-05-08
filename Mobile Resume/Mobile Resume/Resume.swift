//
//  Resume.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/8/24.
//

import Foundation


struct Resume {
    var contact: Contact
    var jobs: Jobs
    var education: [Education]
    var skills: [Skills]
}


struct Contact {
    var fName: String
    var lName: String
    var address: String
    var phone: String
    var email: String
}


struct Jobs {
    var job: [Job]
}

struct Job {
    var Employer: String
    var Description: String
}

struct Education {
    var school: [School]
}


struct School {
    var schoolname: String
}

struct Skills {
    var skill: [Skill]
}

struct Skill {
    let skillname: String
    var skillType: SkillType
}

enum SkillType {
    case progLanguage, technology, communication, management, misc
}
