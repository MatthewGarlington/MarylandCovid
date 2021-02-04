//
//  CountyRecentDeathsView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 2/2/21.
//

import SwiftUI

struct CountyRecentDeathsView: View {
    @ObservedObject var vm = NewestData()
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("County Deaths")
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Allegany")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathalle ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                               
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Anne Arundel")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathanne ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Baltimore County")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathbalt ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Baltimore City")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathbcity ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                            
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Calvert")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathcalv ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                   
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Caroline")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathcaro ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Carroll")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathcarr ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Cecil")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathceci ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                   
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Charles")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathchar ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Dorchester")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathdorc ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Frederick")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathfred ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Garrett")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathgarr ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Harford")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathharf ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Howard")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathhowa ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Kent")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathkent ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                   
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Montgomery")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathmont ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Prince George's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathprin ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Queen Anne's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathquee ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Somerset")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathsome ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        Spacer()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        
                                        Text("St. Mary's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathstma ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("Talbot")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathtalb ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            
                            .overlay(
                                
                                VStack(spacing: 20) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Washington")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathwash ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                       
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Wicomico")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathwico ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                    
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        Text("Worcester")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.deathworc ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                }
                                
                                
                            )
                        
                        
                        
                        
                    }.padding()
                }
                
            }.padding()
        }
    }
}

struct CountyRecentDeathsView_Previews: PreviewProvider {
    static var previews: some View {
        CountyRecentDeathsView()
    }
}
