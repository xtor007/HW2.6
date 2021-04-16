//
//  Person.swift
//  HW2.6
//
//  Created by Anatoliy Khramchenko on 16.04.2021.
//

import Foundation

class Person {
    
    private var name = ""
    private var surname = ""
    private var phone = ""
    private var email = ""
    
    private func downLetter (st: String) -> String {
        return st.lowercased()
    }
    
    init(name: String, surname: String, index: String, domen: String) {
        
        self.name = name
        self.surname = surname
        
        let numb1 = Int.random(in: 100...999)
        let numb2 = Int.random(in: 10...99)
        let numb3 = Int.random(in: 10...99)
        phone = "(\(index))-\(numb1)-\(numb2)-\(numb3)"
        
        email = "\(downLetter(st: name)).\(downLetter(st: surname))@\(domen)"
    }
}
