<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
			// try {
			// 	let system_info = uni.getSystemInfoSync()
			// 	uni.setStorageSync('window_height', system_info.windowHeight)
			// } catch (e) {
			// 	console.error(e)
			// }

		},
		onLoad: function() {
			console.log('App Load')
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		}
	}
</script>

<style lang="scss">
	@import "@/uni_modules/uview-ui/index.scss";
</style>