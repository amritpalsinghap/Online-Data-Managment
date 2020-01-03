<template>
    <b-button :variant="_color" @click="clickFunction"  >{{bText}}</b-button>
</template>
<script>
export default {
    name:'cstmButton',
    props:
    {
        bText:
        {
            type:String,
            required : true,
        },
        _color:
        {
            type:String,
            required : true,
            default:"secondary"
        },
        clickFunction:
        {
            type:Function,
            required : false,
        }
    }
    
}
</script>