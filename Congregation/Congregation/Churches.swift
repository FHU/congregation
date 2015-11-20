//
//  Churches.swift
//  Congregation
//
//  Created by Elijah Loyd Posey on 10/22/15.
//  Copyright © 2015 Freed Hardiman University. All rights reserved.
//

import Foundation
import CoreLocation



class meetingTime{
    
    var meeting = String()
    var time = String()
    
    init(meeting: String, time: String){
        self.meeting = meeting;
        self.time = time;
        
    }
}
class Person{
    
    var firstName = String()
    var lastName = String()
    var position = String()
    
    init(firstName: String, lastName: String, position: String){
        
        self.firstName = firstName;
        self.lastName = lastName;
        self.position = position;
    }
}
struct Event{
    
    let title = String()
    let description: String?
    let date = NSDate()
    let startTime = String()
    let finishTime = String()
    
    
}

public enum Denomination {
    case CoC
    case CoG
    case Baptist
    case Methodist
    case Catholic
    case Lutheran
    case Presbyterian
    case Angelican
    case Protestant
    case Pentocostal
    case Congregational
    case Quaker
    case LDS
    case Unitarian
    case Other
}


class Church{
    var name : String
    var phone: String?
    var website:String?
    var description = String()
    var location:CLLocation?
    var streetAddress = String()
    var denomination: Denomination?
    var people: [Person]?
    var meetingTimes: [meetingTime]?
    var events: [Event]?
    
    
    
    
    
    
    init(name: String, description: String, streetAddress: String, phone: String, website: String, people: [Person], meetingTimes: [meetingTime]){
        
        self.name = name;
        self.description = description;
        self.streetAddress = streetAddress;
        self.meetingTimes = meetingTimes;
        self.phone = phone;
        self.website = website;
        self.people = people;
    }
    
}