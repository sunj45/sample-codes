//
//  ViewController.swift
//  Example3tableViewusingXIB
//
//  Created by CEPL on 07/06/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! SubTableViewCell
        cell.label1.text = names[indexPath.row]
        cell.label2.text = names[indexPath.row]
        return cell
    }
    
    var names = [String]()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate=self
        tableView.dataSource=self
        
        self.tableView.register(UINib(nibName: "SubTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
        names = ["HII","hlo","HII","hlo","HII","hlo","HII","hlo","HII","hlo","HII","hlo","HII","hlo","HII","hlo"]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

}

