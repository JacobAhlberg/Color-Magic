//
//  ViewController.swift
//  Color Magic
//
//  Created by Jacob Ahlberg on 2017-08-23.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate{

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) { 
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as?
                ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }

}

