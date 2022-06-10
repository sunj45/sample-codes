//
//  SignInViewController.swift
//  Example8LoginscreenAlerts
//
//  Created by CEPL on 08/06/22.
//

import UIKit

class SignInViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    var headerTitle = ["Top Indian Movies","Top Indian Movies 2","Top Indian Movies 3","Top Indian Movies4","Top Indian Movies5","Top Indian Movies6"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")as! NewTableViewCell
        cell.label.text = headerTitle[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
