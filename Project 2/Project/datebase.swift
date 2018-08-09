//
//  datebase.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 6..
//  Copyright © 2017년 유호근. All rights reserved.
//

import Foundation

class datebase: NSObject, NSCoding, NSCopying{
    private static let dateKey = "dateKey"
    private static let workKey = "workkey"
    var dates: [String]?
    var works: [String]?
    
    override init(){
        
    }
    
    required init?(coder aDecoder: NSCoder){
        dates = aDecoder.decodeObject(forKey: datebase.dateKey) as? [String]
        works = aDecoder.decodeObject(forKey: datebase.workKey) as? [String]
    }
    
    func encode(with aCoder: NSCoder) {
        if let saveDates = dates{
            aCoder.encode(saveDates, forKey: datebase.dateKey)
        }
        if let saveWorks = works{
            aCoder.encode(saveWorks, forKey: datebase.workKey)
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any{
        let copy = datebase()
        if let datesToCopy = dates{
            var newDates = Array<String>()
            for date in datesToCopy{
                newDates.append(date)
            }
            copy.dates = newDates
        }
        if let worksToCopy = works{
            var newWorks = Array<String>()
            for work in worksToCopy{
                newWorks.append(work)
            }
            copy.works = newWorks
        }
        return copy
    }
}
