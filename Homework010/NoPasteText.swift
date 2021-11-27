//
//  NoPasteText.swift
//  Homework010
//
//  Created by Chun-Yi Lin on 2021/11/27.
//

import UIKit

class NoPasteTextField: UITextField {
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool{
        if action == #selector(UIResponderStandardEditActions.paste(_:)) { return false }
            return super.canPerformAction(action, withSender: sender)
    }
}

