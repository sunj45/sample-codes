//
//  ViewController.swift
//  Example6collectionView
//
//  Created by CEPL on 07/06/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var img = [UIImage]()
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! newCollectionViewCell
        cell.imageView.image = img[indexPath.item]
        if indexPath.item % 2 == 0 {
            cell.imageView.layer.cornerRadius = cell.imageView.frame.width/2
        }
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate=self
        collectionView.dataSource=self
        // Do any additional setup after loading the view.
        img = [
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "I")!,
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "I")!,
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "I")!,
            UIImage(named: "A")!,
            UIImage(named: "B")!,
            UIImage(named: "C")!,
            UIImage(named: "D")!,
            UIImage(named: "E")!,
            UIImage(named: "F")!,
            UIImage(named: "I")!,
        ]
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }

}

