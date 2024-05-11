//
//  Resume.swift
//  Mobile Resume
//
//  Created by Scott Parrish on 5/8/24.
//
// Data structures for ResuMate:
//      Resume: the main struct for holding resume data and formatting it for
//              output.  Stringify is the only method that should be used, the
//              other methods are helpers for the stringify method.
//      CoverLetter: Stub struct for the Cover letter data.  Use the format
//              method to output the struct to maintain compatability with
//              future versions.
//      SkillType: enumeration for the Resume.skills dictionary to aid in setting
//              classifications for skills.

import Foundation


struct Resume {
    var fName: String           // First Name
    var lName: String           // Last Name
    var address: String
    var phone: String
    var email: String
    var jobs: [String : String] // [Employer:Description]
    var education: [String]     // [School]
    var skills: [String : SkillType]    // [specific_skill:SkillType] See enum below
    
    // Format for display
    func stringify() -> String {
        let resumeText = "Name: \(self.fName) \(self.lName)\nAddress: \(self.address)\nPhone: \(self.phone)\nEmail: \(self.email)\nWork History:\n \(chopJobs(jobs: jobs))Education:\n\(chopSchools(schools: education))Skills:\n\(chopSkills(skills: self.skills))\n"
        return resumeText
    }
    
    // chopJobs formatting helper for stringify()
    func chopJobs(jobs: [String:String]) -> String {
        var workHistory = ""
        for (job, duty) in jobs {
            workHistory += "\tEmployer: \(job)\n\tPosition: \(duty)\n"
        }
        return workHistory
    }
    // chopSchools formatting helper for strinify()
    func chopSchools(schools: [String]) -> String {
        var education = ""
        for school in schools {
            education  += "\t\(school)\n"
        }
        return education
    }
    // chopSkills formatting helper for stringify()
    func chopSkills(skills: [String:SkillType]) -> String {
        var skillText = ""
        for (skill, skillType) in skills {
            // print("\n\(skill) \(skillType.description)")
            skillText += "\tSkill: \(skill) - \(skillType.description)"
        }
        return skillText
    }
}


//---------------MOHAMMED------------------------------------
// Data structure for Resume Cover letter.  Instantiate with:
// var coverText: CoverLetter = CoverLetter(content: String)
// set your label .text = coverText.format()
// see ShareViewController.swift for example.

// CoverLetter - Stub struct for handling the cover letter data.
struct CoverLetter {
    var content: String
    
    func format() -> String {
        return content
    }
}


// Skills and descriptions for Resume.  Meant to be selected via pulldown
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
