var myVariable = 5;
var text = prompt("Entrez votre prénom :");

alert("Hello World! "+ text);
alert(typeof myVariable + " " + typeof text); 

var first, second, result;

first = prompt("premier chiffre: ");
second =  prompt ("second chiffre: ");

result = parseInt(first) + parseInt(second);

alert(result);

if (confirm('Voulez vous exécuter le code Javascript de cette page ?')){
    alert('OK le code javascript sera executé!!')
}; // affiche une popup permettant de choisir oui ou non. si oui la condition est executée.

var startMessage = 'votre categorie : ', endmessage, adult = confirm('Etes vous majeur?');

/*if (adult){endmessage = '18+';
} else {
    endmessage = '-18';
}

alert(startMessage + endmessage);
*/

/* version ternaire du code ci-dessus*/
startMessage = adult ? '18+': '-18'; // IMPORTANT!!!!!
alert(startMessage + endmessage);

/*super compressé!*/
alert('Votre catégorie : ' + (confirm('Etes vous majeur ?') ? '18+' : '-18'));

/* une variable est true meme si c est une chaine de caractere ou un entier et sera false si nombre=0 ou undefined*/
var condition1 = '', condition2 = 'Une chaîne de caractère';
alert(condition1 || condition2);

/* exemple ternaire 2*/ 
var result1, number1 = 42;
result1 = (number > 10) ? 'Plus grand que 10' : 'Plus petit que 10';
alert(result1);

/*
* pour incrementer une valeur on peut faire number++ mais aussi ++number
* var input = 


*/



