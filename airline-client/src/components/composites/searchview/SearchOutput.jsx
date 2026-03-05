/* SearchOutput.jsx */

/*
Component for receiving and displaying the results from flight search queries.
*/

import { Suspense } from 'react';
import FlightCard from '../../atomics/FlightCard';
import styles from './css/SearchOutput.module.css'

function SearchOutput({responseData, searchSubmitted}) {

    console.debug(`Searchoutput logging received: ${JSON.stringify(responseData)}`);

    const InfoMessageDiv = () => {
        if (searchSubmitted) {
            return (
                <Suspense fallback={<div className={styles.searchResultInfoMessage}>SSearching for flights...</div>}>
                    <div className={styles.searchResultInfoMessage}>
                        {(Object.keys(responseData).length === 0) ? 
                        "No flights matching your search params." : `We found ${Object.keys(responseData).length} flight(s) matching your search criteria.`}
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