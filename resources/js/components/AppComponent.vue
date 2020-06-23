<template>
    <div id="main-app">
        <ChatComponent />
    </div>
</template>
<script>
    import ChatComponent from "./ChatComponent";
    export default{
        name: 'App',
        components:{
            ChatComponent
        }
    }
</script>