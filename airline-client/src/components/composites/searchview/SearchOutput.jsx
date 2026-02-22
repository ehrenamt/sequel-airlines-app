import styles from './css/SearchOutput.module.css'

import FlightCard from '../../atomics/FlightCard';

function SearchOutput({responseData, searchSubmitted}) {

    console.log(`Searchoutput logging received: ${JSON.stringify(responseData)}`);

    const InfoMessageDiv = () => {
        if (searchSubmitted) {
            return (
                <div className={styles.searchResultInfoMessage}>
                    {(Object.keys(responseData).length === 0) ? 
                    "No flights matching your search params." : `We found ${Object.keys(responseData).length} flight(s) matching your search criteria.`}
                </div>
            )
        }

        return null;
    }

    return (
        <div className={styles.searchOutputObject}>
            <InfoMessageDiv />
            {responseData.map(flight => (
                <li className={styles.flightInformationObject}>
                    <FlightCard 
                        flightNumberString={flight.flightNumber}
                        originIcaoString={flight.originIcao}
                        originAirportString="Toronto Pearson International Airport"
                        destinationIcaoString={flight.destinationIcao}
                        destinationAirportString="Newark Liberty International AIrport"
                        acTypeString="Boeing 787-9"
                        departureTimeString="00:00"
                        arrivalTimeString="00:00"
                    />
                </li>
            ))}
        </div>
    )
};

export default SearchOutput;