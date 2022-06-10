//
//  ViewController.swift
//  Example4tableViewAPIusingXIB
//
//  Created by CEPL on 07/06/22.
//

import UIKit
struct lol:Decodable{
    let userId:Int
    let title:String
    let id:Int
    let completed:Bool

}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var Lol = [lol]()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate=self
        tableView.dataSource=self
    
    self.tableView.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil{
                do{
                    self.Lol = try JSONDecoder().decode([lol].self, from: data!)
                }catch{
                    print("error")
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }.resume()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! NewTableViewCell
        cell.label1.text = Lol[indexPath.row].title
        cell.label2.text = Lol[indexPath.row].title
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return  Lol.count
    }


}

