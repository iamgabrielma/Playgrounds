/**
* Abstracts objects that can be turned on and off
*/
protocol Switchable {
    /*
    * Turns the object on
    */
    func turnOn()

    /*
    * Turns the object off
    */
    func off()
}


final class Robot {
    func turnOn(appliance: Switchable) {
        print("(*in a robotic voice*) Bleep blop bleep - I. shall. turn. on.");
        appliance.turnOn();
    }

    func turnOff(appliance: Switchable) {
        print("(*in a robotic voice*) Bleep blop bleep - turning. off.")
        appliance.off()
    }

    func reboot() {
        print("(*in a robotic voice*) Rebooting - I will be offline for 10 minutes.")
    }
}

class LocationGateway {
    func log(position: String) {
        print("Location logged encrypted: " + position)
        hackedLog(position: position)
    }
}

final class Rogers {
    private let gateway = LocationGateway()
    func getLocationGateway() -> LocationGateway {
        return gateway
    }
}

final class EvilPlan {
    static func execute() {
        let robot = Robot()
        let evilLogging = Rogers()
        let locationLog = evilLogging.getLocationGateway()

        // turn something on / off
        locationLog.log(position: "Ottawa. Switched a bunch of stuff off")
    }
}

EvilPlan.execute()

extension LocationGateway {
    func hackedLog(position: String){
        print("Location logged completely un-encrypted, and leaked to the forces of good: " + position)
    }
}
