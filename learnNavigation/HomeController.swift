//
//  HomeController.swift
//  learnNavigation
//
//  Created by Rodolphe DUPUY on 12/10/2020.
//  Copyright © 2020 Rodolphe DUPUY. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue" {
            if let destination = segue.destination as? DetailController {
                if let data = sender as? String {
                    destination.dataText = data
                } else {
                    destination.dataText = "Ma première donnée passée"
                }
            }
        }
    }
    
    @IBAction func passData(_ sender: UIButton) {
        performSegue(withIdentifier: "Segue", sender: nil)
    }
    
}
