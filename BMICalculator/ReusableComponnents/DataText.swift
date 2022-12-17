//
//  DataText.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct DataText: View {
    @State var text: String
    @State var value: Float
    @State var unit:String? = nil
    var body: some View {
        HStack(alignment: .bottom){
            Text(text).font(.system(size: 20,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
            Text("\(NSString(format: "%.1f", value))").font(.system(size: 24,weight: .semibold, design: .rounded)).foregroundColor(Color("DarkPurple"))
            if((unit) != nil){
                Text(unit!).font(.system(size: 20,weight: .semibold, design: .rounded)).foregroundColor(Color("DarkPurple"))
            }
            
        }
    }
}

struct DataText_Previews: PreviewProvider {
    static var previews: some View {
        DataText(text: "your BMI",value:24.1,unit:"kg")
    }
}
