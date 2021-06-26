//
//  TableViewCell.swift
//  City_Demo
//
//  Created by Dharti Savaliya on 6/25/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblWebsite: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblZip: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var lblSchoolName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
