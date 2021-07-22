const titleH1 = document.querySelector('h1#news-co')
const allCards = document.querySelectorAll('div.card')



function updateFirstCardPic() {
    // target the element of interest
    const firstCardImg = document.querySelector('[data-id="1"] img')
    // update the property want. Bam!
    firstCardImg.src = "/Users/michelle/Desktop/my-cohorts/yale-web-060721/21-dom-manipulation/newsApp/images/raffy.jpg"
}


function removeAd() {
    // DELETE 
    // find the element we want to delete
    const adCard = document.querySelector('.card.ad')
    adCard.remove()

}

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
                    <button class='delete-button'>X</button>
                </div>
                `

    const collectionDiv = document.querySelector("div#collection")
    collectionDiv.append(outerDiv)
}



function renderAllCards() {
    articlesArray.forEach(function (articleObj) {
        createOneCard(articleObj)
    })
}

// 1. target element we want to add event listener to
const toggleElement = document.querySelector('input#toggle-dark-mode')

// 2. add event listener - argument #1 is the type of event, argument #2 is the callback function that will be invoked
// when the event occurs on the element
toggleElement.addEventListener('click', function () {
    console.log('clicked!!')
    // DOM MANIPULATION TIME!
    // if (!document.body.classList.contains('dark-mode')) {
    //     document.body.classList.add('dark-mode')
    // }
    // else {
    //     document.body.classList.remove('dark-mode')
    // }
    document.body.classList.toggle('dark-mode')
})





const form = document.querySelector('form#article-form')

form.addEventListener('submit', function (event) {
    event.preventDefault() // ALWAYS NEED THIS FOR FORM SUBMIT EVENTS

    // get the user input
    const titleInput = event.target[0].value // event.target.title.value // document.querySelector('#article-form input').value
    const authorInput = event.target[1].value // event.target.author.value
    const descriptionInput = event.target[2].value // event.target.description.value
    const imageInput = event.target[3].value // event.target.url.value

    // DOM MANIPULATION - add new article card to page using user input
    const newId = articlesArray[articlesArray.length - 1].id + 1

    const articleObject = {
        title: titleInput,
        author: authorInput,
        description: descriptionInput,
        image: imageInput,
        likes: 0,
        id: newId
    }

    articlesArray.push(articleObject)

    createOneCard(articleObject)
    form.reset()

})





removeAd()
renderAllCards()