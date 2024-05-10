//
//  CoverLetterViewController.swift
//  Mobile Resume
//
//  Created by Riyan Mohammed on 5/10/24.
//

import UIKit

class CoverLetterViewController: UIViewController {
    
    
    
    @IBOutlet weak var coverLetter: UILabel!
    
    
    var coverLetterText: CoverLetter =
    CoverLetter(content: "What attracts me most to Apple is its relentless commitment to pushing the boundaries of technology and creating products that inspire and enrich people's lives. I am inspired by Apple's mission to innovate and deliver exceptional user experiences, and I am eager to contribute my skills and expertise to help further this mission.")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("in CoverLetterViewController vDL()")
        updateView()
    }
    func updateView() {
        coverLetter.text = coverLetterText.format()
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
