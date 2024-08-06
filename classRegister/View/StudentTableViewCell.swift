//
//  StudentTableViewCell.swift
//  classRegister
//
//  Created by 1234 on 28/07/2024.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var gendLabel: UILabel!
    @IBOutlet weak var addressLable: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func ConfigCell(student: Student){
        namelabel.text = "name: \(student.firstNmae) \(student.secondName)"
        addressLable.text = "addres:\(student.address)"
        phoneLabel.text = "phone: \(student.phone)"
        emailLabel.text = "email: \(student.email)"
        gendLabel.text = "gender: \(student.gender)"
        birthdayLabel.text = "birthday: \(student.birthday)"
    }
}
