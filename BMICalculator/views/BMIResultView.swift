//
//  BMIResultView.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct BMIResultView: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(sortDescriptors: []) var records: FetchedResults<Record>
    
    @State var unit = "Metrics"
    @State var u = ["the","he","dj"]
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("23.5").font(.system(size: 48,weight: .regular, design: .rounded)).padding(.bottom,16)
                    Text("Your Current BMI").font(.system(size: 24,weight: .regular, design: .rounded))
                    NavigationLink(destination: AddRecord(), label: {
                        Text("Add new record").font(.system(size: 16,weight: .regular, design: .rounded)).padding([.leading,.trailing],16)
                            .padding([.top,.bottom],8)
                            .foregroundColor(Color("GreenTea"))
                            .background(Color("BurnwickGreen"))
                            .cornerRadius(8)
                    })}
                HStack(spacing:0){
                    Spacer()
                    Button(action: {
                        unit="Metrics"
                    }){
                        Text("Metrics").font(.system(size: 16,weight: .regular, design: .rounded))
                    }.padding([.leading,.trailing],16)
                        .padding([.top,.bottom],8)
                        .foregroundColor(Color(unit == "Metrics" ? "GreenTea" : "BurnwickGreen"))
                        .background(Color(unit == "Metrics" ? "BurnwickGreen" : "White"))
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
                }.padding(.bottom,16)
                
                VStack{
                    List{
                        ForEach(records){record in
                            DataRow(BMIValue: record.bmi, weight: record.weight, height: record.height, date:record.date ?? "none" )
                        }
                    }
                }
                
            }
        }
    }
}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView()
    }
}

