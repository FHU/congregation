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
    
    var title = String()
    var description: String?
    var date = String()
    var startTime = String()
    var finishTime: String?
    
    init(title: String, date: String, startTime: String){
        
        self.title = title;
        self.date = date;
        self.startTime = startTime;
    }
    init(title: String, description: String, date: String, startTime: String, finishTime: String){
        
        self.title = title;
        self.date = date;
        self.startTime = startTime;
        self.description = description
        self.finishTime = finishTime
    }
    

}

struct Topic{
    
    var title = String()
    var speaker = String()
    var service = String()
    
    init(title: String, speaker: String, service: String){
       
        self.title = title
        self.speaker = speaker
        self.service = service
    }
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
    var city = String()
    var zip = String()
    var state = String()
    var denomination: Denomination?
    var people: [Person]?
    var meetingTimes: [meetingTime]?
    var events: [Event]?
    var favorite: Bool?
    var topics: [Topic]?
    
    
    
    
    
    
    init(name: String, description: String, streetAddress: String, city: String, state: String, zip: String, phone: String, website: String, people: [Person], meetingTimes: [meetingTime], events: [Event], topics: [Topic], favorite: Bool, location: CLLocation){
        
        self.name = name;
        self.description = description;
        self.streetAddress = streetAddress;
        self.zip = zip
        self.city = city
        self.state = state
        self.meetingTimes = meetingTimes;
        self.phone = phone;
        self.website = website;
        self.people = people;
        self.favorite = favorite
        self.events = events
        self.topics = topics
        self.location = location
        
    }
    
}