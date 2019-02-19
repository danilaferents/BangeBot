//
//  ViewController.swift
//  bingebot
//
//  Created by Мой Господин on 17/02/2019.
//  Copyright © 2019 Danila Ferents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ShowsLAbel: UILabel!
    @IBOutlet weak var RandomShowLabel: UILabel!
    @IBOutlet weak var BingeBotSpokenLabel: UILabel!
    @IBOutlet weak var AddShowTextField: UITextField!
    @IBOutlet weak var AddShowBtn: UIButton!
    @IBOutlet weak var RandomShowStackView: UIStackView!
    @IBOutlet weak var AddShowStackView: UIStackView!
    @IBOutlet weak var ShowsStackView: UIStackView!
    
    var shows: [String] = []
    override func viewDidLoad() {
        
        super.viewDidLoad()
        ShowsStackView.isHidden = true
        RandomShowStackView.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateShowsLabel(){
        ShowsLAbel.text = shows.joined(separator: ", ")
    }
    @IBAction func RandomBingeShowBtnWasPressed(_ sender: Any) {
        RandomShowLabel.text = shows.randomElement()
        RandomShowLabel.isHidden = false
        BingeBotSpokenLabel.isHidden = false
        
    }
    @IBAction func AddShowBtnWasPressed(_ sender: Any) {
        guard let showName = AddShowTextField.text
            else { return }
        shows.append(showName)
        updateShowsLabel()
        AddShowTextField.text = ""
        ShowsStackView.isHidden = false
        
        if shows.count > 1 {
            RandomShowStackView.isHidden = false
            BingeBotSpokenLabel.isHidden = true
            RandomShowLabel.isHidden = true
        }
    }
    
}

