//
import Foundation

class ViewModel: ObservableObject {
    @Published var company: Company?
    @Published var employees: [Employee] = []
    
    init() {
        self.company = getCompany()
        self.employees = getEmployees()
    }
    
    func getCompany() -> Company? {
        do {
            // 1. Read Data from file
            let data = try FileService.data(from: "Company", extension: "json")
            
            // 2. Try to decode Data into a Company
            let company = try JSONDecoder().decode(Company.self, from: data)
            
            // 3. If it works, return the decoded Company
            return company
            
        } catch {
            // 4. If it doesn't work, print the error and return nil
            print(error)
            return nil
        }
    }
    
    func getEmployees() -> [Employee] {
        do {
            // 1. Read Data from file
            let data = try FileService.data(from: "Employees", extension: "json")
            
            // 2. Try to decode Data into an Array of Employees
            let employees = try JSONDecoder().decode([Employee].self, from: data)
            
            // 3. If it works, return the decoded Array
            return employees
            
        } catch {
            // 4. If it doesn't work, print the error and return an empty array
            print(error)
            return []
        }
    }
}
