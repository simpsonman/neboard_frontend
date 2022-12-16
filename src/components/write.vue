<template>
    <div>
        <form @submit.prevent="submitForm">
            <label for="title">제목</label>
            <input type="text" id="title" v-model="title">
			<textarea rows="8" cols="" name="content" id="content" class="summernote"></textarea>
            <label for="pw">비밀번호</label>
            <input type="password" id="pw" v-model="pw">
            <input type="submit" value="글쓰기">
        </form>
    </div>
</template>

<script>

export default {
	name: 'SignupForm',
	data() {
		return {
			title: '',
			content: '',
			pw: '',
		
		};
	},
	methods: {
		submitForm() {
			var json = {};
			var summernoteContent = $('.summernote').summernote('code'); 

			json.title=this.title;
			json.content=summernoteContent;
			json.pw=this.pw;
			console.log(json);
		},
	},
	  mounted() {
		$('.summernote').summernote();
	}
};
</script>