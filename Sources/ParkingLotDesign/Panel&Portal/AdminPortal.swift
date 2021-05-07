//
//  File.swift
//  
//
//  Created by Sandeep on 08/05/21.
//

import Foundation

protocol ParkingFloorManager : class {
    func addParkingFloor(floor : ParkingFloor) -> Bool
}
protocol ParkingSpotManager : class {
    func addParkingSpot(spot : ParkingSpot, floor : ParkingFloor) -> Bool
}
protocol ParkingRateManager {
    func addParkingRate(rate : ParkingRate) -> Bool
    func modifyParkingRate(ratehour : Int) -> Bool
}
protocol PanelManager {
    func addEntrancePanel(panel : EntrancePanel) -> Bool
    func addExitPanel(panel : ParkingExitPanel) -> Bool
}

class AdminPortal {
    var floorManager : ParkingFloorManager
    var spotManager : ParkingSpotManager
    var rateManager : ParkingRateManager
    var panelManager : PanelManager
    init(floorManager : ParkingFloorManager, spotManger : ParkingSpotManager, rateManager: ParkingRateManager, panelManger : PanelManager){
        self.floorManager = floorManager
        self.spotManager = spotManger
        self.rateManager = rateManager
        self.panelManager = panelManger
    }
    func addParkingFloor(floor : ParkingFloor) -> Bool{
        return self.floorManager.addParkingFloor(floor: floor)
    }
    func addParkingSpot(spot : ParkingSpot, floor : ParkingFloor) -> Bool{
        return self.spotManager.addParkingSpot(spot: spot, floor: floor)
    }
    
    func addParkingRate(rate : ParkingRate) -> Bool {
        return self.rateManager.addParkingRate(rate: rate)
    }
    func modifyParkingRate(ratehour : Int) -> Bool{
        return self.rateManager.modifyParkingRate(ratehour: ratehour)
    }
    
    func addEntrancePanel(panel : EntrancePanel) -> Bool {
        return self.panelManager.addEntrancePanel(panel: panel)
    }
    func addExitPanel(panel : ParkingExitPanel) -> Bool{
        return self.panelManager.addExitPanel(panel: panel)
    }
}
