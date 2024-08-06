//
//  RegisterViewModel.swift
//  classRegister
//
//  Created by 1234 on 28/07/2024.
//

import Foundation
struct RegisterViewModel{
    //MARK: Valiables
    let studentValidtion = ValidateUserData()
    let genderList = ["Male", "Female"]
    var gender: String?
    
    func isStudentAdded(firstName: String?,secondName: String?,address: String?, phone: String?, gender: String?, birthday: String?, email: String? , message: inout String?)->Bool{
        if isDataValid(firstName: firstName, secondName: secondName, address: address, phone: phone, gender: gender, birthday: birthday, email: email, message: &message){
            
            let student = Student(firstNmae: firstName!, secondName: secondName!, email: email!, phone: phone!, address: address!, gender: gender!, birthday: birthday!)
            StudentManager.addStudent(student: student)
            return true
        }
       
        return false
    }
   
    func isStudentDeleted(student: Student, message: inout String?) -> Bool{
        if !StudentManager.isStudentRemoved(student: student) {
            message = "this Student is not in the data base"
            return false
        }
        return true
    }
    func ClearStudentsData(){
        StudentManager.clearStudents()
    }
}
//MARK: private functions

extension RegisterViewModel{
    private func isDataValid(firstName: String?,secondName: String?,address: String?, phone: String?, gender: String?, birthday: String?, email: String? , message: inout String?)->Bool{
        guard studentValidtion.validateName(enteredname: firstName, message: &message), studentValidtion.validateName(enteredname: secondName, message: &message),studentValidtion.validatePhoneNumber(enteredPhoneNumber: phone, message: &message), studentValidtion.validateEmail(enteredEmail: email, message: &message), let _ = address , let  _ = gender , let _ = birthday else {
            return false
        }
        
        return true
    }
}
