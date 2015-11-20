//
//  DataSet.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 11/5/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import Foundation


class Dataset{
    
    
    static var Data: [Church] = {
        
        
        /* Temporary Meeting times */
        let meetingTime1 = meetingTime( meeting: "Bible School", time: "9:30 AM")
        let meetingTime2 = meetingTime( meeting: "Morning Worship", time: "10:30 AM")
        let meetingTime3 = meetingTime( meeting: "Evening Worship", time: "5:00 PM")
        let meetingTime4 = meetingTime( meeting: "Morning Worship", time: "10:30 AM")
        let meetingTime5 = meetingTime( meeting: "Evening Worship", time: "5:00 PM")
        let person1 = Person(firstName: "John", lastName: "Doe", position: "Elder")
        let person2 = Person(firstName: "James", lastName: "Doe", position: "Elder")
        let person3 = Person(firstName: "Joe", lastName: "Doe", position: "Elder")
        /* Dummy Churchs */
        let DSCOC = Church(name: "Double Springs Church of Christ ★", description: "The church at Double Springs", streetAddress: "Double Springs",phone: "(555)-272-1928",website: "www.website.com", people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3])
        
        let EstesCOC = Church(name: "Estes Church of Christ ★", description: "Estes", streetAddress: "The road Home",phone: "(555)-272-1928",website: "www.website.com",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4, meetingTime5])
        
        let HendersonCOC = Church(name: "Henderson Church of Christ", description: "Church at Henderson", streetAddress: "Henderson, TN",phone: "(555)-272-1928", website: "www.website.com", people: [person1, person2, person3],meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4, meetingTime5])
        
        let PinsonCOC = Church(name: "Pinson Church of Christ ★", description: "Church at Henderson", streetAddress: "Henderson, TN",phone: "(555)-272-1928",website: "www.website.com",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4, meetingTime5])
        
        let HendersonBaptist = Church(name: "Henderson First Baptist Church", description: "Church at Henderson", streetAddress: "Henderson, TN",phone: "(555)-272-1928",website: "www.website.com",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3])
        
        let HendersonCOCOLDS = Church(name: "Henderson Church of Christ of Later Day Saints", description: "Church at Henderson", streetAddress: "Henderson, TN",phone: "(555)-272-1928",website: "www.website.com",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3])

        
        
        let churches:[Church] = [ DSCOC, EstesCOC, HendersonCOC, PinsonCOC, HendersonBaptist, HendersonCOCOLDS]
        
        return churches
        
        
    }()
    
    
    
    
    
    
}