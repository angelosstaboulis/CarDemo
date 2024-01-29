//
//  CarDemoSceneDelegate.swift
//  CarDemo
//
//  Created by Angelos Staboulis on 30/1/24.
//

import Foundation
import CarPlay
class CarDemoSceneDelegate:UIResponder,CPTemplateApplicationSceneDelegate{
    var interfaceController:CPInterfaceController?
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController) {
        self.interfaceController = interfaceController
        let itemParking = CPListItem(text: "Parking", detailText: "Find Parking")
        let itemHotel = CPListItem(text: "Hotel", detailText: "Find Hotel")
        let itemRoad = CPListItem(text: "Road", detailText: "Find Road")
        let calcDistance = CPListItem(text:"Calculate Distance",detailText: "Calculate Distance")
        let section = CPListSection(items: [itemParking,itemHotel,itemParking,calcDistance])
        let listTemplate = CPListTemplate(title: "List", sections: [section])
        self.interfaceController?.setRootTemplate(listTemplate, animated: true, completion: nil)
    }
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didDisconnect interfaceController: CPInterfaceController, from window: CPWindow) {
        self.interfaceController = nil
    }
}
