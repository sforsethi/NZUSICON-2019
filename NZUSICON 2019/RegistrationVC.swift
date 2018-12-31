//
//  RegistrationVC.swift
//  NZUSICON 2019
//
//  Created by The Taste Affair on 31/12/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController {

    @IBAction func registerNowButton(_ sender: Any) {
        if let link  = URL(string: "http://www.nzusicon2019.com/registration/")  {
            UIApplication.shared.open(link)
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
