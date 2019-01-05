//
//  NZUCouncilViewController.swift
//  NZUSICON 2019
//
//  Created by The Taste Affair on 21/12/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class NZUCouncilViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    let images = ["nzusiconCouncil","CouncilMembers","northZone"]
    let menu = ["NZUSICON Council","Council Members","USI Council Member(North Zone)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension NZUCouncilViewController : UICollectionViewDataSource, UICollectionViewDelegate   {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CouncilCell", for: indexPath) as! CouncilCell
        cell.label.text = menu[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        imageView.image = UIImage(named: images[indexPath.row])
    }
    
    
    
    
    
}
