//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Color.teal.opacity(0.9).ignoresSafeArea()
            VStack{
                katkoot(name: "استغفر الله العظيم", counter:$counter [0])
                katkoot(name: "سبحان الله وبحمده", counter:$counter [1])
                katkoot(name: "سبحان الله العظيم", counter:$counter [2])
            }
        }
    }
    
    
    // يجب عمل extract
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct katkoot: View {
        var name: String
        @Binding var counter: Int
        var body: some View {
            HStack{
                Text(name).font(.title)
                Spacer()
                Text("\(counter)")
                    .font(.largeTitle)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.red.opacity(0.9))
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        counter += 1
                    }
            }.padding()
        }
    }
}
