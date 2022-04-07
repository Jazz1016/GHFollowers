//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by James Lea on 4/7/22.
//

import UIKit

//Variedic Parameters
extension UIView {
    
    func addSubviews(_ views: UIView...){
        for view in views { addSubview(view) }
    }
    
}
