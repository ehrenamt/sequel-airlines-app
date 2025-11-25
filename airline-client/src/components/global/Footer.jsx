import styles from '../../css/Footer.module.css'


function Footer() {
    return (
        <>
            <div className={styles.footerObject}>
                <div className={styles.hContainer}>
                    <div className={styles.vContainer}>
                        <p>{new Date().getFullYear()} © Sequel Airlines. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Footer;