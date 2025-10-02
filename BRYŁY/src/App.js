const bryly = [
  {"nazwa":"szescian","wzorObjetosc":"objetosc: V=a**2","wzorPole":"P=6a**2",
    "przyklady":[
      {"pole":"24"},
      {"objetosc":"8"}
    ]
  },
    {"nazwa":"prostopadloscian","wzorObjetosc":"objetosc: V=a*b*h","wzorPole":"P=2*a*b+2*a*h+2*b*h",
    "przyklady":[
      {"pole":"94"},
      {"objetosc":"60"}
    ]
  },
    {"nazwa":"kula","wzorObjetosc":"objetosc: V=4/3*pi*r**3","wzorPole":"P=4*pi*r**2",
    "przyklady":[
      {"pole":"200,96"},
      {"objetosc":"267,94666666666666"}
    ]
  }
];



function App() {
  return (
    <div className="App">
          <thead>
            <tr>
              <th>Bryla</th>
              <th>Ilustracja</th>
              <th>Wzory</th>
              <th>Przyklad</th>
            </tr>
          </thead>
          <tbody>
            {bryly.map((item,index)=>(
              <tr key={index}>
                
              </tr>
            ))}
          </tbody>
    </div>
  );
}

export default App;
