import Axios from "axios";

export default{
    state: () => ({ 
        userlist:[],
        usermessage:[]
     }),
    mutations: { 
        userlist(state,payload){
            return state.userlist = payload
        },
        message(state,payload){
            return state.usermessage = payload
        }
     },
    actions: { 
        userlist(context){
            Axios.get('users').then(res => {
                context.commit("userlist",res.data);
            })
        },
        message(context,payload){
            Axios.get('getmessage/'+payload)
            .then(res =>{
                context.commit("message",res.data);
            })
        }
     },
    getters: { 
        userlist(state){
            return state.userlist
        },
        message(state){
            return state.usermessage
        }
     }
}