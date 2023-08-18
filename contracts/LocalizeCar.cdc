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

