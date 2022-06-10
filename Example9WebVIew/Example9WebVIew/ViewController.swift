//
//  ViewController.swift
//  Example9WebVIew
//
//  Created by CEPL on 08/06/22.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var webURLfield: UITextField!
    
    let urlPrefix = "https://www."
    let urlSuffix = ".com"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func webViewpressed(_ sender: Any) {
        let url = urlPrefix + webURLfield.text! + urlSuffix
        let urlRequest = URLRequest(url: URL(string: url)!)
        
        webView.load(urlRequest)
    }
    
    @IBAction func safariPressed(_ sender: Any) {
        let url = urlPrefix + webURLfield.text! + urlSuffix
        let safari = SFSafariViewController(url: URL(string: url)!)
        present(safari, animated: true)
    }
    
}

