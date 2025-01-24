import Foundation

class Room {
    var roomNumber: Int
    var type: String
    var price: Double
    var isAvailable: Bool
    
    init(roomNumber: Int, type: String, price: Double, isAvailable: Bool = true) {
        self.roomNumber = roomNumber
        self.type = type
        self.price = price
        self.isAvailable = isAvailable
    }
}

class Reservation {
    var guestName: String
    var room: Room
    var checkInDate: Date
    var checkOutDate: Date
    
    init(guestName: String, room: Room, checkInDate: Date, checkOutDate: Date) {
        self.guestName = guestName
        self.room = room
        self.checkInDate = checkInDate
        self.checkOutDate = checkOutDate
    }
}

class Hotel {
    var rooms: [Room] = []
    var resercations: [Reservation] = []
    
    func addRoom(roomNumber: Int, type: String, price: Double) {
        let room = Room(roomNumber: roomNumber, type: type, price: price)
        rooms.append(room)
        print("Room \(room.roomNumber) has been added.")
    }
    
    func bookRoom(guestName: String, roomNumber: Int, checkInDate: Date, checkOutDate: Date) {
        if let room = rooms.first(where: { $0.roomNumber == roomNumber}) {
            let reservation = Reservation(guestName: guestName, room: room, checkInDate: checkInDate, checkOutDate: checkOutDate)
            resercations.append(reservation)
            room.isAvailable = false
            print("Room \(room.roomNumber) is booked.")
        } else {
            print("Room number not found.")
        }
    }
    
    func isRoomAvailable(roomNumber: Int) -> Bool {
        if let room = rooms.first(where: { $0.roomNumber == roomNumber}) {
            return room.isAvailable
        } else {
            return false
        }
    }
}

func exercise4_3() {
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
    
    // 3:
    let hotel = Hotel()
    hotel.addRoom(roomNumber: 1, type: "Single", price: 100)
    hotel.addRoom(roomNumber: 2, type: "Double", price: 200)
    hotel.addRoom(roomNumber: 3, type: "Single VIP", price: 150)
    
    guard let checkInDate = dateFormatter.date(from: "01-02-2025 10:00"),
          let checkOutDate = dateFormatter.date(from: "02-02-2025 10:00") else {
        return
    }
    
    hotel.bookRoom(guestName: "Hoang Thanh", roomNumber: 1, checkInDate: checkInDate, checkOutDate: checkOutDate)
    
    print("Check available room 1: \(hotel.isRoomAvailable(roomNumber: 1))")
}
