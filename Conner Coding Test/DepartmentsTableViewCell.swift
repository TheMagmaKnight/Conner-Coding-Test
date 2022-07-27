//
//  DepartmentsTableViewCell.swift
//  Conner Coding Test
//
//  Created by Conner Donnelly on 7/27/22.
//

import UIKit

class DepartmentsTableViewCell: UITableViewCell {

    @IBOutlet weak var depName: UILabel!
    @IBOutlet weak var subjects: UILabel!
    @IBOutlet weak var numTeachers: UILabel!
    @IBOutlet weak var numPublications: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
