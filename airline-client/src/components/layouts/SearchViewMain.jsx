/* SearchViewMain.jsx */

/*
Homepage of the web application.
Provides search functionality to users via SearchInput and Searchoutput 
components.
*/

import { lazy, useState } from 'react';
import styles from './css/SearchViewMain.module.css';
import Hnav from '../global/Hnav';
import FeatureGroup from '../composites/searchview/FeatureGroup';
import Footer from '../global/Footer';
import SearchInput from '../composites/searchview/SearchInput';
import featureGridSplits from '@/utils/enums';

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
                <h2>With the largest fleet and flight network in the world, Air Trillium will take you there!</h2>
            </div>
            <SearchInput 
                setSearchResponseData={setFlightSearchResponseData}
                setSearchSubmitted={setSearchSubmitted}
            />
            <SearchOutput 
                responseData={flightSearchResponseData}
                searchSubmitted={searchSubmitted}
            />
            <FeatureGroup
                splitLayout={featureGridSplits.A1}
                title="Partners and Offers"
            />
            <FeatureGroup 
                splitLayout={featureGridSplits.A2}
            />
            <div >
                <h1 className={styles.centeredDivMessage}>Book your next vacation today. You deserve it.</h1>
            </div>
            <Footer></Footer>
        </div>
    )
}

export default SearchViewMain;