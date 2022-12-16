<template>
    <form @submit.prevent="submitForm">
        <div class="oneLine" id="oneLine">
            <input type="text" name="speaker" id="" class="speaker input" tabindex="1"  v-model="speaker"> 
            <textarea name="text" id="" cols="30" rows="1"  tabindex="2" class="input"  v-model="text" @keyup.enter="addOneLine"></textarea>
        </div>
        <input type="submit" value="글쓰기">

    </form>
   
</template>
<script>

export default ({
    setup() {
        var json = { 
            scene_name: ' ',
            scene_num: ' ',
            contents: [
                {speaker:' ', text:' ' },
                {speaker:' ', text:' ' },
                {speaker:' ', text:' ' },
                {speaker:' ', text:' ' }
        ]}
    },
    data(){
        console.log('들어옴');
        return{
            speaker: '',
            text:'',
        }
    },

    methods: {
        addOneLine(){
            console.log('tab: '+this.speaker);
            // $('.oneLine').
            // var copyTag = $('#oneLine').clone(); // $zero에 복사된 태그가 담김
            var copyTag = '<div class="oneLine" id="oneLine"><input type="text" name="speaker" id="" class="speaker" tabindex="1"  v-model="speaker"> <textarea name="text" id="" cols="30" rows="1"  tabindex="2"  v-model="text" @keyup.enter="addOneLine"></textarea></div>'
            console.log(copyTag)
            $('#oneLine').append(copyTag);
            var zero = document.getElementById('oneLine').cloneNode(true);

        },
        submitForm(){
            console.log('submit: '+this.speaker);
            
        }
    },
})
</script>
<style scoped>
.input{
    height: 20px;
}
</style>