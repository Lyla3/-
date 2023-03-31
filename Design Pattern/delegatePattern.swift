import Foundation

protocol Remotecontrol{
    func chanelUp()
}

class RemoteController {
    var delegate : Remotecontrol?
    
    func remoteControllerChanelUp() {
        delegate?.chanelUp()
    }
}

class TV : Remotecontrol {
    func chanelUp() {
        print("TV chanel Up")
    }
}

class Radio : Remotecontrol {
    func chanelUp() {
        print("Radio chanel Up")
    }
}

let remote = RemoteController()
let samTV = TV()
let iriverradio = Radio()

remote.delegate = samTV
remote.remoteControllerChanelUp()

