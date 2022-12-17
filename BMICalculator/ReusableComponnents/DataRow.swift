//
//  DataRow.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct DataRow: View {
    @State var BMIValue:Float
    @State var weight:Float
    @State var height:Float
    @State var date:String
    @State var isImperialUnit:Bool? = false
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading){
                    Text("BMI: \(String(BMIValue))").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    Text("Mild Thinness").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                }
                Spacer()
                VStack(alignment:.trailing){
                    Text("Weight: \(String(weight))").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    Text("Height: \(String(height)) cm").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    
                }
            }.padding(.bottom,16)
            Text("record on \(date)").font(.system(size: 12,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple")).padding(.bottom,12)
            Rectangle().foregroundColor(Color("GreenTea")).frame(height: 1)
        }.padding([.trailing,.leading],20)
    }
}

struct DataRow_Previews: PreviewProvider {
    static var previews: some View {
        DataRow(BMIValue: 24, weight: 24, height: 24, date: "22-09-2022")
    }
}
