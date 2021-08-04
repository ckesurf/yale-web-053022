const titleH1 = document.querySelector('h1#news-co')
const allCards = document.querySelectorAll('div.card')
const collectionDiv = document.querySelector('div#collection')
const toggleElement = document.querySelector('input#toggle-dark-mode')



/*********** FUNCTIONS ***********/
function removeAd() {
    const adCard = document.querySelector('.card.ad')
    adCard.remove()

}


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
                    <p class="react-count"><span>${articleObject.likes}</span> likes</p>
                    <button class="like-button">♥️ Like</button>
                    <button class='delete-button'>X</button>
                </div>
                `

    const collectionDiv = document.querySelector("div#collection")
    collectionDiv.append(outerDiv)
}


function renderAllCards() {

    fetch('http://localhost:3000/articles')
        .then(r => r.json())
        .then(articlesArray => {
            articlesArray.forEach(articleObj => {
                createOneCard(articleObj)
            })
        })
}



/*********** EVENT LISTNERS ***********/
toggleElement.addEventListener('click', function () {
    document.body.classList.toggle('dark-mode')
})


collectionDiv.addEventListener('click', (event) => {

    if (event.target.classList.contains('delete-button')) {
        let card = event.target.closest('div.card')

        fetch(`http://localhost:3000/articles/${card.dataset.id}`, {
            method: 'DELETE'
        })
            .then(r => r.json())
            .then(() => {
                card.remove()
            })
    }
    else if (event.target.matches('button.like-button')) {
        let card = event.target.closest('div.card')
        let likesNumSpan = card.querySelector('p.react-count span')
        const currLikes = parseInt(likesNumSpan.textContent)
        const newLikes = currLikes + 1


        fetch(`http://localhost:3000/articles/${card.dataset.id}`, {
            method: 'PATCH',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ likes: newLikes })
        })
            .then(r => r.json())
            .then(updatedArticleObj => {
                likesNumSpan.textContent = updatedArticleObj.likes
            })
    }
})



/*********** APP INIT ***********/
removeAd()
renderAllCards()
