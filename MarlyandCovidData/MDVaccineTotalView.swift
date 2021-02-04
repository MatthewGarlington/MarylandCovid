//
//  MDVaccineTotalView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 2/2/21.
//

import SwiftUI
import MapKit

struct MDVaccineTotalView: View {
    @ObservedObject var vm = TotalVaccineData()
    @State private var centerCoordinate = CLLocationCoordinate2D()
    
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255) ]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("Vaccine Total")
                    .bold()
                    .font(.title)
                
                VStack {
                    
//                    
//                    ZStack {
//                        Circle()
//                            .stroke(Color(.systemGray6), lineWidth: 20)
//                            .frame(width: 300, height: 300)
//                        
//                        Circle()
//                            .trim(from: 0, to: 0.078)
//                            .stroke(purpleGradient, lineWidth: 20)
//                            .frame(width: 300, height: 300)
//                            .overlay(
//                                VStack {
//                                    Text("\(vm.recentMDVaccineTotals?.features?[2].attributes?.Value ?? 0 , specifier: "%.1f")%")
//                                        .font(.system(size: 80, weight: .bold, design: .rounded))
//                                        .foregroundColor(Color(.systemGray))
//                                    
//                                    VStack {
//                                    Text("Vaccines")
//                                        .bold()
//                                        
//                                    Text("Complete")
//                                        .bold()
//                                    }
//                                    .font(.system(.body, design: .rounded))
//                                    .foregroundColor(Color(.systemGray))
//                                }
//                            )
//
//             
//                    }
                    

                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 20) {

                            
                                    Text("Total Vaccinated")
                                            .bold()
                                            .font(.headline)
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[0].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
                                    
                                    HStack {
                                        
                                    Text("24 Hour Change:")
                                        
                                        .bold()
                                        .font(.subheadline)
                                  
                                        Text("+ \(vm.recentMDVaccineTotals?.features?[1].attributes?.Value ?? 0,  specifier: "%.0f")")
                                        .bold()
                                        .font(.subheadline)
                  
                                    }
                                    
                                    
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {

                                    VStack {
                                    Text("Percent")
                                            .bold()
                                            .font(.headline)
                                    
                                    Text("Vaccinated")
                                            .bold()
                                            .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[2].attributes?.Value ?? 0 , specifier: "%.2f") %")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        

                        
                        
                        
                    }.padding()
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {

                            
                                    Text("Total Vaccines")
                                            .bold()
                                            .font(.headline)
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[6].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 20) {

                                    VStack {
                                    Text("Total Doses")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Distributed")
                                                .bold()
                                                .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[8].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        

                        
                        
                        
                    }.padding()
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 10) {

                            
                                    VStack {
                                        Text("Second Dose")
                                                .bold()
                                            .font(.headline)
                                        Text("Given")
                                                .bold()
                                            .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[3].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
                                    
                                    HStack {
                                        
                                    Text("24 Hour Change:")
                                        
                                        .bold()
                                        .font(.subheadline)
                                  
                                        Text("+ \(vm.recentMDVaccineTotals?.features?[4].attributes?.Value ?? 0,  specifier: "%.0f")")
                                        .bold()
                                        .font(.subheadline)
                  
                                    }
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {

                            
                                    VStack {
                                        Text("Percent of")
                                                .bold()
                                            .font(.headline)
                                        Text("Second")
                                                .bold()
                                            .font(.headline)
                                        
                                        Text("Doses Given")
                                                .bold()
                                            .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[5].attributes?.Value ?? 0 , specifier: "%.2f") %")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        

                        
                        
                        
                    }.padding()
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {

                            
                                    VStack {
                                        Text("First Dose")
                                                .bold()
                                            .font(.headline)
                                        Text("Distributed")
                                                .bold()
                                            .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[9].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {

                            
                                    VStack {
                                        Text("Second Dose")
                                                .bold()
                                            .font(.headline)
                                        Text("Distributed")
                                                .bold()
                                            .font(.headline)
                                    }
                                    
                                    Text("\(vm.recentMDVaccineTotals?.features?[10].attributes?.Value ?? 0 , specifier: "%.0f")")
                                            .bold()
                                            .font(.title)
          
                                    }
                                     
                                
                            ).foregroundColor(.white)
                        

                        
                        
                        
                    }.padding()
                }
                
            }.padding()
        }
    }
}
struct MDVaccineTotalView_Previews: PreviewProvider {
    static var previews: some View {
        MDVaccineTotalView()
    }
}
