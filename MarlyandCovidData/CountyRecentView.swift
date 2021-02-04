//
//  CountyRecentView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 1/31/21.
//

import SwiftUI

struct CountyRecentView: View {
    
    @ObservedObject var vm = NewestData()
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("County Cases")
                    .bold()
                    .font(.title)
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Allegany")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.alle ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Anne Arundel")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.anne ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Baltimore County")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.balt ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Baltimore City")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.bcity ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                            
                                        
                                    }
                                    
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
                                
                                VStack(spacing: 20) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Calvert")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.calv ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Caroline")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.caro ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        
                    }.padding()
                }
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Carroll")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.carr ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("\(num.ceci ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                        Text("Cecil")
                                            .bold()
                                            .font(.headline)
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Charles")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.char ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Dorchester")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.dorc ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
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
                                
                                VStack(spacing: 20) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Frederick")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.fred ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Garrett")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.garr ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                 
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        
                    }.padding()
                }
                
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Harford")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.harf ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Howard")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.howa ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Kent")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.kent ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Montgomery")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.mont ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                
                                        
                                    }
                                    
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
                                
                                VStack(spacing: 20) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Prince George's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.prin ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Queen Anne's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.quee ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        
                    }.padding()
                }
                VStack {
                    
                    
                    
                    HStack(spacing: 40) {
                        
                        
                        Spacer()
                            
                            .frame(width: 150, height: 150)
                            .background(Color("Color"))
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                            
                            .overlay(
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Somerset")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.some ?? "")")
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
                                
                                VStack(spacing: 30) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        
                                        Text("St. Mary's")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.stma ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                     
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        Text("Talbot")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.talb ?? "")")
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
                                
                                VStack(spacing: 20) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Washington")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.wash ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                       
                                        
                                    }
                                    
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Wicomico")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.wico ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        
                                        
                                    
                                        
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
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        Text("Worcester")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.worc ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                        
                        
                    }.padding()
                }
                
            }.padding()
        }
    }
}

struct CountyRecentView_Previews: PreviewProvider {
    static var previews: some View {
        CountyRecentView()
    }
}
