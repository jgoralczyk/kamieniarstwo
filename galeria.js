const zdjecia = document.querySelectorAll(".zdjecie")
const kontener = document.querySelector(".zdjecia")
const okienko = document.querySelector(".okienko")
const przycisk = document.querySelector("#zamknij")

zdjecia.forEach(zdjecie => {
    zdjecie.addEventListener("click", () => {
        console.log(zdjecie);
        kontener.classList.add("pokaz");
        okienko.src = zdjecie.src
    });
});

przycisk.addEventListener("click", () => kontener.classList.remove("pokaz"))