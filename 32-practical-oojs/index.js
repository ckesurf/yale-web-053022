// POJOs - plain old javascript objects
function globalIntroduce() {
    console.log(`Hi!! My name is ${this.firstName}`)
}

const greg = {
    firstName: "Greg",
    lastName: "Dwyer",
    introduce: globalIntroduce
}

const annie = {
    firstName: "Annie",
    lastName: "Zheng",
    introduce: globalIntroduce
}

const michelle = {
    firstName: "Michelle",
    familyName: "Rios",
    introduce: globalIntroduce
}

const ian = {
    firstName: "Ian",
    lastName: "Hollander",
    introduce: globalIntroduce
}

const eten = {
    name: "Eten",
    introduce: globalIntroduce
}
// console.log(greg.introduce())
// console.log(annie.introduce())
// console.log(michelle.introduce())

// console.log(michelle.introduce)
// console.log(greg.introduce)

// TRUE or FALSE?
// console.log(michelle.introduce() === greg.introduce())


// TRUE or FALSE?
// console.log(michelle.introduce === greg.introduce)