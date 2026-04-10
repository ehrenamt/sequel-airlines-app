/* userUtils.js */

/*
Functions related to the authentication, sessions, and data pertaining to
users.
*/

export function userAuthenticationRequest(username, password) {

    // try {

    fetch("http://127.0.0.1:8000/users/login", {
        method: "POST",
        body: JSON.stringify({
            hashed_username: username,
            hashed_password: password,
        }),
        headers: {
            "Content-type": "application/json; charset=UTF-8"
        }
    })
        .then((response) => response.json())
        .then((json) => console.log(`users/login endpoint returned the following: ${JSON.stringify(json)}`));
    // }

};
