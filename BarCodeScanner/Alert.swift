//
//  Alert.swift
//  BarCodeScanner
//
//  Created by Vaibhav  Tiwary on 23/04/25.
//

import SwiftUI


struct AlertItem:Identifiable{
    let id = UUID()
    
    let title:String
    let message:String
    let dissmissButton:Alert.Button
    
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with Camera.We are unable to capture the input", dissmissButton: .default(Text("OK")))
    
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "The value scanned is not valid.This app scan EAN-8 and EAN -13", dissmissButton: .default(Text("OK")))
}

