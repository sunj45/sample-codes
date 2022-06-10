//
//  ViewController.swift
//  Example8LoginscreenAlerts
//
//  Created by CEPL on 08/06/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textfieldEmailID: UITextField!
    @IBOutlet weak var textfieldPassword: UITextField!
    @IBAction func buttonsigninTapped(_ sender: Any) {
        if
            let textEmail = self.textfieldEmailID.text,textEmail .isEmpty{
            let alert = UIAlertController(title: "Alert", message: " Youremail is empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: {
                return
            })
        }else if let textPassword = self.textfieldPassword.text,textPassword .isEmpty{
            let alert = UIAlertController(title: "Alert", message: "Your Password Is Empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true,completion: {
             return
            })
            let email = isValidEmail(teststr: textfieldEmailID.text!)

                    if email == false{

                        showAlert(title: "ERROR", message: "ENTER THE VALID EMAIL")

                        textfieldEmailID.text = ""

                    }
        }
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let viewcontroller = sb.instantiateViewController(withIdentifier: "SignInViewController") as? SignInViewController{
            self.navigationController?.pushViewController(viewcontroller, animated: false)
        }
        
        
        
    }
    
    func isValidEmail(teststr: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: teststr)
    }
    func showAlert(title: String, message: String){

         let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))

             self.present(alert, animated: true, completion: nil)

         }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textfieldEmailID.delegate=self
        textfieldPassword.delegate=self
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textfieldEmailID.resignFirstResponder()
        self.textfieldPassword.resignFirstResponder()
        return true
    }



}

