//
//  NoCopyPasteUITextField.swift
//  UITextFieldDropDownList
//
//  Created by Lawrence F MacFadyen on 2016-08-06.
//  Copyright © 2016 LawrenceM. All rights reserved.
//

import UIKit

class NoCopyPasteUITextField: UITextField {

    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) || action == #selector(UIResponderStandardEditActions.copy(_:)) || action == #selector(UIResponderStandardEditActions.select(_:)) || action == #selector(UIResponderStandardEditActions.selectAll(_:)){
            return false
        }
        
        return super.canPerformAction(action, withSender: sender)
    }
}
