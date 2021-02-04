//
//  RecentDeathView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 2/1/21.
//

import SwiftUI

struct RecentDeathView: View {
    

    
    @ObservedObject var vm = NewestData()
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            
            
            
            VStack(alignment: .leading) {
                
                Text("Deaths")
                    .bold()
                    .font(.title)
                
                VStack {
                    
                    VStack {
                    
                    Spacer()
                    Spacer()
                    .frame(width: 350, height: 150)
                    .background(Color("Color"))
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                    
                    .overlay(
                        
                     
                        HStack(spacing: 30) {
                            
                            VStack {
                            
                            
                            Text("Total Deaths:")
                                .bold()
                                .font(.title)
                            
                            ForEach(vm.recentMDDeaths, id: \.self) { num in
                                
                                Text("\(num.deaths ?? "")")
                                    .bold()
                                    .font(.title)
                                
                                
                                HStack {
                                    
                                    Text("24 Hour Change:")
                                    
                                    Text("+ \(num.deathsdelta ?? "")")
                                    
                                    
                                }
                                
                            }
                        }
                            
                        }
                        
                        
                    ).foregroundColor(.white)
                    }.padding()
                    
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("By Age")
                        
                            .bold()
                            .font(.title)
                            .padding(.bottom)
                        
                        HStack(spacing: 40) {
                            
                            
                            Spacer()
                                
                                .frame(width: 150, height: 150)
                                .background(Color("Color"))
                                .cornerRadius(15)
                                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                                .overlay(
                                    
                                    VStack(spacing: 10) {
                                        
                                        
                                        VStack {
                                        Text("Deaths 0 to 9")
                                            .bold()
                                            .font(.subheadline)
                                            
                                        Text("Years Old")
                                            .bold()
                                            .font(.subheadline)
                                            
                                        }
                                       
                                        
                                        ForEach(vm.recentMDDeaths, id: \.self) { num in
                                            
                                            Text("\(num.death0to9 ?? "")")
                                                .bold()
                                                .font(.largeTitle)
                                            
                                        
                          
                                        }
                                        
                                    }
                                    
                                    
                                ).foregroundColor(.white)
                            
                            
                            
                            Spacer()
                                
                                .frame(width: 150, height: 150)
                                .background(Color("Color"))
                                .cornerRadius(15)
                                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                                
                                .overlay(
                                    
                                    VStack(spacing: 10) {
                                        
                                        
                                        VStack {
                                        Text("Deaths 10 to 19")
                                            .bold()
                                            .font(.subheadline)
                                            
                                        Text("Years Old")
                                            .bold()
                                            .font(.subheadline)
                                            
                                        }
                                       
                                        ForEach(vm.recentMDDeaths, id: \.self) { num in
                                            
                                            
                                            
                                            Text("\(num.death10to19 ?? "")")
                                                .bold()
                                                .font(.largeTitle)
                                            
                                     
                                        }
                                        
                                    }
                                    
                                    
                                ).foregroundColor(.white)
                            
                        }.padding()
                    }
                    
                     
                    
                    Spacer()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 20 to 29")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.death20to29 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 30 to 39")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        
                                        Text("\(num.death30to39 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                 
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        
                    }.padding()
                    
                    Spacer()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 40 to 49")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.death40to49 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 50 to 59")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        
                                        Text("\(num.death50to59 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                 
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                    }.padding()
                    
                    Spacer()
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 60 to 69")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.death60to69 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 70 to 79")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        
                                        Text("\(num.death70to79 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                 
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                    }.padding()
                    
                    
                    
                    
                }
                
                VStack {
                    
                    Spacer()
                    HStack(spacing: 40) {
                        
                        Spacer()
                            
                            .frame(width: 50, height: 100)
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Deaths 80 +")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Years Old")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.death80plus ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                    
                        
               
                    }.padding()
                    
                    
                    
                }
                
                
                VStack(alignment: .leading) {
                    
                    Text("By Gender")
                        .bold()
                        .font(.title)
                        .padding(.bottom)
                
                Spacer()
                Spacer()
                .frame(width: 350, height: 150)
                .background(Color("Color"))
                .cornerRadius(15)
                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                
                .overlay(
                    
                 
                    HStack(spacing: 30) {
                        
                        VStack(spacing: 20) {
                        
                        
                        Text("Male Deaths:")
                            .bold()
                            .font(.title)
                        
                        ForEach(vm.recentMDDeaths, id: \.self) { num in
                            
                            Text("\(num.deathgenmale ?? "")")
                                .bold()
                                .font(.title)
                            
                     
                            
                        }
                    }
                        
                    }
                    
                    
                ).foregroundColor(.white)
                }.padding()
                
                VStack {
                
                Spacer()
                Spacer()
                .frame(width: 350, height: 150)
                .background(Color("Color"))
                .cornerRadius(15)
                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                
                .overlay(
                    
                 
                    HStack(spacing: 30) {
                        
                        VStack(spacing: 20) {
                        
                        
                        Text("Female Deaths:")
                            .bold()
                            .font(.title)
                        
                        ForEach(vm.recentMDDeaths, id: \.self) { num in
                            
                            Text("\(num.deathgenfemale ?? "")")
                                .bold()
                                .font(.title)
                            
                            
                        }
                    }
                        
                    }
                    
                    
                ).foregroundColor(.white)
                }.padding()
                
                VStack(alignment: .leading) {
                    
                    Text("By Race")
                        .bold()
                        .font(.title)
                        .padding(.bottom)
                
                HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("African American")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Deaths")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.deathaframer ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("White")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Deaths")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        
                                        
                                        Text("\(num.deathwhite ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                 
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                    }
                    
                    
                }.padding()
                
                VStack {
                
                HStack(spacing: 40) {
               
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            .overlay(
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    VStack {
                                    Text("Asian American")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    Text("Deaths")
                                        .bold()
                                        .font(.subheadline)
                                        
                                    }
                                   
                                    
                                    ForEach(vm.recentMDDeaths, id: \.self) { num in
                                        
                                        Text("\(num.deathasian ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                    
                      
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                    
                    
                    Spacer()
                        
                        .frame(width: 150, height: 150)
                        .background(Color("Color"))
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                        .overlay(
                            
                            VStack(spacing: 10) {
                                
                                
                                VStack {
                                Text("Asian Hispanic")
                                    .bold()
                                    .font(.subheadline)
                                    
                                Text("Deaths")
                                    .bold()
                                    .font(.subheadline)
                                    
                                }
                               
                                
                                ForEach(vm.recentMDDeaths, id: \.self) { num in
                                    
                                    Text("\(num.deathhispanic ?? "")")
                                        .bold()
                                        .font(.largeTitle)
                                    
                                
                  
                                }
                                
                            }
                            
                            
                        ).foregroundColor(.white)
                        
                        
                        
 
                          
                           
                        
                    }
                    
                    
                }.padding()
                
            }.padding()
    }
    }
}

struct RecentDeathView_Previews: PreviewProvider {
    static var previews: some View {
        RecentDeathView()
    }
}
