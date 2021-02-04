//
//  TotalCombinedLivingView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 2/2/21.
//

import SwiftUI

struct TotalCombinedLivingView: View {
    
    @ObservedObject var vm = AllCombinedLivingModel()
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("Deaths of \(vm.recentLivingCases?.features?[343].attributes?.Facility_Type ?? "")")
                    .bold()
                    .font(.title)
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                           
                                        
                                        Text("Allegany")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Allegany ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                               
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                
                                        
                                        
                                        Text("Anne Arundel")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Anne_Arundel ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                         
                                        
                                        Text("Baltimore County")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Baltimore ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                        
                                        Text("Baltimore City")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Baltimore_City ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                            
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 20) {
                                  
                                        
                                        Text("Calvert")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Calvert ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                   
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                             
                                        
                                        Text("Caroline")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Caroline ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        
                    }.padding()
                }
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                            
                                        
                                        
                                        Text("Carroll")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Carroll ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                          
                                        
                                        
                                        Text("Cecil")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Cecil ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                   
                                        
                                    }
                    
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                            
                                        
                                        
                                        Text("Charles")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Charles ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                              
                                        
                                        Text("Dorchester")
                                            .bold()
                                            .font(.headline)
                                        
                                    Text("\(vm.recentLivingCases?.features?[343].attributes?.Dorchester ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 20) {
                          
                                        
                                        Text("Frederick")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Frederick ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                          
                                        
                                        Text("Garrett")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Garrett ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        
                    }.padding()
                }
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                 
                                        
                                        Text("Harford")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Harford ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
              
                                        
                                        
                                        Text("Howard")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Howard ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                             
                                        
                                        
                                        Text("Kent")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Kent ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                   
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                              
                                        
                                        
                                        Text("Montgomery")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Montgomery ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 20) {
                              
                                        
                                        Text("Prince George's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Prince_George_s ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                            
                                        
                                        Text("Queen Anne's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Queen_Anne_s ?? 0)")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        
                    }.padding()
                }
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                              
                                        
                                        Text("Somerset")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Somerset ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                 
                                        
                                        
                                        
                                        Text("St. Mary's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.St_Mary_s ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                            
                                        
                                        Text("Talbot")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Talbot ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 20) {
                               
                                        
                                        
                                        Text("Washington")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Washington ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                       
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                    }.padding()
                    HStack(spacing: 40) {
                        
                        
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                       
                                        
                                        
                                        Text("Wicomico")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Wicomico ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                    
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                 
                                        
                                        
                                        Text("Worcester")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(vm.recentLivingCases?.features?[343].attributes?.Worcester ?? 0)")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                
                                
                                
                            )
                        
                        
                        
                        
                    }.padding()
                }
                
            }.padding()
        }
    }
}



extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}

struct TotalCombinedLivingView_Previews: PreviewProvider {
    static var previews: some View {
        TotalCombinedLivingView()
    }
}

//let epochTime3 = TimeInterval(vm.recentLivingCases?.features?[347].attributes?.DATE ?? 0) / 1000
//let date3 = Date(timeIntervalSince1970: epochTime3)
//let formate3 = date3.getFormattedDate(format: "MM-dd-yyyy") // Set output formate
//Text("\(formate3)")
