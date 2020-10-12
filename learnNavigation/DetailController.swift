//
//  DetailController.swift
//  learnNavigation
//
//  Created by Rodolphe DUPUY on 12/10/2020.
//  Copyright © 2020 Rodolphe DUPUY. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var closeBtn: UIButton!
    
    var dataText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if dataText != nil {
            detailLabel.text = dataText!
        } else {
            detailLabel.text = "Aucune donnée"
        }
        if navigationController != nil {
            closeBtn.isHidden = true
        } else {
            closeBtn.isHidden = false
        }
    }
    
    @IBAction func closeView(_ sender: Any) {
        if navigationController != nil {
            //Avec Nav
            navigationController?.popViewController(animated: true)
        } else {
            //Pas de Nav
            dismiss(animated: true, completion: nil)
        }
    }
    
}
