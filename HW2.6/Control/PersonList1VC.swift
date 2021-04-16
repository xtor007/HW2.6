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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    
}

extension PersonList1VC:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.datas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: idCell)
        cell.textLabel?.text = "\(data.datas[indexPath[1]].name) \(data.datas[indexPath[1]].surname)"
        return cell
    }
}
