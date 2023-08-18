# MetacraftersStructs

This Cadence program is a simple "RentCar" program that demonstrates the basic syntax and functionality of the Cadence programming language. The purpose of this program is to serve as a starting point for those who are new to Cadence and want to get a feel for how it works.

## Description

This program is a simple contract written in Cadence, a programming language used for developing smart contracts on the Flow blockchain. The contract has a single function that stores an object in a dictionary. This program serves as a simple and straightforward introduction to Cadence programming and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

* Step 1: To run this program, you can use Play Flow, an online Flow IDE. To get started, go to the Play Flow website at https://play.flow.com/.
    
    Once you are on the Flow website, create a new file by clicking on the "+" icon in the left-hand sidebar on the Contract folder. Save the file with the name LocalizeCar( or whatever you want). Copy and paste the following code into the file:
    
    ```cadence
    pub contract LocalizeCar {
    
        pub var rentedCars: {Address: Car}
    
        pub struct Car {
            pub let carName: String
            pub let model: String
            pub let year: UInt16
            pub let color: String
    
            init(_carName: String, _model: String, _year: UInt16, _color: String) {
                self.carName = _carName
                self.model = _model
                self.year = _year
                self.color = _color          
            }
          
        }
    
        init() {       
            self.rentedCars = {}
        }
    
        pub fun rentCar(carName: String, model: String, year: UInt16, color: String, account: Address) {
    
            let newCarRented = Car(_carName: carName, _model: model, _year: year, _color: color)
    
            self.rentedCars[account] = newCarRented
        }
    }

    ```
* Step 2:
    After the contract, create a new file by clicking on the "+" icon in the left-hand sidebar on the transaction folder, Save the file with the name RentCar( or whatever you want). Copy and paste the following code into the file:
    
    ```Cadence
    import LocalizaCar from 0x01
    
    transaction(carName: String, model: String, year: UInt16, color: String, account: Address) {
    
        prepare(signer: AuthAccount) {
        }
    
        execute {
            LocalizaCar.rentCar(carName: carName, model: model, year: year, color: color, account: account)
            log("We're done.")
        }
    }
    ```

* Step 3:  After the contract, create a new file by clicking on the "+" icon in the left-hand sidebar on the script folder, Save the file with the name ReadRentedCar( or whatever you want). Copy and paste the following code into the file:
    ```cadence
    import LocalizaCar from 0x01
        
    pub fun main(account: Address): LocalizaCar.Car? {
        return LocalizaCar.rentedCars[account]
            
    }    
    ```
  
To deploy the contract, Select  the "LocalizeCar" contract tab in the left-hand sidebar. Select a signer, and then click on the "Deploy" button in the left-hand sidebar.


Once the contract is deployed, you can interact with it by calling the "rentCar" function. Click on the "Rentcar" file in the left-hand sidebar, and then fill in the arguments. Finally, click on the "Send" button to execute the function.

You can visualize the car rented by a address by calling the function "ReadRentedCar" function. Click on the "ReadRentedCar" file in the left-hand sidebar, and then fill in the arguments. Finally, click on the "Execute" button to execute the function.

## Authors

Valdeir Rodrigues 
[@vardiRdg](https://twitter.com/VardiRdg)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
