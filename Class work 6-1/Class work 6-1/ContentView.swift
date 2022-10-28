//
//  ContentView.swift
//  Class work 6-1
//
//  Created by Mac on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var height = ""
    @State var wieght = ""
    @State var BMI = ""
    @State var status = ""
   
    var body: some View {
        ZStack{
            Color.black.opacity(0.3).ignoresSafeArea()
            VStack {
                Image("bmi")
                    .resizable()
                    .scaledToFit()
                
                Text("أدخل الطول و الوزن")
                    .font(.title3)
                TextField("ادخل طولك", text: $height)
                    .font(.title3)
                    .padding()
                TextField("ادخل وزنك", text: $wieght)
                    .font(.title3)
                    .padding()
                Button(action:  {
                    BMICalculator(height: Double(height) ?? 1.0 , wieght: Double(wieght) ?? 1.0)
                } ,label: {
                    Text("احسب")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                    
                        .frame(width: 200,height: 56)
                        .background(Color.black)
                        .cornerRadius(10)
                })
                
                Text("BMI=\(BMI)")
                    .font(.title3)
                Text("status=\(status)")
                    .font(.title3)
            } .padding()
        }
        
    }
    func BMICalculator(height: Double , wieght: Double){
        let katkoot = wieght/(height * height)
    
    if katkoot <= 20 {
    status="ضعيف"
        } else if katkoot <= 25 {
            status="جيد"
            
        } else {
            status="سمين"
            
        }
        BMI = "\(katkoot)"
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
}
