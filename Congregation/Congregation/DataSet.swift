//
//  DataSet.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 11/5/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import Foundation
import CoreLocation

class Dataset{
    
    
    static var Data: [Church] = {
        
        
        /* Temporary Meeting times */
        let meetingTime1 = meetingTime( meeting: "Bible School", time: "9:30 AM")
        let meetingTime2 = meetingTime( meeting: "Morning Worship", time: "10:30 AM")
        let meetingTime3 = meetingTime( meeting: "Evening Worship", time: "5:00 PM")
        let meetingTime4 = meetingTime( meeting: "2nd Evening Worship", time: "6:30 PM")
        let meetingTime5 = meetingTime( meeting: "Wednesday Bible Class", time: "5:00 PM")
        let person1 = Person(firstName: "John", lastName: "Doe", position: "Elder")
        let person2 = Person(firstName: "James", lastName: "Doe", position: "Elder")
        let person3 = Person(firstName: "Joe", lastName: "Doe", position: "Elder")
        let event1 = Event(title: "Christmas Singing", date: "12-10-15", startTime: "6:00 PM")
        let event2 = Event(title: "Inner City Door Knocking", date: "12-5-15", startTime: "1:00 PM")
        let event3 = Event(title: "Wedding of Rhonda Johnson and Tim Webb", date: "12-25-15", startTime: "4:00 PM")
        let topic1 = Topic(title: "The Cross", speaker: "Lonnie Jones", service: "Morning Worship")
        let topic2 = Topic(title: "Life of Jesus", speaker: "Vance Hutton", service: "Evening Worship")
        let topic3 = Topic(title: "God Among Us", speaker: "Kevin Moore", service: "Morning Worship")
        let topic4 = Topic(title: "Life of Christ", speaker: "Jesse Robertson", service: "Evening Worship")
        let topic5 = Topic(title: "God is Good", speaker: "Kenan Casey", service: "Morning Worship")
        let topic6 = Topic(title: " Star Wars Episode 7", speaker: "George Lucas", service: "Evening Worship")
        
        let location1 = CLLocation(latitude: 34.139847, longitude: -87.402067)
        let location2 = CLLocation(latitude: 35.469550, longitude: -88.689681)
        let location3 = CLLocation(latitude: 35.441809, longitude: -88.638167)
        let location4 = CLLocation(latitude: 35.481017, longitude: -88.714995)
        let location5 = CLLocation(latitude: 35.641173, longitude: -87.014470)
        let location6 = CLLocation(latitude: 36.850993, longitude: -119.765163)
        /* Dummy Churchs */
        let DSCOC = Church(name: "Double Springs Church of Christ", description: "The church at Double Springs", streetAddress: "AL-195 & Coats Rd", city: "Double Springs", state: "AL", zip: "55555",phone: "(555)-272-1928",website: "http://www.doublespringschurchofchrist.org/", people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3], events: [event1], topics: [topic1, topic2], favorite: true, location: location1)
        
        let EstesCOC = Church(name: "Estes Church of Christ", description: "Come Worship the Master With us.", streetAddress: "3505 Highway 45 South", city: "Henderson",state: "TN", zip: "38340", phone: "(555)-272-1928",website: "http://esteschurch.org/",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4, meetingTime5], events: [event2, event3], topics: [topic3, topic4], favorite: false, location: location2)
        
        let HendersonCOC = Church(name: "Henderson Church of Christ", description: "Church at Henderson", streetAddress: "446-498 Hill Ave" , city: "Henderson",state: "TN", zip: "38340", phone: "(555)-272-1928", website: " No website", people: [person1, person2, person3],meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4, meetingTime5], events: [event2], topics: [topic3, topic6], favorite: true, location: location3)
        
        let PinsonCOC = Church(name: "Pinson Church of Christ", description: "Church at Pinson", streetAddress: "Old Henderson Road" , city: "Pinson",state: "TN", zip: "38366", phone: "(555)-272-1928",website: "www.website.com",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3, meetingTime4], events: [], topics: [topic1, topic6], favorite: false, location: location4)
        
        let JacksonHeights = Church(name: "Jackson Heights Church of Christ", description: "Church at Jackson Heights", streetAddress: "1200 Nashville Hwy" , city: "Columbia",state: "TN", zip: "38401",phone: "(555)-272-1928",website: "http://www.thebibleway.org/about",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3], events: [event1, event2, event3], topics: [topic5], favorite: true, location: location5)
        
        let HendersonCOCOLDS = Church(name: "Woodward Park Church of Christ", description: "Church at Fresno", streetAddress: "7886 N. Millbrook" , city: "Fresno",state: "CA", zip: "93720",phone: "(555)-272-1928",website: "http://www.wpcoc.com/",people: [person1, person2, person3], meetingTimes: [meetingTime1, meetingTime2, meetingTime3], events: [event3], topics: [topic5, topic2], favorite: true, location: location6)

        
        let churches:[Church] = [ HendersonCOC, EstesCOC, PinsonCOC, JacksonHeights,HendersonCOCOLDS, DSCOC, ]
        
        return churches
        
        
    }()
    
    
    
    
    
    
}