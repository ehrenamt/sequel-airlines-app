import './App.css'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import About from './components/layouts/static/About';
import TripViewMain from './components/layouts/TripViewMain';
import SearchViewMain from './components/layouts/SearchViewMain';
import UserLogin from './components/layouts/UserLogin';
import Guide from './components/layouts/static/Guide';


function App() {
  return (

    <Router>
      <Routes>
        <Route path="/" element={<SearchViewMain />} />
        <Route path="/about" element={<About />} />
        <Route path="/tripinformation" element={<TripViewMain />} />
        <Route path="/projectdocs" element={<Guide />} />
        <Route path="/signin" element={<UserLogin /> } />
        {/* <Route path="/dynamic/:id" element={<DynamicPage />} /> */}
      </Routes>
    </Router>
  )
}

export default App
