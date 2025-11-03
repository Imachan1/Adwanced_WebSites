import React, {Component} from "react";
class Buty extends Component {
    constructor(props) {
        super(props);
        this.state = {
            buty: [
                {id: 0, rodzaj: "sandaly", stan: 0 },
                {id: 1, rodzaj: "sandaly", stan: 30 },
                {id: 2, rodzaj: "sandaly", stan: 10 }
            ]
        };
    }
    render(){
        return(
        <div className="App">
        {this.state.buty.map((item,index)=>(
            <ol>
                <h4>{item.rodzaj}</h4>
                <h4>{item.stan}</h4>
            </ol>
        ))}
        </div>
    );
}
}
export default Buty;