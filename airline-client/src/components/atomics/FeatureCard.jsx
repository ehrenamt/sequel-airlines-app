import styles from './css/FeatureCard.module.css'

function FeatureCard({cardTitle, cardDescription, stylesObject}) {
    // the styles object should be optional
    // to be used when want to apply custom styles
    return (
        <div className={styles.featureCardObject}>  
            <h3 className={styles.featureCardTitle}>{cardTitle}</h3>
            <p className={styles.featureCardDescription}>{cardDescription}</p>
        </div>
    )
};

export default FeatureCard;
