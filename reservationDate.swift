import SwiftUI

struct ReservationCalendar: View {
    @State var reservationDate = Date()

    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                
                Button(action: {print(" do some thing !")}){
                    HStack{
                        Image (systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }
            }
            Text ("Date is \(reservationDate.formatted(date: .long, time: .complete))")
            
        }
        .padding()
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
