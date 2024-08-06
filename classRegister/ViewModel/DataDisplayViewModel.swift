//
//  DataDisplayViewModel.swift
//  classRegister
//
//  Created by 1234 on 28/07/2024.
//

import Foundation
protocol DataDisplayProtocol{
    func getStudentsCount()->Int
    func getStudent(atRow row: Int)->Student
}
class DataDisplayViewModel:DataDisplayProtocol{
    
    let students: [Student]!
    init(){
        students = StudentManager.getSudents()
    }
    func getStudentsCount()->Int{
        return students.count
    }
    func getStudent(atRow row: Int)->Student{
        return students[row]
    }
}
