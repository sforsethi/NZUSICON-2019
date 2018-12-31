//
//  VenueVC.swift
//  NZUSICON 2019
//
//  Created by The Taste Affair on 21/12/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class VenueVC: UIViewController {

    @IBAction func hotelButton(_ sender: Any) {
        if let url = URL(string: "https://maps.google.com/maps?ll=28.515563,77.46938&z=15&t=m&hl=en-US&gl=IN&mapclient=embed&daddr=Crowne%20Plaza%20Greater%20Noida%20Surajpur%20Chowk%2C%20Institutional%20Green%201%2C%20Near%20Yamaha%20Company%2C%20Main%20Road%20Lakhnawali%20Greater%20Noida%2C%20Uttar%20Pradesh%20201306@28.5143937,77.46925089999999") {
            UIApplication.shared.open(url, options: [:])
        }

    }
    @IBAction func mapButton(_ sender: Any) {
        if let url = URL(string: "https://maps.google.com/maps?ll=28.515563,77.46938&z=15&t=m&hl=en-US&gl=IN&mapclient=embed&daddr=Crowne%20Plaza%20Greater%20Noida%20Surajpur%20Chowk%2C%20Institutional%20Green%201%2C%20Near%20Yamaha%20Company%2C%20Main%20Road%20Lakhnawali%20Greater%20Noida%2C%20Uttar%20Pradesh%20201306@28.5143937,77.46925089999999") {
            UIApplication.shared.open(url, options: [:])
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
