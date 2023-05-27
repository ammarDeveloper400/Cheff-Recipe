/*
 *
 * HomePage
 *
 */


import React, {
    Component
} from 'react';
import axios from 'axios'
let apiCore = 'https://cheff-strapi-6jbhc.ondigitalocean.app/'
let api = 'https://cheff-strapi-6jbhc.ondigitalocean.app/analytics/'
// api = 'http://192.168.18.3:1700/analytics/'
class App extends Component {

    state = {
        subscriptions:{
            loading:true,
            error:false,
            data:[]
        },
        prints:{
            loading:true,
            error:false,
            data:[]
        },
        esubscriptions:{
            loading:true,
            error:false,
            data:[]
        },

        downloads:{
            loading:true,
            error:false,
            data:[]
        },
        users:{
            loading:true,
            error:false,
            data:[],
            users:[],
            active_users:[],
        },
    }

    


    componentDidMount() {

        this.getSubs("")
        this.getESubs("")
        this.getDownloads("")
        this.getUsers("")
        this.getPrints("")

    }

    genExtra = (time) => {


        let extra = ''

        console.log(time);
        let todayDate = new Date();
        // set time to be 00:00:00
        todayDate.setHours(0,0,0,0);
        // let today = todayDate.getFullYear()+'-'+(todayDate.getMonth()+1)+'-'+todayDate.getDate();

        if(time=="life time" || time=="all_time" || time==""){

            // extra = 10 years ago
            let tenYearsAgo = new Date(todayDate);
            tenYearsAgo.setFullYear(tenYearsAgo.getFullYear() - 10);
            // tenYearsAgo = tenYearsAgo.getFullYear()+'-'+(tenYearsAgo.getMonth()+1)+'-'+tenYearsAgo.getDate();

            // convert tenYearsAgo to javascript date formate like: 2023-03-13T14:15:55.902Z
            tenYearsAgo = tenYearsAgo.toISOString();

            extra = '?date='+tenYearsAgo;



        }else if (time=="today"){

            

            extra = '?date='+todayDate.toISOString();
        }else if(time=="yesterday"){
            let yesterday = new Date(todayDate);
            yesterday.setDate(yesterday.getDate() - 1);
            // yesterday = yesterday.getFullYear()+'-'+(yesterday.getMonth()+1)+'-'+yesterday.getDate();
            // convert yesterday to javascript date formate like: 2023-03-13T14:15:55.902Z
            yesterday = yesterday.toISOString();
            console.log(yesterday);
            extra = '?date='+yesterday;
        } else if(time=="this_week"){
            

            let dateAweekAgo = new Date(todayDate);
            dateAweekAgo.setDate(dateAweekAgo.getDate() - 7);

            // ISO
            dateAweekAgo = dateAweekAgo.toISOString();

            extra = '?date='+dateAweekAgo;
        } else if(time=="this_month"){
            let dateAweekAgo = new Date(todayDate);
            dateAweekAgo.setDate(dateAweekAgo.getDate() - 30);

            // ISO
            dateAweekAgo = dateAweekAgo.toISOString();

            extra = '?date='+dateAweekAgo;
        } else if(time=="this_year"){

            let dateAweekAgo = new Date(todayDate);
            dateAweekAgo.setDate(dateAweekAgo.getDate() - 365);

            // ISO
            dateAweekAgo = dateAweekAgo.toISOString();

            extra = '?date='+dateAweekAgo;
        }

        return extra;
    }


    getSubs = (time) => {


        let extra = this.genExtra(time);

        axios.get(api+'getSubscriptions2'+extra).then((response) => {
            console.log(response.data);
            const ddata = response.data;
            this.setState({
                subscriptions:{
                    loading:false,
                    data:ddata
                }
            });
        }, (error) => {
            console.log("No data seen at endpoint");
            console.log(error);

            this.setState({
                subscriptions:{
                    loading:false,
                    error:true
                }
            });
        });
    }
    getPrints = (time) => {


        let extra = this.genExtra(time);

        axios.get(api+'getPrints'+extra).then((response) => {
            console.log(response.data);
            const ddata = response.data;
            this.setState({
                prints:{
                    loading:false,
                    data:ddata
                }
            });
        }, (error) => {
            console.log("No data seen at endpoint");
            console.log(error);

            this.setState({
                prints:{
                    loading:false,
                    error:true
                }
            });
        });
    }

    getESubs = (time) => {


        let extra = this.genExtra(time);

        axios.get(api+'getExpiringSubs'+extra).then((response) => {
            console.log(response.data);
            const ddata = response.data;
            this.setState({
                esubscriptions:{
                    loading:false,
                    data:ddata
                }
            });
        }, (error) => {
            console.log("No data seen at endpoint");
            console.log(error);

            this.setState({
                esubscriptions:{
                    loading:false,
                    error:true
                }
            });
        });
    }

    getDownloads = (time) => {


        let extra = this.genExtra(time);

        axios.get(api+'getDownloads'+extra).then((response) => {
            console.log(response.data);
            const ddata = response.data;
            this.setState({
                downloads:{
                    loading:false,
                    data:ddata
                }
            });
        }, (error) => {
            console.log("No data seen at endpoint");
            console.log(error);

            this.setState({
                downloads:{
                    loading:false,
                    error:true
                }
            });
        });
    }
    getUsers = (time) => {


        let extra = this.genExtra(time);

        axios.get(api+'getUsers'+extra).then((response) => {
            console.log(response.data);
            this.setState({
                users:{
                    error:false,
                    loading:false,
                    data:response.data.users,
                    active_users:response.data.active_users,
                    users:response.data.users
                }
            });
        }, (error) => {
            console.log("No data seen at endpoint");
            console.log(error);

            this.setState({
                users:{
                    loading:false,
                    error:true
                }
            });
        });
    }

    stry = {
        backgroundColor:'white',
        padding:150,
        paddingTop:20,
        paddingBottom:20,

        borderRadius:10,

        display:'flex',
        flexDirection:'column',

        alignItems:'center',
        justifyContent:'center',
        alignSelf:'start',
        marginRight:20


    }
    getEearnings = () => {

        let total = 0;

        this.state.subscriptions.data.forEach((sub) => {
            total += parseInt(sub.plan.price.replace ( /[^\d.]/g, '' ));
        })

        return total;
    }

    

    render() {
        return <>

            <div style={{
                padding:50,
                display:'flex',
                flexDirection:'column',
            }}>
            <h1 style={{display:'flex', flexDirection:'row'}}>
                Subsriptions & Revenue
                <div style={{width:20}}></div>

                <select onChange={(e)=>{
                    console.log(e.target.value);
                    this.getSubs(e.target.value);
                }}>
                    <option value="all_time">All time</option>
                    <option value="today">Today</option>
                    <option value="yesterday">Yesterday</option>
                    <option value="this_week">This week</option>
                    <option value="this_month">This month</option>
                    <option value="this_year">This year</option>
                </select>
            </h1>

            <div style={{
                display:'flex',
                flexDirection:'row',
                marginTop:10

            }}>
                {this.Earnings()}
            </div>

                <div style={{height:40}}></div>


                <h1 style={{display:'flex', flexDirection:'row'}}>
                    Downloads
                    <div style={{width:20}}></div>

                    <select onChange={(e)=>{
                        console.log(e.target.value);
                        this.getDownloads(e.target.value);
                    }}>
                        <option value="all_time">All time</option>

                        <option value="today">Today</option>
                        <option value="yesterday">Yesterday</option>
                        <option value="this_week">This week</option>
                        <option value="this_month">This month</option>
                        <option value="this_year">This year</option>
                    </select>
                </h1>
                <div style={{
                    display:'flex',
                    flexDirection:'row',
                    marginTop:10

                }}>
                    {this.Downloads()}
                </div>


                <div style={{height:40}}></div>


                <h1 style={{display:'flex', flexDirection:'row'}}>
                    Prints
                    <div style={{width:20}}></div>

                    <select onChange={(e)=>{
                        console.log(e.target.value);
                        this.getPrints(e.target.value);
                    }}>
                        <option value="all_time">All time</option>

                        <option value="today">Today</option>
                        <option value="yesterday">Yesterday</option>
                        <option value="this_week">This week</option>
                        <option value="this_month">This month</option>
                        <option value="this_year">This year</option>
                    </select>
                </h1>
                <div style={{
                    display:'flex',
                    flexDirection:'row',
                    marginTop:10

                }}>
                    {this.Prints()}
                </div>


                <div style={{height:40}}></div>


                <h1 style={{display:'flex', flexDirection:'row'}}>
                    Users
                    <div style={{width:20}}></div>

                    <select onChange={(e)=>{
                        console.log(e.target.value);
                        this.getUsers(e.target.value);
                    }}>
                        <option value="all_time">All time</option>

                        <option value="today">Today</option>
                        <option value="yesterday">Yesterday</option>
                        <option value="this_week">This week</option>
                        <option value="this_month">This month</option>
                        <option value="this_year">This year</option>
                    </select>
                </h1>
                <div style={{
                    display:'flex',
                    flexDirection:'row',
                    marginTop:10

                }}>
                    {this.Users()}
                </div>
                <div style={{height:40}}></div>

                <h1 style={{display:'flex', flexDirection:'row'}}>
                    Expiring Subsriptions
                    <div style={{width:20}}></div>
                </h1>
                <div style={{
                    display:'flex',
                    flexDirection:'row',
                    marginTop:10

                }}>
                    {this.ExpiringSubs()}
                </div>
            </div>
        
        </>;
    }

    Earnings() {

        if(this.state.subscriptions.loading){
            return <h1>Loading subscriptions</h1>
        }

        if(this.state.subscriptions.error){
            return <h1>Error loading subscriptions</h1>
        }

        return <div style={{
            display:'flex',
            flexDirection:'row',


        }}>
            
            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.subscriptions.data.length}</span><span style={{
                        marginTop:10
                    }}>Subs</span> </span>
            </div>

            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>${this.getEearnings()}</span><span style={{
                        marginTop:10
                    }}>Earnings</span> </span>
            </div>
            
            </div>

    }

    Downloads() {

        if(this.state.downloads.loading){
            return <h1>Loading downloads</h1>
        }

        if(this.state.downloads.error){
            return <h1>Error loading downloads</h1>
        }

        return <div style={{
            display:'flex',
            flexDirection:'row',


        }}>
            
            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.downloads.data.length}</span><span style={{
                        marginTop:10
                    }}>Downloads</span> </span>
            </div>
            
            </div>

    }

    Prints() {

        if(this.state.prints.loading){
            return <h1>Loading prints</h1>
        }

        if(this.state.prints.error){
            return <h1>Error loading prints</h1>
        }

        return <div style={{
            display:'flex',
            flexDirection:'row',


        }}>
            
            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.prints.data.length}</span><span style={{
                        marginTop:10
                    }}>Prints</span> </span>
            </div>
            
            </div>

    }

    Users() {

        if(this.state.users.loading){
            return <h1>Loading users</h1>
        }

        if(this.state.users.error){
            return <h1>Error loading users</h1>
        }

        return <div style={{
            display:'flex',
            flexDirection:'row',


        }}>
            
            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.users.users.length}</span><span style={{
                        marginTop:10
                    }}>Users</span> </span>
            </div>

            <div  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.users.active_users.length}</span><span style={{
                        marginTop:10
                    }}>Active Users</span> </span>
            </div>
            
            </div>

    }

    ExpiringSubs() {

        if(this.state.esubscriptions.loading){
            return <h1>Loading expiring subscriptions</h1>
        }

        if(this.state.esubscriptions.error){
            return <h1>Error loading expiring subscriptions</h1>
        }

        return <div style={{
            display:'flex',
            flexDirection:'row',


        }}>
            
            <div onClick={()=>{

                let dateAfterTwoDays = new Date();
                dateAfterTwoDays.setDate(dateAfterTwoDays.getDate() + 2);
                dateAfterTwoDays = dateAfterTwoDays.toISOString().split('T')[0];

                window.location.href = apiCore + 'admin/content-manager/collectionType/api::subscription.subscription?page=1&pageSize=10&sort=expires:DESC&filters[$and][0][expires][$lte]='+dateAfterTwoDays+'&filters[$and][1][active][$eq]=true';
            }}  style={this.stry}>
                    <span style={{
                        display:'flex',
                        flexDirection:'column',
                        alignItems:'center',
                    }}><span style={{

                        fontSize:60,
                        fontWeight:'bold'
                    }}>{this.state.esubscriptions.data.length}</span><span style={{
                        marginTop:10
                    }}>Expiring Subsriptions</span> </span>
            </div>

            
            </div>

    }
}

export default App;
