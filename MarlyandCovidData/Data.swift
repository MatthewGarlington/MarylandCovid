//
//  Data.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 1/30/21.
//

import Foundation
import MapKit




struct MDHeader: Codable, Hashable {
    
    let filter: String?
    let reportdate: String?
    let totalcases: String?
    let casedelta: String?
    let totaltests: String?
    let testsdelta: String?
    let postestpercent: String?
    let pospercentdiff: String?
    let negativetests: String?
    let negdelta: String?
    let bedstotal: String?
    let bedsacute: String?
    let bedsicu: String?
    let bedsdelta: String?
    let total_hospitalized: String?
    let hospitalizeddelta: String?
    let total_released: String?
    let releaseddelta: String?
    
}
 
struct MDCases: Codable, Hashable {
  
    let alle: String?
    let anne: String?
    let balt: String?
    let bcity: String?
    let calv: String?
    let caro: String?
    let carr: String?
    let ceci: String?
    let char: String?
    let dorc: String?
    let fred: String?
    let garr: String?
    let harf: String?
    let howa: String?
    let kent: String?
    let mont: String?
    let prin: String?
    let quee: String?
    let some: String?
    let stma: String?
    let talb: String?
    let wash: String?
    let wico: String?
    let worc: String?
    let case0to9: String?
    let case10to19: String?
    let case20to29: String?
    let case30to39: String?
    let case40to49: String?
    let case50to59: String?
    let case60to69: String?
    let case70to79: String?
    let case80plus: String?
    let genmale: String?
    let genfemale: String?
    let caseaframer: String?
    let casewhite: String?
    let casehispanic: String?
    let caseasian: String?
    let caseother: String?
    
    
}

struct MDDataDeath: Codable, Hashable {
    let filter: String?
    let deathsdelta: String?
    let deaths: String?
    let deathdod: String?
    let deathalle: String?
    let deathanne: String?
    let deathbalt: String?
    let deathbcity: String?
    let deathcalv: String?
    let deathcaro: String?
    let deathcarr: String?
    let deathceci: String?
    let deathchar: String?
    let deathdorc: String?
    let deathfred: String?
    let deathgarr: String?
    let deathharf: String?
    let deathhowa: String?
    let deathkent: String?
    let deathmont: String?
    let deathprin: String?
    let deathquee: String?
    let deathsome: String?
    let deathstma: String?
    let deathtalb: String?
    let deathwash: String?
    let deathwico: String?
    let deathworc: String?
    let deathunkn: String?
    let death0to9: String?
    let death10to19: String?
    let death20to29: String?
    let death30to39: String?
    let death40to49: String?
    let death50to59: String?
    let death60to69: String?
    let death70to79: String?
    let death80plus: String?
    let deathgenmale: String?
    let deathgenfemale: String?
    let deathaframer: String?
    let deathwhite: String?
    let deathhispanic: String?
    let deathasian: String?
    let deathother: String?
    let deathnotavail: String?
    
}



struct MDTotalVaccine: Codable, Hashable {
    
    
    let features: [Features]?
    
    
}

struct Features: Codable, Hashable {
    
    let attributes: Attributes?
}

struct Attributes: Codable, Hashable {
    
    

    let Metric: String?
    let Value: Double?
    
    
}

struct TotalLivingCases: Codable, Hashable {
    
    let response: [Response]
    
}

struct Response: Codable, Hashable {
    
    let county: String?
    let facility_name: String?
    let staff_private: String?
    let residents_private: String?
    let staff_public: String?
    let patients_public: String?
    let inmates_public: String?
    let youth_public: String?
}

struct MDTotalCombinedLiving: Codable, Hashable {
    
    
    let features: [CombinedLivingFeatures]?
    
    
}

struct CombinedLivingFeatures: Codable, Hashable {
    
    let attributes: CombinedLivingAttributes?
}

struct CombinedLivingAttributes: Codable, Hashable {
    
    

    let DATE: Int?
    let Facility_Type: String?
    let Allegany: Int?
    let Anne_Arundel: Int?
    let Baltimore: Int?
    let Baltimore_City: Int?
    let Calvert: Int?
    let Caroline: Int?
    let Carroll: Int?
    let Cecil: Int?
    let Charles: Int?
    let Dorchester: Int?
    let Frederick: Int?
    let Garrett: Int?
    let Harford: Int?
    let Howard: Int?
    let Kent: Int?
    let Montgomery: Int?
    let Prince_George_s: Int?
    let Queen_Anne_s: Int?
    let Somerset: Int?
    let St_Mary_s: Int?
    let Talbot: Int?
    let Washington: Int?
    let Wicomico: Int?
    let Worcester: Int?
    
    
}

struct MDVaccineLocations: Codable, Hashable, Identifiable {
    
    
    let id = UUID()
    let features: [VaccineLocationsFeatures]?
  
    
    
}

struct VaccineLocationsFeatures: Codable, Hashable, Identifiable {
    
    let id = UUID()
    let attributes: VaccineLocationAttributes?
    let geometry: Geometry?
   
}

struct VaccineLocationAttributes: Codable, Hashable {
    
    let name: String?
    let fulladdr: String?
    let municipality: String?
    let ActiveYesNo: String?
    let operationalhours: String?
    let cost_notes: String?
    let schedule_url: String?
    let online_scheduling: String?
    let scheduling_contact: String?
    let scheduling_contact_phone: String?
    let scheduling_contact_email: String?
    let test_pcr: String?
    let website_url: String?
    let created_date: Int?
    let last_edited_date: Int?
  
    
}

struct Geometry: Codable, Hashable {

    let x: Double
    let y: Double
    
    var coordinate: CLLocationCoordinate2D {
      CLLocationCoordinate2D(latitude: y, longitude: x)
    }

    
}

