import { configureStore } from 'redux';


const initialState = {
    publicUserId: undefined,
    flightSearchResults: undefined,
    searchInput: {
        origin: undefined,
        destination: undefined,
        date: undefined,
        passengers: undefined
    },
    userTickets: undefined,
    flightInformationScreenEntries: undefined
}