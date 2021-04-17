//
//  InfVC.swift
//  HW2.6
//
//  Created by Anatoliy Khramchenko on 17.04.2021.
//

import UIKit

class InfVC: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    var nameL = ""
    var emailL = ""
    var phoneL = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = nameL
        email.text = emailL
        phone.text = phoneL
    }

}
