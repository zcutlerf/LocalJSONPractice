import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        List {
            Section("Company") {
                if let company = viewModel.company {
                    Text(company.name)
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
