//
//  PersonList2VC.swift
//  HW2.6
//
//  Created by Anatoliy Khramchenko on 17.04.2021.
//

import UIKit

class PersonList2VC: UIViewController {

    @IBOutlet weak var table: UITableView!
    var data = Datas()
    let idCell = "2"
    var numberOfSection = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
}

extension PersonList2VC:UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(data.datas[section].name) \(data.datas[section].surname)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.datas.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: idCell);
        if indexPath.row == 0 {
            cell.textLabel?.text = "\(data.datas[numberOfSection].email)"
        } else {
            cell.textLabel?.text = "\(data.datas[numberOfSection].phone)"
            numberOfSection += 1;
        }
        return cell
    }
}
