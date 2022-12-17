//
//  MyProfileView.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View {
        NavigationView{
            VStack(alignment:.trailing){
                
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Hello,").font(.title).foregroundColor(Color("DarkPurple"))
                        Text("Hafiz Shaikh").font(.title).foregroundColor(Color("DarkPurple"))
                        Text("Your Age is 23 yrs").font(.headline).foregroundColor(Color("DarkPurple"))
                    }
                    Spacer()
                    NavigationLink(destination: UpdatePersonalInfo(), label: {
                        Image(systemName: "square.and.pencil").imageScale(.large).frame(width: 48,height: 48)
                    })
                    
                }.frame(maxWidth: .infinity)
                    .padding([.bottom],48)
                
                HStack(alignment:.top){
                    VStack(alignment:.leading){
                        DataText(text: "Your BMI", value: 24.6)
                        DataText(text: "Your Weight", value: 24.6,unit:"kg")
                        DataText(text: "Your Height", value: 24.6,unit:"cm")
                    }
                    Spacer()
                    VStack(alignment:.trailing){
                        Text("Last recorded on").font(.system(size: 12,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                        Text("23-09-2022").font(.system(size: 12,weight: .regular, design: .rounded)).foregroundColor(Color("DarkPurple"))
                    }
                }.padding([.bottom],48)
                
                NavigationLink(destination: AddRecord(), label: {
                    Text("Add new record").font(.system(size: 16,weight: .regular, design: .rounded))

                }).foregroundColor(Color.white)
                    .padding([.leading,.trailing],16)
                    .padding([.top,.bottom],8)
                    .foregroundColor(Color("GreenTea"))
                    .background(Color("BurnwickGreen"))
                    .cornerRadius(8)
                
                Spacer()
            }.padding([.leading,.trailing],20)
        }
        
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
