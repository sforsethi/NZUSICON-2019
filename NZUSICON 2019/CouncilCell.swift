//
//  CouncilCell.swift
//  NZUSICON 2019
//
//  Created by The Taste Affair on 21/12/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class CouncilCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override var isSelected: Bool   {
        didSet  {
            if self.isSelected  {
                label.textColor = UIColor.yellow
                self.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
            }
            else{
                label.textColor = UIColor.white
                self.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.0)
            }
        }
    }
}
