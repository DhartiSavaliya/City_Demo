//
//  SecondViewController.swift
//  City_Demo
//
//  Created by Dharti Savaliya on 6/25/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lbldescription: UILabel!

    @IBOutlet weak var lbldes1: UILabel!
    @IBOutlet weak var lblact: UILabel!
    @IBOutlet weak var lblActivies1: UILabel!
    
    // object of school model
      var schoolDetail : school?
    
    override func viewDidLoad() {
        
        navigationItem.title = "Detail"
        super.viewDidLoad()
        lblActivies1.text = schoolDetail?.overview_paragraph
        lbldes1.text = schoolDetail?.extracurricular_activities
   
        
    }
    


}
