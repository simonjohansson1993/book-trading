import React, { useState,Component } from 'react';
import Icon from 'react-native-vector-icons/Ionicons';
import {SearchBar, Header,Card  } from 'react-native-elements';
import { View ,FlatList,TouchableWithoutFeedback,Text,Image,StyleSheet} from 'react-native';

class SearchScreen extends Component {
    constructor(props){
      super(props);
     this.state={
        search: '',
        Data: [1]
     }
    
    
    }

    updateSearch = (search) => {
           this.setState({ search });
           var request = new XMLHttpRequest();
           request.onreadystatechange = (e) => {
            if (request.readyState !== 4) {
              return;
            }
      
            if (request.status === 200) {
           var data = JSON.parse(request.responseText);
           this.setState({ Data: data })
            }
      
          };
      
         request.open('GET', "http://10.0.2.2:80/Api/Searsh.php?searsh="+search);
         request.send();
         };
         selectedComponent = () => {
          if(this.state.Data.length!=0){
            if(this.state.Data[0]!=1){
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
                      <Image style={{ height:"50%", width:"100%" }} resizeMode='stretch' source={{ uri: item.item.img }}></Image>
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
             
            />)}
            else{
              return(
                <View></View>
              )
              
            }
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

    render() {
        const { search } = this.state;
    return(
     <View style={{marginBottom:100}}>
      <Header 
      leftComponent={<Icon style={{marginRight:20,marginLeft:5}}
      name="arrow-back" color={'#fff'} size={28} backgroundColor={"#08d4c4"}  onPress={()=> this.props.navigation.navigate('Home')}
      />}
      centerComponent={ <SearchBar
        placeholder="Search by book name..."
        onChangeText={(value)=>this.updateSearch(value)}
        value={search}
        containerStyle={{ backgroundColor:"#08d4c4",borderTopWidth:0,
        borderBottomWidth:0, }}
        inputContainerStyle={{ backgroundColor:"#fff", width:310 }}
        
      />  }
      backgroundColor={"#08d4c4"}
      containerStyle={{ height:90 }}
    />
      {this.selectedComponent()}
      
    </View>
    ); 
  }
   }
   const styles = StyleSheet.create({
   Image:{
    height:200,
    width:200,
    marginLeft:110,
    marginTop:150,
     },
     text:{
       fontSize:24,
       marginLeft:140,
       marginTop:30,
       color:'gray',
       fontWeight: "bold",
     }
   })
  
  
  
  export default SearchScreen
    