import FeatureCard from '@/components/atomics/FeatureCard';
import styles from './css/FeatureGroup.module.css'


function FeatureGroup({splitLayout, title}) {

    console.debug(splitLayout);

    return (
        <div className={styles.featureObject}>
            <h2>{ title ? title : ""}</h2>
            <div className={styles.featureCardContainer}>
                <div className={splitLayout === "84" ? styles.featureCardContainer84Left : styles.featureCardContainer48Left}>
                    <FeatureCard 
                        cardTitle="Best-In-Class Legroom"
                        cardDescription="Our economy and business class seats have the largest legroom, allowing you to travel in greater comfort than other airlines."
                    />
                </div>
                <div className={splitLayout === "84" ? styles.featureCardContainer84Right : styles.featureCardContainer48Right}>
                    <FeatureCard 
                        cardTitle="Feature2"
                        cardDescription="This is the description for the "
                    />
                </div>

            </div>
        </div>
    )
};

export default FeatureGroup;