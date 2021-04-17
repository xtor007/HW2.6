//
//  PersonList1VC.swift
//  HW2.6
//
//  Created by Anatoliy Khramchenko on 16.04.2021.
//

import UIKit

class PersonList1VC: UIViewController {

    @IBOutlet weak var table: UITableView!
    let idCell = "1"
    let data = Datas()
    var nowName = ""
    var nowEmail = ""
    var nowPhone = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC:InfVC = segue.destination as! InfVC
        newVC.nameL = nowName
        newVC.emailL = nowEmail
        newVC.phoneL = nowPhone
    }
    
}

extension PersonList1VC:UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = table.dequeueReusableCell(withIdentifier: idCell)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        }
        cell!.textLabel?.text = "\(data.datas[indexPath.row].name) \(data.datas[indexPath.row].surname)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nowName = "\(data.datas[indexPath.row].name) \(data.datas[indexPath.row].surname)"
        nowEmail = "Email: \(data.datas[indexPath.row].email)"
        nowPhone = "Phone number: \(data.datas[indexPath.row].phone)"
        self.performSegue(withIdentifier: "toInfo", sender: UIStoryboardSegue.self)
    }
    
}
