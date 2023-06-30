<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Górkam</title>
    <script src="logo.js" defer></script>
</head>
<body>
    <nav>
        <ul class="nawigacja">
            <li id="logo"><a href="#"><img src="./inne/logo.png" alt="logo"></a></li>
            <li id="link1"><a href="index.html">Strona Główna</a></li>
            <li id="link2"><a href="oferta.html">Oferta</a></li>
            <li id="link3"><a href="ofirmie.html">O firmie</a></li>
            <li id="link4"><a href="galeria.html">Galeria</a></li>
            <li id="link5"><a href="kontakt.php">Kontakt</a></li>
        </ul>
    </nav>
   
    <main class="kontakt">
        <section class="lewa">
            <h1>Kontakt</h1>
            <h2>Zostaw Komentarz!</h2>
            <form action="wyslij.php" method="POST">
                <input type="text" name="imie" placeholder="Imię" required minlength="3" maxlength="50">
                <textarea cols="30" rows="10" placeholder="Wiadomość" name="text" maxlength="100" required></textarea>
                <input type="submit" value="Prześlij" name="sendme">
            </form>
            <section>
                <h2>Oceń nas:</h2>
                <div class="ocena">
                    <div data-ocena="1" class="ocenka">1</div>
                    <div data-ocena="2" class="ocenka">2</div>
                    <div data-ocena="3" class="ocenka">3</div>
                    <div data-ocena="4" class="ocenka">4</div>
                    <div data-ocena="5" class="ocenka">5</div>
                </div>
                <span id="adam">Średnia ocen: <span id="ewa">4.71</span></span>
            </section>
            <section class="komentarze">
                <h2>Komentarze:</h2>
                <?php include './laczenie.php'; 
                $wiadomosci = $laczenie->query("SELECT * FROM wiadomosci");

                while ($wiadomosc = $wiadomosci->fetch_array()) {
                    echo "<div class='komentarz'>";
                    echo "<h3>".$wiadomosc['imie']."</h3>";
                    echo "<p>".$wiadomosc['wiadomosc']."</p>";
                    echo "</div>";
                }
                ?>
            </section>
        </section>

        <section class="sekcjaMaina">
            <section class="prezes">
                <h2>Prezes firmy</h2>
                <img src="./inne/AIIMAGE.png" alt="aaa">
                <h3>Kopiekamien kilof-san</h3>
            </section>

            
            <section class="adres">
                <h2>Kontakt</h2>
                <p>Adres: ul. Przykładowa 123,<br> 00-000 Miasto</p>
                <p>Telefon:<br> +48 123 456 789</p>
                <p>Email:<br> info@firmakamieniarska.pl</p>
            </section>
            
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d156363.08795457892!2d20.85019643575821!3d52.240236751160914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471eca12513e7453%3A0x6a8838857bb9a211!2sKamieniarstwo%20-%20granitowe%20blaty%2C%20parapety%20z%20konglomeratu%20-%20Warszawa!5e0!3m2!1spl!2spl!4v1685592706346!5m2!1spl!2spl"  allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>
        
    </main>


    <footer>
        
        
        <section>
            <h3>Kontakt</h3>
            <p>Adres: ul. Przykładowa 123 00-000 Miasto</p>
            <p>Telefon: +48 123 456 789</p>
            <p>Email: info@firmakamieniarska.pl</p>
          </section>

          <section>
            <h3>Opinie klientów</h3>
            <p>"Profesjonalna firma, wykonali dla mnie przepiękny marmurowy blat kuchenny!" - Anna K.</p>
            <p>"Z czystym sumieniem polecam! Kamień naturalny w mojej łazience prezentuje się rewelacyjnie." - Piotr S.</p>
            <p>"Doskonała jakość, szybka realizacja zamówienia. Blaty kuchenne spełniły moje oczekiwania w 100%." - Marta T.</p>
          </section>

          <section>
            <h3>Górkam</h3>
            <p>Piękno i trwałość w kamieniu. </p>
        </section>
    </footer>
<script src="./srednia.js"></script>
</body>
</html>