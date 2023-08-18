import LocalizaCar from 0x01

pub fun main(account: Address): LocalizaCar.Car? {
    return LocalizaCar.rentedCars[account]

}


