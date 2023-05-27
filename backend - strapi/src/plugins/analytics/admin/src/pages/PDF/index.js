/*
 *
 * PDF
 *
 */


import React, {
    Component
} from 'react';


class App extends Component {

    state = {
        pieChartData: [],
        barChartData: [],
        persons: []
    }

    


    

    render() {
        return <div><iframe
        

        src='https://coral-app-udls2.ondigitalocean.app/' style={{
            width:'100%',
            height:500,
        }} /></div>;
    }
}

export default App;
