//
//  RecentCasesView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 1/31/21.
//

import SwiftUI

struct RecentCasesView: View {
    
    @ObservedObject var vm = NewestData()
    
   
    
    
  
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            
            
            
            VStack(alignment: .leading) {
                
                Text("Cases")
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
                                
                                VStack(spacing: 10) {
                                    
                                    
                                    
                                    Text("Total Cases")
                                        .bold()
                                        .font(.headline)
                                   
                                    
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        Text("\(num.totalcases ?? "")")
                                            .bold()
                                            .font(.title)
                                        
                                        HStack {
                                            
                                        Text("24 Hour Change:")
                                            
                                            .bold()
                                            .font(.subheadline)
                                      
                                            Text("+ \(num.casedelta ?? "")")
                                            .bold()
                                            .font(.subheadline)
                      
                                        }
                                        
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
                                    
                                    
                                    
                                    Text("Positive Percent")
                                        .bold()
                                        .font(.subheadline)
                                   
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        
                                        
                                        Text("\(num.postestpercent ?? "") %")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        HStack {
                                            
                                            
                                        Text("24 Hour Change:")
                                            .bold()
                                            .font(.subheadline)
                                        
                                        Text("+ \(num.pospercentdiff ?? "") %")
                                            .bold()
                                            .font(.subheadline)
                         
                                        }
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                    }.padding()
                    
                        Spacer()
                        Spacer()
                        .frame(width: 350, height: 150)
                        .background(Color("Color"))
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                        
                        .overlay(
                            
                         
                            HStack(spacing: 30) {
                                
                                VStack {
                                
                                
                                Text("Total Tests:")
                                    .bold()
                                    .font(.title)
                                
                                ForEach(vm.recentMDHeader, id: \.self) { num in
                                    
                                    Text("\(num.totaltests ?? "")")
                                        .bold()
                                        .font(.title)
                                    
                                    
                                    HStack {
                                        
                                        Text("24 Hour Change:")
                                        
                                        Text("+ \(num.testsdelta ?? "")")
                                        
                                        
                                    }
                                    
                                }
                            }
                                
                            }
                            
                            
                        ).foregroundColor(.white)
                    
                    
                }
            }.padding()
            
            
            VStack(alignment: .leading) {
                
                Text("Hospitals")
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
                                
                                VStack(alignment: .center, spacing: 10) {
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        
                                        VStack {
                                        
                                        Text("Currently")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Hospitalized")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        
                                        Text("\(num.bedstotal ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                            
                                        
                                  
                                            
                                            
                                            HStack {
                                            
                                                VStack {
                                                    Text("24 Hour")
                                                    .bold()
                                                        .font(.subheadline)
                                                    Text("Change:")
                                                    .bold()
                                                        .font(.subheadline)
                                                }
                                            
                                            Text("\(num.bedsdelta ?? "")")
                                                .bold()
                                                .font(.subheadline)
                                            
                                            }
                                        
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
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        
                                        VStack {
                                        Text("Covid Patients")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("in Acute Beds")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.bedsacute ?? "")")
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
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        
                                        VStack {
                                        Text("Covid Patients")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("in ICU Beds")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.bedsicu ?? "")")
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
                                    ForEach(vm.recentMDHeader, id: \.self) { num in
                                        
                                        
                                        Text("Cumulative Hospitalized")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("\(num.total_hospitalized ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                    }.padding()
      
                }
            }.padding()
            
            VStack(alignment: .leading) {
                
                Text("By Gender")
                    .bold()
                    .font(.title)
                    .padding(.bottom)
                
                VStack(spacing: 20) {
                
                
                 
                    
        
                
                    ForEach(vm.recentMDCases, id: \.self) { num in
                    
                    Spacer()
                    .frame(width: 350, height: 150)
                    .background(Color("Color"))
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                    
                    .overlay(
                        
                        VStack {
                    Text("Female Cases:")
                            .bold()
                            .font(.title)
                    
                    Text("\(num.genfemale ?? "")")
                        .bold()
                        .font(.title)
                        }
                    
                    ).foregroundColor(.white)
                    
             
                    }
                    
                    ForEach(vm.recentMDCases, id: \.self) { num in
                    
                    Spacer()
                    .frame(width: 350, height: 150)
                    .background(Color("Color"))
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                    
                    .overlay(
                        
                        VStack {
                    Text("Male Cases:")
                            .bold()
                            .font(.title)
                    
                    Text("\(num.genmale ?? "")")
                        .bold()
                        .font(.title)
                        }
                    
                    ).foregroundColor(.white)
                    
             
                    }
                }
            }
            
        
            VStack(alignment: .leading) {
                
                Text("By Age")
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
                                
                                VStack(alignment: .center, spacing: 10) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        VStack {
                                        
                                        Text("Cases 0 to 9")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        
                                        Text("\(num.case0to9 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 10 to 19")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case10to19 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 20 to 29")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case20to29 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 30 to 39")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case30to39 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
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
                                
                                VStack(alignment: .center, spacing: 10) {
                                    ForEach(vm.recentMDCases, id: \.self) { num in
                                        
                                        
                                        VStack {
                                        
                                        Text("Cases 40 to 49")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        
                                        Text("\(num.case40to49 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 50 to 59")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case50to59 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 60 to 69")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case60to69 ?? "")")
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
                                        
                                        
                                        VStack {
                                        Text("Cases 70 to 79")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("Years Old")
                                            .bold()
                                            .font(.headline)
                                        }
                                        
                                        Text("\(num.case70to79 ?? "")")
                                            .bold()
                                            .font(.largeTitle)
                                        
                                        
                                        
                                  
                                        
                                    }
                                    
                                }
                                
                                
                            ).foregroundColor(.white)
                        
                        
                    }.padding()
                    
                    
                    Spacer()
                        .frame(width: 150, height: 150)
                        .background(Color("Color"))
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                        
                        .overlay(
                            
                            VStack(spacing: 30) {
                                ForEach(vm.recentMDCases, id: \.self) { num in
                                    
                                    
                                    VStack {
                                    Text("Cases 80 +")
                                        .bold()
                                        .font(.headline)
                                    
                                    Text("Years Old")
                                        .bold()
                                        .font(.headline)
                                    }
                                    
                                    Text("\(num.case80plus ?? "")")
                                        .bold()
                                        .font(.largeTitle)
                                    
                                    
                                    
                              
                                    
                                }
                                
                            }.padding()
                            
                            
                        ).foregroundColor(.white)
      
                }
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
                            
                        Text("Cases")
                            .bold()
                            .font(.subheadline)
                            
                        }
                       
                        
                        ForEach(vm.recentMDCases, id: \.self) { num in
                            
                            Text("\(num.caseaframer ?? "")")
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
                            
                        Text("Cases")
                            .bold()
                            .font(.subheadline)
                            
                        }
                       
                        ForEach(vm.recentMDCases, id: \.self) { num in
                            
                            
                            
                            Text("\(num.casewhite ?? "")")
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
                    Text("Hispanic American")
                        .bold()
                        .font(.subheadline)
                        
                    Text("Cases")
                        .bold()
                        .font(.subheadline)
                        
                    }
                   
                    
                    ForEach(vm.recentMDCases, id: \.self) { num in
                        
                        Text("\(num.casehispanic ?? "")")
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
                        Text("Asian American")
                            .bold()
                            .font(.subheadline)
                            
                        Text("Deaths")
                            .bold()
                            .font(.subheadline)
                            
                        }
                       
                        
                        ForEach(vm.recentMDCases, id: \.self) { num in
                            
                            Text("\(num.caseasian ?? "")")
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

struct RecentCasesView_Previews: PreviewProvider {
    static var previews: some View {
        RecentCasesView()
    }
}



