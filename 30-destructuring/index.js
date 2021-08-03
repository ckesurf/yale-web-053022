/********************** What's destructuring & how can I do it? **********************/

const raffy = {
    name: "Raffy",
    age: 9,
    type: "terrier",
    bestFriends: ["Michelle", "Louie", "Coco", "Pepper"],
    fruits: {
        orange: {
            color: "orange"
        },
        apple: {
            color: "green"
        }
    }
}

// original way
// const name = raffy.name
// const age = raffy.age
// const bestFriends = raffy.bestFriends


// destructuring syntax
const { name, age, type, bestFriends } = raffy



const { fruits: { orange: { color } } } = raffy
















/********************** What about destructuring arrays?? **********************/
const cryptoCurrencies = ["bitcoin", "dash", "ethereum", "litecoin", "monero"]
const apples = ["green", "yellow", "purple", ["rainbow", "blue"]]



// original way

// const b1 = cryptoCurrencies[0]
// const dash = cryptoCurrencies[1]
// const eth = cryptoCurrencies[2]

// const nestedArr = apples[3]
// const rnb = apples[3][0]


// destructuring syntax

const [bc, , , , mno] = cryptoCurrencies

// const [g, y, p, nestedArr] = apples
const [g, y, p, [rb, bl]] = apples





























/********************** HTML Collections?? Node lists?? **********************/
const liTags = document.getElementsByTagName('li')
const pTags = document.querySelectorAll('p')

// original way

// const firstLi = liTags[0]
// const secondLi = liTags[1]
// const thirdLi = liTags[2]



// destructuring

const [first, second, third] = liTags



const [firstP, secondP, thirdP] = pTags



























/********************** Function Example #1 **********************/
function getMovieTitles() {
    return ["Rise of the Planet of the Apes", "Dawn of the Planet of the Apes", "War for the Planet of the Apes"]
}

// original way
// const arr = getMovieTitles()
// const ropa = arr[0]
// const dopa = arr[1]
// const wfpa = arr[2]


// destructuring syntax
const [ropa, dopa, wfpa] = getMovieTitles()



































/********************** Function Example #2 **********************/
// function shareContactInfo(empObj) {
//     // const name = empObj.name
//     // const position = empObj.position
//     // const cell = empObj.phones.cell
//     // const work = empObj.phones.work

//     return `${empObj.name} is an ${empObj.position} who can be reached by cell at 
//     ${empObj.phones.cell} or by landline at ${empObj.phones.work}`
// }

function shareContactInfo({ name: otherNameVariable, position = "Software Engineer", phones: { cell, work } }) {
    // const name = empObj.name
    // const position = empObj.position
    // const cell = empObj.phones.cell
    // const work = empObj.phones.work
    // console.log(name, position, phones)
    console.log(otherNameVariable)

    return `${otherNameVariable} is an ${position} who can be reached by cell at 
    ${cell} or by landline at ${work}`
}

const e1 = {
    name: "Michelle",
    position: "Instructor",
    phones: {
        cell: "555-987-6543",
        work: "555-345-6789"
    }
}

const e2 = {
    name: "Greg",
    job: "Instructor",
    phones: {
        cell: "555-987-3455",
        work: "555-345-6677"
    }
}
