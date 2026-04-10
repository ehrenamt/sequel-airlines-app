import styles from './css/UserLoginForm.module.css';

import { userAuthenticationRequest } from '@/utils/userUtils';

function UserLoginForm() {

    const userAuthentication = (event) => {
        event.preventDefault();

        console.log('Sign in button clicked!')

        const uname = document.getElementById('ipvx').value;
        const pwd = document.getElementById('ipvd').value;


        userAuthenticationRequest(uname, pwd);

        // make request, with hashed values
        // compare in DB with hashed values
        // if authed, then make a session cookie, store in Redis

    }

    return (
        <>
            <form className={styles.userLoginFormObject} onSubmit={userAuthentication}>
                    {/* <label for="input-user-login-password">Username</label> */}
                    <input className={styles.textInput} type="text" id="ipvx" placeholder='Username or email'/>
                    <label for="input-user-login-password">Password</label>
                    <input className={styles.textInput} type="text" id="ipvd" placeholder='Password'/>
                    <button className={styles.signInButton} type="submit">Sign In</button>
            </form>
            {/* <Footer></Footer> */}
        </>
    )
};

export default UserLoginForm;