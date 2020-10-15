//
//  ShowColorViewController.swift
//  RGB
//
//  Created by Alisa Pushnova on 9/23/20.
//

import Foundation
import UIKit

class ShowColorViewController: UIViewController {
    var changeBackgroundColor: UIColor!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = changeBackgroundColor
        backButton.layer.cornerRadius = 25
    }
    
    @IBAction func backButtonDidClick(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
