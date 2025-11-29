import { Link } from 'react-router-dom';
import styles from './css/Footer.module.css'


function Footer() {
    return (
        <div className={styles.footerObject}>
            <div className={styles.hContainer}>
                <div className={styles.vContainer}>
                    <p>{new Date().getFullYear()} © Sequel Airlines. All rights reserved.</p>
                </div>
                <div className={styles.vContainer}>
                     <Link to="/contact" class={styles.footerLink}>Contact</Link>
                     <Link to="/projectdocs" class={styles.footerLink}>Guide</Link>
                </div>
            </div>
        </div>
    )
}

export default Footer;