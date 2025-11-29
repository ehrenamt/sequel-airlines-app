import './App.css'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import TripViewMain from './components/layouts/TripViewMain';
import SearchViewMain from './components/layouts/SearchViewMain';
import Guide from './components/layouts/static/Guide';


function App() {
  return (

    <Router>
      <Routes>
        <Route path="/" element={<SearchViewMain />} />
        <Route path="/tripinformation" element={<TripViewMain />} />
        <Route path="/projectdocs" element={<Guide />} />
        {/* <Route path="/dynamic/:id" element={<DynamicPage />} /> */}
      </Routes>
    </Router>
  )
}

export default App
