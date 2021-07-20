const articlesArray = [
    {
        id: 100,
        title: "Local Boy Unmutes Himself",
        author: "Tim Wit",
        description: "In a stunning turn of events, a very competent programmer remembers to press the 'unmute' button before speaking on Zoom.",
        image: "https://images.idgesg.net/images/article/2020/07/zoom-for-home-100852180-large.jpg",
        likes: 6
    },
    {
        id: 2,
        title: "Fluff Daddy",
        author: "F. Diddy",
        description: "Breaking: Puff Daddy changes his name yet again, this time to help promote his line of extremely fluffy coats",
        image: "https://i.redd.it/l0uj355oxv341.jpg",
        likes: 50
    },
    {
        id: 3,
        title: "Earth Spinning",
        author: "Bark Twain",
        description: "Recent studies have led scientists to believe that the Earth is spinning round as we speak.",
        image: "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
        likes: 50
    },
    {
        id: 4,
        title: "Raffy so cute",
        author: "Mr. Rafferty",
        description: "Raffy continues to be a fluffy boy.",
        image: "images/raffy.jpg",
        likes: 27
    },
    {
        id: 5,
        title: "Free Ice Cream",
        author: "Sherbert Coné",
        description: "In determination to increase global happiness, the University is planning their ice cream for all intiative on campus tomorrow at noon. Every day from 9:00 AM to Midnight, Yalies will be able to pick up as much free ice cream as they desire from now until forever more.",
        image: "https://ydn-wpengine.netdna-ssl.com/wp-content/uploads/2020/03/dining_anh_-Lucas-Holter.jpg",
        likes: 9000
    },
    {
        id: 6,
        title: "Toy Story AirBnB",
        author: "Anon",
        description: "One of childhood's most adored movies is coming to life in this Toy Story themed AirBnB in Texas.",
        image: "https://s.hdnux.com/photos/01/20/77/36/21231538/3/900x0.jpg",
        likes: 586
    }
]



const titleH1 = document.querySelector('h1#news-co')
const allCards = document.querySelectorAll('div.card')


// UPDATE Deliverable 1

// target the element of interest
const firstCardImg = document.querySelector('[data-id="1"] img')

// update the property want. Bam!
firstCardImg.src = "/Users/michelle/Desktop/my-cohorts/yale-web-060721/21-dom-manipulation/newsApp/images/raffy.jpg"

// console.dir(firstCardImg)


// UPDATE Deliverable 2
titleH1.style.color = "peru"


// DELETE 
// find the element we want to delete
const adCard = document.querySelector('.card.ad')
adCard.remove()

// console.log(adCard)



// artisanal approach

// function createOneCard(articleObject) {
//     const outerDiv = document.createElement('div')
//     outerDiv.classList.add('card')
//     outerDiv.dataset.id = articleObject.id

//     const imgContainerDiv = document.createElement('div')
//     imgContainerDiv.classList.add('img-container')

//     const contentDiv = document.createElement('div')
//     contentDiv.classList.add('content')

//     outerDiv.append(imgContainerDiv, contentDiv)

//     const img = document.createElement('img')
//     img.src = articleObject.image
//     img.alt = articleObject.title

//     const articleTitleDiv = document.createElement('div')
//     articleTitleDiv.classList.add('article-title-container')

//     imgContainerDiv.append(img, articleTitleDiv)


//     const h4 = document.createElement('h4')
//     h4.textContent = articleObject.title

//     articleTitleDiv.append(h4)

//     const authorPTag = document.createElement('p')
//     authorPTag.classList.add('author')
//     authorPTag.textContent = `Author: ${articleObject.author}`


//     const scrollDiv = document.createElement('div')
//     scrollDiv.classList.add('scroll')


//     const likesDisplayPTag = document.createElement('p')
//     likesDisplayPTag.classList.add('react-count')
//     likesDisplayPTag.textContent = `${articleObject.likes} Likes`

//     const likeButton = document.createElement('button')
//     likeButton.classList.add('like-button')
//     likeButton.textContent = `♥️ Like`

//     contentDiv.append(authorPTag, scrollDiv, likesDisplayPTag, likeButton)


//     const articlePTag = document.createElement('p')
//     articlePTag.classList.add('description')
//     articlePTag.textContent = articleObject.description

//     scrollDiv.append(articlePTag)

//     // slap it on the DOM!
//     const collectionDiv = document.querySelector('div#collection')
//     collectionDiv.append(outerDiv)


//     // collectionDiv.insertAdjacentElement('beforebegin', outerCardDiv)
// }


// innerHTML approach

// function createOneCard(articleObject) {
//     const collectionDiv = document.querySelector("div#collection")

//     collectionDiv.innerHTML += `
//     <div class="card" data-id="${articleObject.id}">
//                 <div class="img-container">
//                     <img src="${articleObject.image}"
//                         alt="${articleObject.title}" />
//                     <div class="article-title-container">
//                         <h4>${articleObject.title}</h4>
//                     </div>
//                 </div>
//                 <div class="content">
//                     <p class='author'>Author: ${articleObject.author}</p>
//                     <div class="scroll">
//                         <p class='description'>${articleObject.description}</p>
//                     </div>
//                     <p class="react-count">${articleObject.likes} likes</p>
//                     <button class="like-button">♥️ Like</button>
//                 </div>
//             </div>`
// }


// combo approach
function createOneCard(articleObject) {
    const outerDiv = document.createElement('div')
    outerDiv.classList.add('card')
    outerDiv.dataset.id = articleObject.id

    outerDiv.innerHTML = `
                <div class="img-container">
                    <img src="${articleObject.image}"
                        alt="${articleObject.title}" />
                    <div class="article-title-container">
                        <h4>${articleObject.title}</h4>
                    </div>
                </div>
                <div class="content">
                    <p class='author'>Author: ${articleObject.author}</p>
                    <div class="scroll">
                        <p class='description'>${articleObject.description}</p>
                    </div>
                    <p class="react-count">${articleObject.likes} likes</p>
                    <button class="like-button">♥️ Like</button>
                `

    const collectionDiv = document.querySelector("div#collection")
    collectionDiv.append(outerDiv)
}



articlesArray.forEach(function (articleObj) {
    createOneCard(articleObj)
})

