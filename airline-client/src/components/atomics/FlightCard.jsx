import styles from './css/FlightCard.module.css'

function FlightCard({flightNumberString, originIcaoString, originAirportString, destinationIcaoString, destinationAirportString, acTypeString, departureTimeString, arrivalTimeString}) {
    return (
        <div className={styles.flightCardObject}>
                <p className={`${styles.flightNumberString} ${styles.REM2}`}>{flightNumberString}</p>
                <p className={`${styles.aptIcaoString} ${styles.REM2}`}>{departureTimeString} {originIcaoString}</p>
                <p className={styles.lineGraphic}>&gt;&gt; ——— &gt; ——— &gt;&gt;</p>
                <p className={`${styles.aptIcaoString} ${styles.REM2}`}>{arrivalTimeString} {destinationIcaoString}</p>
                <p className={styles.aptFullString}>{originAirportString}</p>
                <p className={`${styles.stopInformationString}`}>0 stops</p>
                
                <p className={styles.aptFullString}>{destinationAirportString}</p>
                <p className={styles.acTypeBackground}></p>
                <p className={styles.aircraftTypeInfoString}>The aircraft for this flight is a {acTypeString} or a similar aircraft.</p>
        </div>
    )
}

export default FlightCard;
