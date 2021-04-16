//
//  Datas.swift
//  HW2.6
//
//  Created by Anatoliy Khramchenko on 16.04.2021.
//

import Foundation

class Datas {
    private let names = ["Ivan", "Nick", "Andrew", "Tom", "Alex"]
    private let surnames = ["Ivanov", "Smith", "Haland", "Stark", "Barateon"]
    private let indexOfNumber = ["066", "092", "099", "097", "063"]
    private let domens = ["gmail.com","mail.ru","ukr.net","icloud.com","rambler.ru"]
    private var unused = [String]()
    
    var datas: [Person]
    
    init() {
        datas = []
        
        var newName = ""
        var newSurname = ""
        var newIndex = ""
        var newDomens = ""
        
        for _ in 1...names.count {
            
            while true {
                newName = names.randomElement()!
                if !unused.contains(newName) {
                    break
                }
            }
            unused.append(newName)
            
            while true {
                newSurname = surnames.randomElement()!
                if !unused.contains(newSurname) {
                    break
                }
            }
            unused.append(newSurname)
            
            while true {
                newIndex = indexOfNumber.randomElement()!
                if !unused.contains(newIndex) {
                    break
                }
            }
            unused.append(newIndex)
            
            while true {
                newDomens = domens.randomElement()!
                if !unused.contains(newDomens) {
                    break
                }
            }
            unused.append(newDomens)
            
            datas.append(Person(name: newName, surname: newSurname, index: newIndex, domen: newDomens))
        }
    }
}
