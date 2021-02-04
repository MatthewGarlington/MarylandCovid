//
//  CombinedLivingView.swift
//  MarlyandCovidData
//
//  Created by Matthew Garlington on 2/2/21.
//

import SwiftUI

struct CombinedLivingView: View {
    
    @ObservedObject var vm = TotalCongergateLiving()
    var body: some View {
        
        NavigationView {
        List {
            ForEach(vm.recentLivingCases, id: \.self) { num in
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    
            
                    
                    HStack {
                 
                        Text(num.facility_name ?? "")
                            .bold()
                            
                    }
                    
                        HStack {
                            
                            Text("County:")
                                .bold()
                            Text(num.county ?? "")
                        }
                    
                    
                    
                    HStack {
                        
                        Text("Residents Cases:")
                            .bold()
                        Text(num.residents_private ?? "0")
                    }
                    
                    HStack {
                        
                        Text("Staff Cases:")
                            .bold()
                        Text(num.staff_private ?? "0")
                    }
                
                
                
                    
                }
                .font(.title3)
                
            }
        }.navigationTitle("Combined Living Cases")
        }
    }
}

struct CombinedLivingView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedLivingView()
    }
}
