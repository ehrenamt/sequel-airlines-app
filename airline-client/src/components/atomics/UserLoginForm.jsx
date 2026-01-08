import styles from './css/UserLoginForm.module.css';

function UserLoginForm() {

    const userAuthenticationRequest = (event) => {
        event.preventDefault();

    }

    return (
        <form class={styles.userLoginFormObject}>
            <input type="text" id="input-user-login-username-email"/>
            <label for="input-user-login-password">To</label>
            <input type="text" id="input-user-login-password"/>
            <button type="submit" >Sign In</button>
        </form>
    )
};

export default UserLoginForm;