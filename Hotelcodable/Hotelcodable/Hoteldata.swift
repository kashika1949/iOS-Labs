//
//  Hoteldata.swift
//  Hotelcodable
//
//  Created by Kashika Baweja on 27/08/25.
//

import Foundation
struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String

    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int

    var wifi: Bool
    var roomType: RoomType
}

struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int

    // Equatable Protocol Implementation for RoomType
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs.id
        
    }
    static var all:[RoomType] {
        return [RoomType (id: 1, name: "Two Queens", shortName: "2K", price: 179),
        RoomType(id: 2, name: "One King", shortName: "K", price: 150),
        RoomType(id: 3, name: "PentHouse Suite", shortName: "PHS", price: 100)]
      
    }
}
