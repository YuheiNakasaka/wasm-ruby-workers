import mod from '../wasm/my-ruby-app.wasm'

export default {
	async fetch(request, env, ctx) {
		return new Response('Hello World!');
	},
};
