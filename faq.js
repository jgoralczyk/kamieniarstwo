const divs = document.querySelector(".faq").querySelectorAll("div");
divs.forEach((div, index) => {
   
    if (index % 2 == 0) {
        div.addEventListener("click", (e)=> {
            divs[index + 1].classList.toggle("hide");
        })
    }
    
})