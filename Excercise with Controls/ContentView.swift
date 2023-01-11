//
//  ContentView.swift
//  Excercise with Controls
//
//  Created by Juan Romero on 11/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var reservationDate = Date()
    var body: some View {
       
        
            Form {
                HStack {
                    
                        DatePicker(
                            "Fecha",
                            selection: $reservationDate,
                            displayedComponents: [.date])
                    Button("Hecho") {
                        //Imprimir Fecha Seleccionada
                        print("Fecha Seleccionada: \(reservationDate.formatted(date: .long, time: .complete))")
                    }
                    
                    
                    }//HStack
                      
                Text("La Fecha Seleccionada es: \(reservationDate.formatted(date: .long,time: .complete))")
                } //Form
            
         
            }
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
      
    }
}
