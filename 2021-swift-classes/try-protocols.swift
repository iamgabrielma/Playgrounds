import UIKit

public var devicesToHack: [String] = ["LightBulb", "Toaster", "Vacuum"]

protocol HackDevice {

    func turnOn()
    func turnOff()
}

class Robot: HackDevice {
    func turnOn() {
        print("(*in a robotic voice*) Bleep blop bleep - I. shall. turn. on.")
    }
    
    func turnOff() {
        print("(*in a robotic voice*) Bleep blop bleep - I. shall. turn. off.")
    }
}

final class EvilPlan {
    func conquer() {
        
        let robot = Robot()
        
        for device in devicesToHack {
            print("Hacking \(device)...")
            robot.turnOn()
            robot.turnOff()
            print("huehuehue, success, back to my cave...")
        }
    }
}

let plan = EvilPlan()
plan.conquer()
