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
        do {
            // 1. Read Data from file
            let data = try FileService.data(from: "Company", extension: "json")
            
            // 2. Try to decode Data into a Company
            
            // 3. If it works, return the decoded Company
            
        } catch {
            // 4. If it doesn't work, print the error and return nil
            print(error.localizedDescription)
            return nil
        }
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
