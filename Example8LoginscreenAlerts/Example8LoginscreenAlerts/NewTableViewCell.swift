//
//  NewTableViewCell.swift
//  Example8LoginscreenAlerts
//
//  Created by CEPL on 08/06/22.
//

import UIKit
var img = [UIImage]()

class NewTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "collcell", for: indexPath)as! NewCollectionViewCell
        cell1.imageView.image = img[indexPath.item]
        return cell1
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        collectionView.delegate=self
        collectionView.dataSource=self
        img = [
        UIImage(named: "K")!,
        UIImage(named: "L")!,
        UIImage(named: "X")!,
        UIImage(named: "Y")!,
        UIImage(named: "Z")!,
        UIImage(named: "K")!,
        UIImage(named: "L")!,
        UIImage(named: "X")!,
        UIImage(named: "Y")!,
        UIImage(named: "Z")!,
        UIImage(named: "K")!,
        UIImage(named: "L")!,
        UIImage(named: "X")!,
        UIImage(named: "Y")!,
        UIImage(named: "Z")!,
        UIImage(named: "K")!,
        UIImage(named: "L")!,
        UIImage(named: "X")!,
        UIImage(named: "Y")!,
        UIImage(named: "Z")!
        
        ]
        
        
        
    }

}
