//
//  RegisterationVC.swift
//  classRegister
//
//  Created by 1234 on 27/07/2024.
//

import UIKit

class RegisterationVC: UIViewController {

    
    
    // MARK: outlets
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var showBtn: UIButton!
    
    @IBOutlet weak var clearBtn: UIButton!
    
    //MARK: variables
    var gender: String?
    let manageStudentData = RegisterViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        genderPicker.delegate = self
        genderPicker.dataSource = self
        birthdayPicker.maximumDate = Date()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func manageStudents(_ sender: UIButton) {
        switch sender {
        case addBtn:
            handleStudentAdding()
        case clearBtn:
            manageStudentData.ClearStudentsData()
        default:
          goToDataDisplay()
         }
       
    }
    
}
extension RegisterationVC{
    private func handleStudentAdding(){
        var message: String?
        let date: String? = DateFormatter().string(from: birthdayPicker.date)
        guard manageStudentData.isStudentAdded(firstName: nameTF.text, secondName: lastNameTF.text, address: addressTF.text, phone: phoneTF.text, gender: gender, birthday: date, email: emailTF.text, message: &message) else {
            if let message = message {
                alertMessage(title: "Sorry", message: message)
            }
            return
        }
    }
    private func goToDataDisplay(){
        let studentDataDisplay = TableViewController(nibName: "TableViewController", bundle: nil)
        self.present(studentDataDisplay, animated: true)
    }
}
//MARK: Gender Picker
extension RegisterationVC: UIPickerViewDelegate, UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return GenderConstants.gender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return GenderConstants.gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        gender = GenderConstants.gender[row]
    }
    
}
