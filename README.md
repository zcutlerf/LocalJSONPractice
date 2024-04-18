#  Practice using local JSON files


## Instructions

1. In Company.swift, fill out the `Company` type with the appropriate property names and types, based on what you see in Company.json.

2. In ViewModel.swift, fill out the `getCompany() -> Company?` method. (i.e.: Decode JSON from the Company.json file into a `Company`.)

3. In ViewModel.swift, fill out the `getEmployees() -> [Employee]` method. (i.e.: Decode JSON from the Employees.json file into an `Array` of `Employee`s.)

4. Run your app in the Simulator to see if it successfully loads a Company and list of Employees.


## Resources

> ### What is JSON?
> https://www.w3schools.com/js/js_json_intro.asp

> ### How do I decode JSON into a Swift data type?
> https://developer.apple.com/documentation/foundation/jsondecoder

> ### How do I handle an error thrown by a function?
> https://sarunw.com/posts/different-ways-to-catch-throwing-errors-in-swift/#catch-all-errors


## Stretch Goal

> Maybe you noticed that some of the properties of Employee and Company are in "snake case" (i.e.: `years_in_role`), rather than in "camel case" (i.e.: `yearsInRole`) which is recommended in the Swift style guide. Could you change how these properties are named, and adjust the decoding strategy to handle this?
> https://developer.apple.com/documentation/foundation/jsondecoder/keydecodingstrategy/convertfromsnakecase
> Note: Do this **without** editing the `.json` files.
