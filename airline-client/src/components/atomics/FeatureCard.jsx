import styles from './css/FeatureCard.module.css'

function FeatureCard(cardTitle, cardDescription, stylesObject) {
    return (
        <>  
            <h3 className={styles.featureCardTitle}>{cardTitle}</h3>
            <p>{cardDescription}</p>
        </>
    )
}

export default FeatureCard;
