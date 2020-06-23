<template>
<div>
    <div class="container-fluid h-100">
			<div class="row justify-content-center h-100">
				<div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
					<div class="card-header">
						<div class="input-group">
							<input type="text" placeholder="Search..." name="" class="form-control search">
							<div class="input-group-prepend">
								<span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
							</div>
						</div>
					</div>
					<div class="card-body contacts_body">
						<ul class="contacts">

                            <li @click.prevent="singleUser(user.id)" v-for="user in userlist" :key="user.id">
                                    <div class="d-flex bd-highlight">
                                        <div class="img_cont">
                                            <img src="https://2.bp.blogspot.com/-8ytYF7cfPkQ/WkPe1-rtrcI/AAAAAAAAGqU/FGfTDVgkcIwmOTtjLka51vineFBExJuSACLcBGAs/s320/31.jpg" class="rounded-circle user_img">
                                            <span v-if="onlinepeople(user.id) || online.id==user.id" class="online_icon online"></span>
                                            <span v-else class="online_icon offline"></span>
                                        </div>
                                        <div class="user_info">
                                            <span>{{user.name}}</span>
                                        </div>
                                    </div>
                            </li>

						</ul>
					</div>
					<div class="card-footer"></div>
				</div></div>
				<div class="col-md-8 col-xl-6 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
									<span class="online_icon"></span>
								</div>
								<div class="user_info">
									<span v-if="message.user">{{message.user.name}}</span>
								</div>
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li @click.prevent="deleteAll"><i class="fas fa-delete"></i> Delete All</li>
								</ul>
							</div>
						</div>
						<div class="card-body msg_card_body" v-chat-scroll>

							<div v-for="msg in message.message" :key="msg.id" :class="`d-flex mb-4  ${msg.user.id==message.user.id ? 'justify-content-start' : 'justify-content-end'}`">
								
								<div class="img_cont_msg" v-if="msg.user.id==message.user.id">
									<img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
								</div>
								<div style="max-width:220px;" :class="` ${msg.user.id==message.user.id ? 'msg_cotainer' : 'msg_cotainer_send'}`">
									<a @click.prevent="deletePersms(msg.id)" href="#">Delete</a>
									{{msg.message}}
									<span  class="msg_time">{{msg.created_at | timeformat}}</span>

								</div>
								
							</div>

						</div>
						<div class="card-footer">
							<p v-if="usertyping">{{usertyping}} is typing.....</p>
							<div class="input-group" v-if="message.user">
								
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
								</div>
								
								<textarea @keydown="typing(message.user.id)" @keydown.enter="messageSend" v-model="sms" name="message" class="form-control type_msg" placeholder="Type your message..."></textarea>
								<div class="input-group-append">
									<span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
</template>
<script>
	import _ from 'lodash'
    export default{
        data(){
            return{
				sms:'',
				usertyping:'',
				peoples:[],
				online:''
            }
        },
        mounted(){
			Echo.private(`sms.${authuser.id}`)
				.listen('MessageSent', (e) => {
					this.singleUser(e.message.from)
					//console.log(e.message.message);
				});
			this.$store.dispatch('userlist');
			

			Echo.private('typingevent')
				.listenForWhisper('typing', (e) => {

					if(e.user.id==this.message.user.id && e.uid == authuser.id){
						this.usertyping = e.user.name;
					}
					
					setTimeout(() => {
						this.usertyping= '';
					}, 5000)
				});
        },
        computed:{
            userlist(){
                return this.$store.getters.userlist
			},
			message(){
				return this.$store.getters.message
			}
        },
        created(){
			Echo.join('onlineuser')
			.here((peoples) => {
				this.peoples = peoples
			})
			.joining((user)=>{
				this.online = user
			})
			.leaving((user)=>{
				console.log(user.name)
			})


        },
        methods:{
			singleUser(user_id){
				this.$store.dispatch('message',user_id);
			},
			messageSend(e){
				e.preventDefault();
				if(this.sms!=''){
					axios.post('sendSms',{msg:this.sms,userId:this.message.user.id})
					.then(res =>{
						this.singleUser(this.message.user.id);
					})
					this.sms='';
				}
			},
			deletePersms(smsId){
				axios.get(`deleteSinglesms/${smsId}`)
				.then(res =>{
					this.singleUser(this.message.user.id);	
				})
			},
			deleteAll(){
				axios.get(`allDelete/${this.message.user.id}`)
				.then(res =>{
					this.singleUser(this.message.user.id);	
				})
			},
			typing(id){
				Echo.private('typingevent')
					.whisper('typing', {
						'user': authuser,
						'typing': this.sms,
						'uid':id
					});
			},
			onlinepeople(id){
				return _.find(this.peoples,{'id':id});
			}
			
        }
    }
</script>