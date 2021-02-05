//
//  ContentView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 1/30/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    
    @ObservedObject var vm2 = VaccineLocationsModel()
    
 
       
       var body: some View {
        
     
           VStack{

               HStack{

                   Text("Maryland Covid")
                       .font(.title)
                       .fontWeight(.bold)
                       .foregroundColor(Color("Color"))

                   Spacer(minLength: 0)
               }
               .padding(.horizontal)

               // Tab View...

               HStack(spacing: 0){

                   Text("Cases")
                       .foregroundColor(self.index == 0 ? .white : Color("Color").opacity(0.7))
                       .fontWeight(.bold)
                       .padding(.vertical,10)
                       .padding(.horizontal,35)
                       .background(Color("Color").opacity(self.index == 0 ? 1 : 0))
                       .clipShape(Capsule())
                       .onTapGesture {

                           withAnimation(.default){

                               self.index = 0
                           }
                       }

                   Spacer(minLength: 0)

                   Text("Death")
                       .foregroundColor(self.index == 1 ? .white : Color("Color").opacity(0.7))
                       .fontWeight(.bold)
                       .padding(.vertical,10)
                       .padding(.horizontal,35)
                       .background(Color("Color").opacity(self.index == 1 ? 1 : 0))
                       .clipShape(Capsule())
                       .onTapGesture {

                           withAnimation(.default){

                               self.index = 1
                           }
                       }

                   Spacer(minLength: 0)

                   Text("Vaccine")
                       .foregroundColor(self.index == 2 ? .white : Color("Color").opacity(0.7))
                       .fontWeight(.bold)
                       .padding(.vertical,10)
                       .padding(.horizontal,35)
                       .background(Color("Color").opacity(self.index == 2 ? 1 : 0))
                       .clipShape(Capsule())
                       .onTapGesture {

                           withAnimation(.default){

                               self.index = 2
                           }
                       }


               }
               .background(Color.black.opacity(0.06))
               .clipShape(Capsule())
               .padding(.horizontal)
               .padding(.top,25)



               // Tab View With Swipe Gestures....

               // connecting index with tabview for tab change...

               TabView(selection: self.$index){



                   RecentCasesView()
                       .tag(0)



                   RecentDeathView()
                       .tag(1)



                   MDVaccineTotalView()
                       .tag(2)


               }
               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

               Spacer(minLength: 0)
           }
           .padding(.top)

       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

