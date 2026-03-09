import { Link } from 'react-router-dom';
import styles from './css/Footer.module.css';
// import styles from '@/components/global/css/Footer.module.css';

import globalStyles from '@/assets/css/GlobalStyles.module.css';

function Footer() {
    return (
        <div className={styles.footerObject}>
            <div className={styles.hContainer}>

                {/* TODO: refactor to something global, or something */}
                <p className={[styles.hContainer, globalStyles.disclaimerBase].join(' ')}>
                    DISCLAIMER: AIR TRILLIUM IS A FICTIONAL AIRLINE. ANY RESEMBLANCE TO A REAL AIRLINE IS COINCIDENTAL.
                </p>
            </div>
            <div className={styles.hContainer}>
                <div className={styles.vContainer}>
                    <p>{new Date().getFullYear()} © Air Trillium. All rights reserved.</p>
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