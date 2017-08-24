//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Jacob Ahlberg on 2017-08-24.
//  Copyright © 2017 Jacob Ahlberg. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
    
    
}
