/* SearchInput.jsx */

/*
Component for receiving flight search input and quering the API.
*/

import { constructSearchRequestString } from '../../../utils/searchUtils';

import styles from './css/SearchInput.module.css'

function SearchInput({setSearchResponseData, setSearchSubmitted}) {

    const submitFunction = async (event) => {

        // a bit clunky, and not vey scalable.
        // Before adding new features, I should refactor this

        event.preventDefault();
        const apiUrlFlightInfoBaseEndpoint = import.meta.env.VITE_GRAPHQL_API_URL_FLIGHT_INFO_BASE_ENDPOINT;

        const formData = {
            date: document.getElementById('search-input-date').value,
            destination: document.getElementById('search-input-destination-airport').value,
            origin: document.getElementById('search-input-origin-airport').value
        };

        console.debug(JSON.stringify(formData));

        const searchURLString = constructSearchRequestString(apiUrlFlightInfoBaseEndpoint, formData);

        console.debug(`Search URL constructed: ${searchURLString}`)

        let jsonData = {};

        try {

            // const response = await fetch(apiUrlFlightInfoBaseEndpoint);
            const response = await fetch(searchURLString);

            if (!response.ok) {
                throw new Error('Response returned not ok.');
            }

            jsonData = await response.json();

            if (Object.keys(jsonData.getFlights).length === 0) {
                console.info(`Backend query for flights successful, but no matching flights found.`);
                return;
            }

        } catch (error) {
            console.error(error);
            jsonData = {
                getFlights:
                    [{
                        flightNumber: "FakeFlight1234",
                        originIcao: "YYZ",
                        destinationIcao: "EWR",
                    }]
                }

        } finally {
            setSearchSubmitted(true);

            // Somehow this feels so inelegant.
            setSearchResponseData(jsonData.getFlights);
        }
    }

    return (
        <div className={styles.searchInputObject}>
            <h3 className={styles.searchViewHeader}>Use our flexible search features below!</h3>
            <div className={styles.searchFormWrapper}>

                <form className={styles.searchForm} onSubmit={submitFunction}>
                    <div className={styles.searchFormVerticalGroup}>
                        <p className={styles.inputLabel}>From</p>
                        <input 
                            className={styles.inputTag} type="text" id="search-input-origin-airport" name="search-input-origin-airport"
                        />
                    </div>
                    <div className={styles.searchFormVerticalGroup}>
                        <p className={styles.inputLabel}>To</p>
                        <input className={styles.inputTag} type="text" id="search-input-destination-airport" name="search-input-destination-airport" 
                        />
                    </div>
                    <div className={styles.searchFormVerticalGroup}>
                        <p className={styles.inputLabel}>Date</p>
                        <input className={styles.inputTag} type="date" id="search-input-date"
                        />
                    </div>
                    <div className={styles.searchFormVerticalGroup}>
                        <p className={styles.inputLabel}>Passengers</p>
                        <input className={styles.inputTag} type="number" min="1" required
                        />
                    </div>
                    <input className={styles.submitButton} type="submit" value="Submit" />
                </form>
                
            </div>
        </div>
    )
}

export default SearchInput;
