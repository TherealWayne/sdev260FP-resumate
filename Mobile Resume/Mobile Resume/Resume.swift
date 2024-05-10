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
        let resumeText = "Name: \(self.fName) \(self.lName)\nAddress: \(self.address)\nPhone: \(self.phone)\nEmail: \(self.email)\nWork History:\n \(chopJobs(jobs: jobs))Education:\n\(chopSchools(schools: education))\n"
        return resumeText
    }
    
    func chopJobs(jobs: [String:String]) -> String {
        var workHistory = ""
        for (job, duty) in jobs {
            workHistory += "\tEmployer: \(job)\n\tPosition: \(duty)\n"
        }
        return workHistory
    }
    
    func chopSchools(schools: [String]) -> String {
        var education = ""
        for school in schools {
            education  += "\t\(school)\n"
        }
        return education
    }
}


//---------------MOHAMMED------------------------------------
// Data structure for Resume Cover letter.  Instantiate with:
// var coverText: CoverLetter = CoverLetter(content: String)
// set your label .text = coverText.format()
// see ShareViewController.swift for example.

struct CoverLetter {
    var content: String
    
    func format() -> String {
        return content
    }
}



enum SkillType {
    case progLanguage, technology, communication, management, misc
    
    var description: String {
        switch self {
        case .progLanguage:
            return "Programming Language"
        case .technology:
            return "Technology"
        case .communication:
            return "Communication"
        case .management:
            return "Management"
        case .misc:
            return "Miscelleneous"
        }
    }
}
