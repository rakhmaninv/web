
function Greeting() {
    let userConfirmation = false;
    let userName;
    while (!userConfirmation) {
        userName = prompt('Enter your name');
        userConfirmation = confirm(`Confirm your name: ${userName}`);
    }
    console.log(`Hello ${userName}!`);
    return userName;
}

function DisplayInfo() {
    document.getElementById("name").innerHTML = Greeting();
}

