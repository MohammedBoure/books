function validerFormulaire() {
    // Récupération des valeurs des champs
    var login = document.getElementById("login").value.trim();
    var mdp = document.getElementById("mdp").value.trim();
    var email = document.getElementById("email").value.trim();
    var telephone = document.getElementById("telephone").value.replace(/[() -]/g, ""); // Élimine espaces, parenthèses et tirets
    var address = document.getElementById("address").value.trim();
    var code_postal = document.getElementById("code_postal").value.trim();
    var ville = document.getElementById("ville").value.trim();

    // Validation du champ Login
    if (login === "" ) {
        alert("make sure to fill in the login field");
        return false;
    }
    const t=/^[a-zA-Z0-9_]{5,15}$/;
    if(!t.test(login)){
      alert("the login field must contain between 5 and 15 alphanumeric characters or '_'.");
      return false;
    }


    // Validation du champ Mot de passe
    if (mdp === "" ) {
      alert("make sure to fill in the password field");
        return false;
    }
    const tt=/^[a-zA-Z0-9]{8,15}$/;
    if(!tt.test(mdp)){
      alert("the password field must contain between 8 and 15 alphanumeric characters.");
      return false;
    }

    // Validation du champ Email
    if (email === "" ) {
      alert("make sure to fill in the email field");
        return false;
    }
    const tt1=/^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if(!tt1.test(email)){
      alert("write your email correctly please");
      return false;
    }

    // Validation du champ Téléphone
    if (telephone === "" ) {
      alert("make sure to fill in the phone field");
        return false;
    }
    if ( isNaN(telephone) || telephone.length !== 10) {
        alert("Please enter a valid 10-digit phone number.");
        return false;
    }

    // Validation du champ Adresse
    if (address === "") {
        alert("make sure to fill in the address field");
        return false;
    }

    // Validation du champ Code Postal
    if (code_postal === "") {
        alert("make sure to fill in the postal code field");
        return false;
    }
    if (isNaN(code_postal) || code_postal.length !== 5) {
        alert("Please enter a valid 5-digit postal code.");
        return false;
    }

    // Validation du champ Ville
    if (ville === "") {
      alert("make sure to fill in the postal code field");
      return false;
    }
    const h=/^[a-zA-Z]+$/;
    if (!h.test(ville)) {
        alert("The City field must only contain letters.");
        return false;
    }

    return true; // Le formulaire est valide
}
