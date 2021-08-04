const titleH1 = document.querySelector('h1#news-co')
const allCards = document.querySelectorAll('div.card')
const collectionDiv = document.querySelector('div#collection')
const toggleElement = document.querySelector('input#toggle-dark-mode')



/*********** FUNCTIONS ***********/
function removeAd() {
    const adCard = document.querySelector('.card.ad')
    adCard.remove()
}

/*********** EVENT LISTNERS ***********/
toggleElement.addEventListener('click', function () {
    document.body.classList.toggle('dark-mode')
})


/*********** APP INIT ***********/
removeAd()
Card.renderAllCards()

