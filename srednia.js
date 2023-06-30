const oceny = document.querySelectorAll(".ocenka")

const ewa = document.querySelector("#ewa")

const ocenki = JSON.parse(localStorage.getItem("tablica")) ?? [4,7,1,4,6]

let average = ocenki.reduce((a, b) => a + b, 0) / ocenki.length;
ewa.innerHTML = average.toFixed(2);;

for (const ocena of oceny) {
    ocena.addEventListener("click", (e)=>{
        console.log("asdsa");
        ocenki.push(Number(e.target.dataset.ocena))
        average = ocenki.reduce((a, b) => a + b, 0) / ocenki.length;
        ewa.innerHTML = average.toFixed(2);
        localStorage.setItem("tablica", JSON.stringify(ocenki))
    })
}