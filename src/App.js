import logo from './logo.svg';
import './App.css';
import Buty from './Buty';
import Nazwa from './Nazwa';

function App() {
  return (
    <div className="App">
      <h1><Nazwa firma='Moje Buty' /></h1>
      <Buty />
    </div>
  );
}

export default App;
