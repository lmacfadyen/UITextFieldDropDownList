//
//  NoCopyPasteUITextField.swift
//  UITextFieldDropDownList
//
//  Created by Lawrence F MacFadyen on 2016-08-06.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

class NoCopyPasteUITextField: UITextField {

    override func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
        if action == #selector(NSObject.paste(_:)) || action == #selector(NSObject.copy(_:)) || action == #selector(NSObject.select(_:)) || action == #selector(NSObject.selectAll(_:)){
            return false
        }
        
        return super.canPerformAction(action, withSender: sender)
    }
}
