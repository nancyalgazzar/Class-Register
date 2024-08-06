//
//  StudentManager.swift
//  classRegister
//
//  Created by 1234 on 28/07/2024.
//

import Foundation

struct StudentManager{
    
    
    private static var students: [Student] = []
    
    static func addStudent(student: Student){
        
        students.append(student)
    }
    static func isStudentRemoved(student: Student) -> Bool{
        
        let studentIndex = students.firstIndex(where: {
            student.email == $0.email
        })
        if studentIndex != nil{
            students.remove(at: studentIndex!)
            return true
        }
        return false
    }
    static func clearStudents(){
        students.removeAll()
    }
    static func getSudents() -> [Student]{
        return self.students
    }
}
