//
//  TextViewExt.swift
//  Favorite-Moviez
//
//  Created by David Clare on 3/4/16.
//  Copyright © 2016 David Clare. All rights reserved.
//

import UIKit


@IBDesignable
class TextViewExt: UITextView {
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor(){
        didSet{
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    
    
    
}
