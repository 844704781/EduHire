<template>
	<view class="label">
		<u-tag :text="item.text" size="mini" :color='item.color' :bg-color="item.bg_color"
			border-color="transparent" :icon="item.icon"></u-tag>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				name: 'enterprise-label'
			}
		},
		props: ['item']
	}
</script>

<style lang="scss" scoped>
	.label {
	}
</style>