//
//  DataController.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//
import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDatabase")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("core data issue \(error.localizedDescription)")
            }
        }
    }
}
