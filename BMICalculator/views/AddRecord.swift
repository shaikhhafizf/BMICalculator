//
//  AddRecord.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct AddRecord: View {
    @State var unit = "Metric"
    @State var weight = ""
    @State var height = ""
    @State var date = ""
    var body: some View {
        ScrollView{
            HStack(spacing:0){
                Text("Select Unit").font(.system(size: 16,weight: .regular, design: .rounded)).padding(.trailing,16)
                Button(action: {
                    unit="Metric"
                }){
                    Text("Metric").font(.system(size: 16,weight: .regular, design: .rounded))
                }.padding([.leading,.trailing],16)
                    .padding([.top,.bottom],8)
                    .foregroundColor(Color(unit == "Metric" ? "GreenTea" : "BurnwickGreen"))
                    .background(Color(unit == "Metric" ? "BurnwickGreen" : "White"))
                    .cornerRadius(8)
                Button(action: {
                    unit="Imperial"
                }){
                    Text("Imperial").font(.system(size: 16,weight: .regular, design: .rounded))
                }.padding([.leading,.trailing],16)
                    .padding([.top,.bottom],8)
                    .foregroundColor(Color(unit=="Imperial" ? "GreenTea" : "BurnwickGreen"))
                    .background(Color(unit=="Imperial" ? "BurnwickGreen" : "White"))
                    .cornerRadius(8)
                Spacer()
            }
            HStack{
                TextField("Weight", text: $weight)
                    .foregroundColor(Color("DarkPurple"))
                Text(unit == "Metric" ? "Kg":"Pounds").foregroundColor(Color("DarkPurple"))
            }.padding(16).overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("DarkPurple"), lineWidth: 1)
            )
            if(unit == "Metric"){
                
                HStack{
                    TextField("Height", text: $weight)
                        .foregroundColor(Color("DarkPurple"))
                    Text("cm").foregroundColor(Color("DarkPurple"))
                }.padding(16).overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("DarkPurple"), lineWidth: 1)
                )
            }
            else{
                HStack{
                    HStack{
                        TextField("Height(Ft)", text: $weight)
                            .foregroundColor(Color("DarkPurple"))
                        Text("Ft").foregroundColor(Color("DarkPurple"))
                    }.padding(16).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("DarkPurple"), lineWidth: 1)
                    )
                    HStack{
                        TextField("Height(inchs)", text: $weight)
                            .foregroundColor(Color("DarkPurple"))
                        Text("Inchs").foregroundColor(Color("DarkPurple"))
                    }.padding(16).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("DarkPurple"), lineWidth: 1)
                    )
                }
            }
            HStack{
//
                Button(action:{print("add...")}){
                    Text("Done").font(.system(size: 16,weight: .regular, design: .rounded))
                }.foregroundColor(Color.white)
                    .padding([.leading,.trailing],16)
                    .padding([.top,.bottom],8)
                    .foregroundColor(Color("GreenTea"))
                    .background(Color("BurnwickGreen"))
                    .cornerRadius(8)
            }.padding(.top,16)
        }.padding([.trailing,.leading],20).padding(.top,48).navigationTitle("Update record")
    }
}

struct AddRecord_Previews: PreviewProvider {
    static var previews: some View {
        AddRecord()
    }
}


//                Button(action:{print("add...")}){
//                    Text("Cancel").font(.system(size: 16,weight: .regular, design: .rounded))
//                }.foregroundColor(Color.white)
//                    .padding([.leading,.trailing],16)
//                    .padding([.top,.bottom],8)
//                    .foregroundColor(Color("White"))
//                    .background(Color("DarkPurple"))
//                    .cornerRadius(8)
//                Spacer()
