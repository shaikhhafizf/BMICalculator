//
//  BMICalculatorApp.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 15/12/22.
//

import SwiftUI

@main
struct BMICalculatorApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
