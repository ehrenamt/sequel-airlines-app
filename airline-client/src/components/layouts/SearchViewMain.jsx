/* SearchViewMain.jsx */

/*
Homepage of the web application.
Provides search functionality to users via SearchInput and Searchoutput 
components.
*/

import { lazy, useState } from 'react';
import styles from './css/SearchViewMain.module.css';
import Hnav from '../global/Hnav';
import Feature from '../composites/searchview/Feature';
import Footer from '../global/Footer';
import SearchInput from '../composites/searchview/SearchInput';

const SearchOutput = lazy(() => import('../composites/searchview/SearchOutput'));

function SearchViewMain() {

    const [flightSearchResponseData, setFlightSearchResponseData] = useState([]);
    const [searchSubmitted, setSearchSubmitted] = useState(false);
    // TODO: Add a use useDeferredValue(searchrespone...);

    return (
        <div className={styles.searchViewObject}>
            <Hnav></Hnav>
            <div className={styles.searchViewHeaderGroup}>
                <h1>Flying to Europe or Asia for the holidays?</h1>
                <h2>With the largest fleet and flight network in the world, Sequel Airlines will take you there!</h2>
            </div>
            <SearchInput 
                setSearchResponseData={setFlightSearchResponseData}
                setSearchSubmitted={setSearchSubmitted}
            />
            <SearchOutput 
                responseData={flightSearchResponseData}
                searchSubmitted={searchSubmitted}
            />
            <Feature></Feature>
            <Footer></Footer>
        </div>
    )
}

export default SearchViewMain;