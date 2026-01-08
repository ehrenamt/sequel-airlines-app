/* Local styling imports */
import styles from './css/UserLogin.module.css'

/* Project imports, alphanumerical order */
import Hnav from '../global/Hnav';
import UserLoginForm from "../atomics/UserLoginForm";


function UserLogin() {
    return (
        <div class={styles.userLoginObject}>
            <Hnav></Hnav>
            <UserLoginForm/>
        </div>
    )
}

export default UserLogin;