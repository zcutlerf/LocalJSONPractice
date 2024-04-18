//
import Foundation

class ViewModel: ObservableObject {
    @Published var company: Company?
    @Published var employees: [Employee] = []
    
    init() {
        self.company = getCompany()
        self.employees = getEmployees()
    }
    
#warning("TODO: Complete getCompany() method.")
    func getCompany() -> Company? {
        // 1. Read Data from file
        
        // 2. Try to decode Data into a Company
        
        // 3. If it works, return the decoded Company
        
        // 4. If it doesn't work, print the error and return nil
        return nil
    }
    
#warning("TODO: Complete getEmployees() method.")
    func getEmployees() -> [Employee] {
        // 1. Read Data from file
        
        // 2. Try to decode Data into an Array of Employees
        
        // 3. If it works, return the decoded Array
        
        // 4. If it doesn't work, print the error and return an empty array
        return []
    }
}
