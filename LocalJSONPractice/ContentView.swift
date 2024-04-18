import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        List {
            Section("Company") {
                if let company = viewModel.company {
                    VStack {
                        Text(company.name)
                        Text(company.address)
                        Text("founded \(company.year_founded)")
                    }
                } else {
                    Text("company not loaded")
                }
            }
            
            Section("Employees: \(viewModel.employees.count)") {
                ForEach(viewModel.employees, id: \.name) { employee in
                    VStack {
                        Text(employee.name)
                        Text(employee.role)
                        Text("here for \(employee.years_in_role) years")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
