//
//  AddRecord.swift
//  BMICalculator
//
//  Created by Hafiz Shaikh on 16/12/22.
//

import SwiftUI

struct AddRecord: View {
    @Environment(\.managedObjectContext) var context
    @FetchRequest(sortDescriptors: []) var records: FetchedResults<Record>

    @State var unit = "Metric"
    @State var weight = ""
    @State var height = ""
    @State var date = Date()
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
                    TextField("Height", text: $height)
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
                        TextField("Height(Ft)", text: $height)
                            .foregroundColor(Color("DarkPurple"))
                        Text("Ft").foregroundColor(Color("DarkPurple"))
                    }.padding(16).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("DarkPurple"), lineWidth: 1)
                    )
                    HStack{
                        TextField("Height(inchs)", text: $height)
                            .foregroundColor(Color("DarkPurple"))
                        Text("Inchs").foregroundColor(Color("DarkPurple"))
                    }.padding(16).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("DarkPurple"), lineWidth: 1)
                    )
                }
            }
            DatePicker("Date", selection: $date,displayedComponents: [.date]).padding(.top,12)
            
            HStack{
                Button(action:addItem){
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
    
    

    private func addItem() {
        withAnimation {
            let newRecord = Record(context: context)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/YY"
            newRecord.date = dateFormatter.string(from: date)
            newRecord.weight = Float(weight) ?? 0
            newRecord.height = Float(height) ?? 0
            newRecord.id = UUID()
            
//            BMIRecordInstance.date = Date()
//            if(unit == "Metric" ){
//                BMIRecordInstance.height = 123.8
//                BMIRecordInstance.weight = 40.9
//            }
            newRecord.bmi = newRecord.weight/newRecord.height*newRecord.height
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
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
