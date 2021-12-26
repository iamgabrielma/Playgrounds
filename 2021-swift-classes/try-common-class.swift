import UIKit

class Device {

    private var deviceType: String
    
    init(deviceType: String){
        self.deviceType = deviceType
    }

    func on() {
        print("\(deviceType) - turning on")
    }

    func off() {
        print("\(deviceType) - turning off")
    }
}

class Robot {
    func turnOn(_ aDevice: Device) {
        print("(*in a robotic voice*) Bleep blop bleep - I. shall. turn. on.")
        aDevice.on()
    }

    func turnOff(_ aDevice: Device) {
        print("(*in a robotic voice*) Bleep blop bleep - turning. off.")
        aDevice.off()
    }
}

final class EvilPlan {
    
    private var listOfDevices: [Device] = [Device.init(deviceType: "LightBulb"), Device.init(deviceType: "Toaster"), Device.init(deviceType: "Vacuum")]
    
    func conquer() {
        let robot = Robot()
        
        for eachDevice in listOfDevices {
            robot.turnOn(eachDevice)
            robot.turnOff(eachDevice)
        }
    }
}

let plan = EvilPlan()
plan.conquer()
