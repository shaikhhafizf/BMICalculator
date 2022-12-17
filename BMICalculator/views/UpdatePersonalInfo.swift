//
//  UpdatePersonalInfo.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct UpdatePersonalInfo: View {
    @State var name = ""
    @State var age = ""
    var body: some View {
        ScrollView{
            HStack{
                TextField("Fullname", text: $name)
                    .foregroundColor(Color("DarkPurple"))
            }.padding(16).overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("DarkPurple"), lineWidth: 1)
                )
            HStack{
                TextField("Age", text: $age)
                    .foregroundColor(Color("DarkPurple"))
            }.padding(16).overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("DarkPurple"), lineWidth: 1)
            ).padding(.top,16)
            
            HStack{

                Button(action:{print("add...")}){
                    Text("Done").font(.system(size: 16,weight: .regular, design: .rounded))
                }.foregroundColor(Color.white)
                    .padding([.leading,.trailing],16)
                    .padding([.top,.bottom],8)
                    .foregroundColor(Color("GreenTea"))
                    .background(Color("BurnwickGreen"))
                    .cornerRadius(8)
            }.padding(.top,16)
        }.padding([.trailing,.leading],20).padding(.top,48).navigationTitle("Update Your Information")
    }
}

struct UpdatePersonalInfo_Previews: PreviewProvider {
    static var previews: some View {
        UpdatePersonalInfo()
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
