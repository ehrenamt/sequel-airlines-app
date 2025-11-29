import React, { useState, useEffect } from 'react';
import styles from './css/TripView.module.css'

function TripViewMain() {

    const apiUrlTripInfoEndpoint = import.meta.env.VITE_GRAPHQL_API_URL_TRIP_INFO_ENDPOINT;

    // Before the API request completes,
    // there are a few miliseconds where the layout renders without the correct data.
    // This hampers the user experience.
    // To fix this, we need to provide default data such that
    // the layout does not drastically change when displaying the correct data.
    const defaultTrip = {
            flightNumber: 'NaN', originAirport: 'This is a test value', destinationAirport: 'Please ignore', aircraftModel: 'TESTMOD',
            departureTimeScheduled: '08:00', arrivalTimeScheduled: '10:00', status: 'TESTING',
        };

    // cleaner than a for-loop
    const defaultTrips = Array(12).fill(defaultTrip);

    const [trips, setTrips] = useState([]);
    const [error, setError] = useState(null);
    const [isLoading, setIsLoading] = useState(true);

    useEffect(() => {
    const fetchTrips = async () => {
        try {
            const response = await fetch(apiUrlTripInfoEndpoint);

        if (!response.ok) {
            throw new Error('Response returned not ok.');
        }

        const jsonData = await response.json();

        // reset the trips.
        // I have ZERO clue why using settrips with the new JSON data
        // does not clear the test values from the array.
        // It is so completely, entirely, wholly unintuitive.
        // But that's how it is.
        // setTrips([]);

        // Do yourself a favour, and forgo this madness.

        setTrips(jsonData.getTripInformation);

        } catch (error) {
            setError(error);
        } finally {
            setIsLoading(false);
        }
    };

    fetchTrips();

    const intervalId = setInterval(fetchTrips, 9000);

    return () => clearInterval(intervalId);
    }, []);

    // Placeholder, we have some other ideas for loading values
    if ((isLoading && trips.length === 0)) return <p>Loading...</p>;
    // if (error) return <p>Error: {error.message}</p>;

    const getStatusColor = (status) => {
        switch (status) {
            case 'LANDED':
                return { color: 'rgb(130, 255, 153)' };
            case 'CANCELED':
                return { color: 'rgba(255, 101, 101, 1)' };
            case 'DELAYED':
                return { color: 'rgba(255, 101, 101, 1)' };
            default:
                return { color: 'rgb(255, 178, 62)' };
        }
    };

    console.log(trips)

    // TODO revert on unmount
    // document.title = "Trip Information";

    return (
        <>  
            <div className={styles.darkoverlay}></div>
            <div className={styles.overlay}></div>
            <div className={styles.tableViewObject}>
                <h1 className={styles.tableHeaderTitle}>Live Trip Information - Arrivals and Departures</h1>
                <div className={styles.columnHeader}>
                    <p className={styles.columnHeaderItemNarrowObject}>Flight #</p>
                    <p className={styles.columnHeaderItemLongObject}>From</p>
                    <p className={styles.columnHeaderItemLongObject}>To</p>
                    <p className={styles.columnHeaderItemStandardObject}>Aircraft</p>
                    <p className={styles.columnHeaderItemNarrowObject}>Departure</p>
                    <p className={styles.columnHeaderItemNarrowObject}>Arrival</p>
                    <p className={styles.columnHeaderItemNarrowObject}>Status</p>
                </div>
                <div className={styles.columnHeader}>
                    <p className={styles.columnHeaderItemNarrowObject}>Vol #</p>
                    <p className={styles.columnHeaderItemLongObject}>De</p>
                    <p className={styles.columnHeaderItemLongObject}>À</p>
                    <p className={styles.columnHeaderItemStandardObject}>Avion</p>
                    <p className={styles.columnHeaderItemNarrowObject}>Départ</p>
                    <p className={styles.columnHeaderItemNarrowObject}>Arrivée</p>
                    <p className={styles.columnHeaderItemNarrowObject}>État</p>
                </div>
                <ul>
                {trips.map(trip => (
                    <li className={styles.tripRow} key={trip.flightNumber}>
                        <p className={styles.tripRowNarrowField}>{trip.flightNumber}</p>
                        <p className={styles.tripRowLongField}>{trip.originAirport}</p>
                        <p className={styles.tripRowLongField}>{trip.destinationAirport}</p>
                        <p className={styles.tripRowStandardField} data-aircraft={`Aircraft: ${trip.aircraftModel}, Flight Number: ${trip.flightNumber}`}>{trip.aircraftModel}</p>
                        <p className={styles.tripRowNarrowField}>{trip.departureTimeScheduled}</p>
                        <p className={styles.tripRowNarrowField}>{trip.arrivalTimeScheduled}</p>
                        <p className={styles.tripRowNarrowField} style={getStatusColor(trip.status)}>{trip.status}</p>
                    </li>
                ))}
                </ul>
            </div>
        </>
    )
}

export default TripViewMain;