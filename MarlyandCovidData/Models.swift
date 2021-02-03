//
//  Model.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 1/30/21.
//

import Foundation


class AllMDData: ObservableObject {
   
    
    @Published var allMDHeader = [MDHeader]()
    @Published var allDeaths = [MDDataDeath]()
    @Published var allMDCases = [MDCases]()
  

    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://opendata.maryland.gov/resource/mgd3-qk8t.json")!
        
        // This URL IS FOR SPECEIF NEWEST DATA https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=jb
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
//            guard let allMDDataJSON = try? JSONDecoder().decode([MDDataDeath].self, from: data) else {
//               print("Error: Couldn't decode data into all data in MD Info")
//               return
//             }
////
//            print("gotten json response dictionary is \n \(allMDDataJSON)")
            // update UI using the response here

            DispatchQueue.main.async {

            do {

                self.allMDHeader = try JSONDecoder().decode([MDHeader].self, from: data)
                self.allDeaths = try JSONDecoder().decode([MDDataDeath].self, from: data)
                self.allMDCases = try JSONDecoder().decode([MDCases].self, from: data)
          
              
                
                print(self.allMDHeader[self.allMDHeader.count - 1].bedsicu)
              

            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }
//            
            
        }
        

        // execute the HTTP request
        task.resume()

    }
}

class NewestData: ObservableObject {
   
    
    @Published var recentMDHeader = [MDHeader]()
    @Published var recentMDDeaths = [MDDataDeath]()
    @Published var recentMDCases = [MDCases]()
  

    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=l")!
        
        // This URL IS FOR SPECEIF NEWEST DATA https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=jb
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
//            guard let allMDDataJSON = try? JSONDecoder().decode([MDDataDeath].self, from: data) else {
//               print("Error: Couldn't decode data into all data in MD Info")
//               return
//             }
////
//            print("gotten json response dictionary is \n \(allMDDataJSON)")
            // update UI using the response here

            DispatchQueue.main.async {

            do {

                self.recentMDHeader = try JSONDecoder().decode([MDHeader].self, from: data)
                self.recentMDDeaths = try JSONDecoder().decode([MDDataDeath].self, from: data)
                self.recentMDCases = try JSONDecoder().decode([MDCases].self, from: data)
          
              
                
                print(self.recentMDHeader[0].bedsicu)
              

            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }
//
            
        }
        

        // execute the HTTP request
        task.resume()

    }
}

class TotalVaccineData: ObservableObject {
   
    
    @Published var recentMDVaccineTotals: MDTotalVaccine?
  
  

    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://services.arcgis.com/njFNhDsUCentVYJW/arcgis/rest/services/MD_COVID19_VaccinationMetrics/FeatureServer/0/query?where=1%3D1&outFields=Metric,Value&outSR=4326&f=json")!
        
        // This URL IS FOR SPECEIF NEWEST DATA https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=jb
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
//            guard let allVaccineJSON = try? JSONDecoder().decode(MDTotalVaccine?.self, from: data) else {
//               print("Error: Couldn't decode data into all data in MD Info")
//               return
//             }
////
//            print("gotten json response dictionary is \n \(allVaccineJSON)")
            // update UI using the response here

            DispatchQueue.main.async {

            do {

                self.recentMDVaccineTotals = try JSONDecoder().decode(MDTotalVaccine?.self, from: data)




                print(self.recentMDVaccineTotals?.features)


            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }

            
        }
        

        // execute the HTTP request
        task.resume()

    }
}

class TotalCongergateLiving: ObservableObject {
   
    
    @Published var recentLivingCases = [Response]()
  
  

    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://opendata.maryland.gov/resource/hk7v-mpf2.json?date=2021-01-27T10:00:00.000")!
        
        // This URL IS FOR SPECEIF NEWEST DATA https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=jb
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
//            guard let recentLivingCases = try? JSONDecoder().decode([Response]?.self, from: data) else {
//               print("Error: Couldn't decode data into all data in MD Info")
//               return
//             }
////
//            print("gotten json response dictionary is \n \(recentLivingCases)")
            // update UI using the response here

            DispatchQueue.main.async {

            do {

                self.recentLivingCases = try JSONDecoder().decode([Response].self, from: data)




                print(self.recentLivingCases[0])


            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }

            
        }
        

        // execute the HTTP request
        task.resume()

    }
}

class AllCombinedLivingModel: ObservableObject {
   
    
    @Published var recentLivingCases: MDTotalCombinedLiving?
  
  

    

                        
    
   
    
    init() {
       
        let config = URLSessionConfiguration.default
      
        config.httpAdditionalHeaders = ["x-rapidapi-key" : "0d5ce136acmsha0935b31dcc0e53p15e7b1jsn99349520e7b2"]
        
        let session = URLSession(configuration: config)

        let url = URL(string: "https://services.arcgis.com/njFNhDsUCentVYJW/arcgis/rest/services/MDCOVID19_TotalCasesInCongregateFacilitySettingsByCounty/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json")!
        
        // This URL IS FOR SPECEIF NEWEST DATA https://opendata.maryland.gov/resource/mgd3-qk8t.json?filter=jb
        let task = session.dataTask(with: url) { data, response, error in
            
            

            // ensure there is no error for this HTTP response
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            // ensure there is data returned from this HTTP response
            guard let data = data else {
                print("No data")
                return
            }
            
            // Parse JSON into newJSON struct using JSONDecoder
//            guard let recentLivingCases = try? JSONDecoder().decode([Response]?.self, from: data) else {
//               print("Error: Couldn't decode data into all data in MD Info")
//               return
//             }
////
//            print("gotten json response dictionary is \n \(recentLivingCases)")
            // update UI using the response here

            DispatchQueue.main.async {

            do {

                self.recentLivingCases = try JSONDecoder().decode(MDTotalCombinedLiving?.self, from: data)

                let epochTime2 = TimeInterval((self.recentLivingCases?.features?[347].attributes?.DATE ?? 0)) / 1000
                let date2 = Date(timeIntervalSince1970: epochTime2)
                let formate = date2.getFormattedDate(format: "MM-dd-yyyy")


                print(self.recentLivingCases?.features?[346].attributes?.Baltimore)


            } catch let jsonError {

                print("Decoding failed for UserDetails", jsonError)
        }
            }

            
        }
        

        // execute the HTTP request
        task.resume()

    }
}



