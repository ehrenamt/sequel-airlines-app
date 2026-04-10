import styles from './css/FlightCard.module.css'

import textStyles from '@/assets/css/SharedTextProperties.module.css';
import spanStyles from '@/assets/css/SpanProperties.module.css';


function FlightCard({flightNumberString, originIcaoString, originAirportString, destinationIcaoString, destinationAirportString, acTypeString, departureTimeString, arrivalTimeString}) {
    return (
        <div className={styles.flightCardObject}>
                <p className={`${styles.flightNumberString} ${styles.REM2}`}>{flightNumberString}</p>
                <p className={`${styles.aptIcaoString} ${styles.REM2}`}>{departureTimeString} {originIcaoString}</p>
                <p className={`${styles.lineGraphic} ${textStyles.justifyCenter}`}>&gt;&gt;&gt;&gt;</p>
                <p className={`${styles.aptIcaoString} ${styles.REM2}`}>{arrivalTimeString} {destinationIcaoString}</p>
                <div className={styles.priceDisplay}>
                    <p>Prices starting at</p>
                    <p className={`${spanStyles.positiveA1}`}>$399</p>
                    <button className={`${styles.bookFlightButton}`}>Booking Details</button>
                </div>
                <p className={`${styles.aptFullString}`}>{originAirportString}</p>
                <p className={`${styles.stopInformationString}`}>0 stops</p>
                <p className={`${styles.aptFullString}  ${textStyles.justifyEnd}`}>{destinationAirportString}</p>
                <p className={styles.acTypeBackground}></p>
                {/* <img src='../../assets/img/878_profile.png'></img> */}
                <p className={`${styles.aircraftTypeInfoString}`}>The aircraft for this flight is a {acTypeString} or a similar aircraft.</p>
        </div>
    )
}

export default FlightCard;
