//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by James Lea on 3/23/22.
//

import Foundation

extension Date {
    //https://nsdateformatter.com/
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
