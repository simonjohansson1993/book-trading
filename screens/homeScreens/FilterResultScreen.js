import React, { Component } from 'react';
import { View, Text, StyleSheet, StatusBar,Image,ScrollView,TouchableOpacity,FlatList,TouchableWithoutFeedback, } from 'react-native';
import Icon from 'react-native-vector-icons/Ionicons';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';
import {Card  } from 'react-native-elements';


//You can use  global.userId to get UserId 
  //console.log(global.UserID)

export default class FilterResultScreen extends Component {
  constructor(props){
    super(props); 
  this.state={
    selectedRadio:this.props.route.params.selectedRadio,
    CheckedBox:this.props.route.params.CheckedBox,
    Data: []
  }  
  this.getBooks();
  }
 
 async getBooks() {
    var request = new XMLHttpRequest();
    var Radio =this.state.selectedRadio
    if(Radio==null){
      Radio='';
    }
    var Boxs=JSON.stringify(this.state.CheckedBox);

    request.onreadystatechange = (e) => {
      if (request.readyState !== 4) {
        return;
      }

      if (request.status === 200) {
      var data = JSON.parse(request.responseText);
      this.setState({ Data: data })
      // console.log(request.responseText)
      // console.log(data)

      }

    };

    await request.open('GET', 'http://10.0.2.2:80/Api/getFilter.php?Radio='+Radio+'&Boxs='+Boxs);
    await  request.send();

  }
  selectedComponent = () => {
    if(this.state.Data.length!=0){
      return( <FlatList
        numColumns={2}
        data={this.state.Data}
        renderItem={(item) => {
   
          return (
            <TouchableWithoutFeedback
              onPress={() => {
                if (item.item.U_id == global.userId) {
                  this.props.navigation.navigate('BookShow', { BookIDid: item.item.B_id, img: item.item.img, })

                }
                else {
                  this.props.navigation.navigate('Bookdetalies', { B_id: item.item.B_id, uri: item.item.img, })

                }
              }}>
               <Card containerStyle={{ width:"45%", height: 260,marginLeft:"2%", }}>
                <Card.Title>{item.item.BookName}</Card.Title>
                <Card.Divider />
                <Image style={{ height:"50%", width:"100%"}} resizeMode='stretch' source={{ uri: item.item.img }}></Image>
                <Text style={{ marginBottom: 5, marginTop: 10 }}>
                  BY: {item.item.Aurthor}.
          </Text>
                <Text style={{ marginBottom: 5, marginTop: 2 }}>
                  Price: {item.item.Price} $.
          </Text>
              </Card>
            </TouchableWithoutFeedback>
          )
        }}
        keyExtractor={item => item.B_id}
       
      />)
    }
    else{
      return(
        <View>
        <Image
             style={styles.Image}
            source={require('../../img/NoSearchResult.png')} />
            <Text style={styles.text}>Sad no result</Text>
            </View>
      )
    }

  }

  render(){
    const Allfilters=[]
    let id=0
   if(this.state.selectedRadio !=null){
     Allfilters.push({id:id,value:this.state.selectedRadio})
     id++
   }
   let arr=this.state.CheckedBox;
   if(arr.length!=0){
     for(let i=0;i<arr.length;i++){
      Allfilters.push({id:id,value:arr[i]})
      id++
     }
   }
  
  const filterloop= Allfilters.map((item) =>
<View style={styles.MiniBox} key={item.id}><Text style={{ textAlign: 'center'}}>{item.value}</Text></View>
  
  )
   
  return (
  <View style={styles.container}>
        <StatusBar backgroundColor="#08d4c4"/>
  
     <View style={styles.head}>
            <Image
            style={styles.userImage}
            source={require('../../img/logo.png')}/>
           
              <Text style={{fontSize:24,color:'#fff',fontWeight:'bold',paddingBottom:2}}>BookWorm</Text>
                
                <View style={{flexDirection:'row', justifyContent:'space-between',alignItems:'center'}}>
                  <TouchableOpacity
                   onPress={()=>this.props.navigation.navigate('SearchScreen')}>
                <MaterialCommunityIcons style={{marginRight:5,marginLeft:5}}
                    name="feature-search" color={'#fff'} size={28} backgroundColor={"#08d4c4"}
                   
                    />
                    </TouchableOpacity>
                    <TouchableOpacity
                    onPress={()=>this.props.navigation.navigate('FilterScreen')}>
                    <Icon style={{marginRight:20,marginLeft:5}}
                    name="options" color={'#fff'} size={28} backgroundColor={"#08d4c4"}
                    />
                    </TouchableOpacity>
                  
                 
              </View>
         </View>
        
   
              <View style={{flexDirection: 'row-reverse'}}>
              <View style={styles. FilterBox}>
              <ScrollView>
              <View style={{flexDirection: 'row-reverse', flexWrap:'wrap'}}>
               { filterloop}
               </View>
              </ScrollView>

              </View>
              <View style={styles. FilterExit}>
              <Icon style={{marginRight:20,marginLeft:5, marginTop:5}}
                    name="close" color={'#333'} size={24}
                    onPress={()=>this.props.navigation.navigate('Home')}
                    />  
              </View>
              </View>
              {this.selectedComponent()}
       </View>
  );
}
}
const styles = StyleSheet.create({
  container:{
    flex:1,
    backgroundColor:'#fff',
    marginBottom:5
  },
  head:{
    height:58,
    backgroundColor:"#08d4c4",
    flexDirection:'row',
    justifyContent:'space-between',
    alignItems:'center',
    paddingTop:20,
    paddingRight:0,
    paddingBottom:20,
    paddingLeft:20,
    marginTop:20
 
  },
  userImage:{
    width:50,
    height:50,
    borderRadius:50,
 },
 FilterBox:{
  height:100,
  width:'80%',
  marginTop:10,
  marginRight:15,
  backgroundColor:'#DDDCDC',
  paddingTop:10,
 },
 MiniBox:{
  height:35,
  width:'45%',
  backgroundColor:'#F6F2F2',
  marginBottom:10,
  marginRight:10,
  borderColor:'#08d4c4',
  borderStyle: 'dashed',
  borderWidth:1,
  borderRadius: 50,
  justifyContent: 'center',
 },
 FilterExit:{
  height:100,
  width:'12%',
  marginTop:10,
  marginLeft:'5%',
  backgroundColor:'#DDDCDC',
 },
 Image:{
height:200,
width:200,
marginLeft:110,
marginTop:100,
 },
 text:{
   fontSize:24,
   marginLeft:140,
   marginTop:30,
   color:'gray',
   fontWeight: "bold",
 }
})