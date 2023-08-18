import LocalizaCar from 0x01

transaction(carName: String, model: String, year: UInt16, color: String, account: Address) {

    prepare(signer: AuthAccount) {
    }

    execute {
        LocalizaCar.rentCar(carName: carName, model: model, year: year, color: color, account: account)
        log("We're done.")
    }
}

