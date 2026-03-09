/* SearchOutput.jsx */

/*
Component for receiving and displaying the results from flight search queries.
*/

import { Suspense } from 'react';
import FlightCard from '@/components/atomics/FlightCard';
import styles from './css/SearchOutput.module.css'

function SearchOutput({responseData, searchSubmitted}) {


    if (searchSubmitted) {
        console.debug(`Search output received responseData: ${JSON.stringify(responseData)}`);
    }

    const InfoMessageDiv = () => {
        if (searchSubmitted) {
            return (
                <Suspense fallback={<div className={styles.searchResultInfoMessage}>Searching for flights...</div>}>
                    <div className={styles.searchResultInfoMessage}>
                        {(Object.keys(responseData).length === 0) ? 
                        "We found no flights that match your search criteria. Try searching on different dates, or from different airports." : `We found ${Object.keys(responseData).length} flight(s) matching your search criteria.`}
                    </div>
                </Suspense>
        )};

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
                            originAirportString={flight.originAirportName}
                            destinationIcaoString={flight.destinationIcao}
                            destinationAirportString={flight.destinationAirportName}
                            acTypeString="Boeing 787-9"
                            departureTimeString={flight.departureTimeScheduled}
                            arrivalTimeString={flight.arrivalTimeScheduled}
                        />
                    </li>
                ))}
        </div>
    )
};

export default SearchOutput;