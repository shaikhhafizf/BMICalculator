//
//  DataRow.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct DataRow: View {
    @State var BMIValue:Float
    @State var Weight:Float
    @State var Height:Float
    @State var Date:Float
    @State var isImperialUnit:Bool? = false
    var body: some View {
        VStack{
            HStack{
                VStack(alignment:.leading){
                    Text("BMI: 25.1").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    Text("Mild Thinness").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                }
                Spacer()
                VStack(alignment:.trailing){
                    Text("Weight: 35 kg").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    Text("Height: 128 cm").font(.system(size: 16,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    
                }
            }.padding(.bottom,16)
            Text("record on 22-04-2022").font(.system(size: 12,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple")).padding(.bottom,12)
            Rectangle().foregroundColor(Color("GreenTea")).frame(height: 1)
        }.padding([.trailing,.leading],20)
    }
}

struct DataRow_Previews: PreviewProvider {
    static var previews: some View {
        DataRow(BMIValue: 24, Weight: 24, Height: 24, Date: 24)
    }
}
