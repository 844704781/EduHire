<template>
	<view>
		<u-transition :show="is_show_head" mode='fade' duration='200'>
			<view class="carousel" v-show="is_show_head">
				<u-swiper :list="carousel_list" mode='none'></u-swiper>
			</view>
		</u-transition>
		<view class="selector">


			<view>
				<zb-dropdown-menu style="width: 100%" ref="dropdown" active-color="#ffe135">
					<zb-dropdown-item :name="selector_options[0].name" :options="selector_options[0].options"
						v-model="selector_options[0].value"
						@change="selector_options[0].changeHandler"></zb-dropdown-item>
					<zb-dropdown-item :name="selector_options[1].name" :options="selector_options[1].options"
						v-model="selector_options[1].value"
						@change="selector_options[1].changeHandler"></zb-dropdown-item>
				</zb-dropdown-menu>
			</view>

			<view class="search">
				<u-search placeholder="请输入关键字搜索" v-model="search_key_word"></u-search>
			</view>

			<view class="jobs">
				<scroll-view :style="{height: scroll_height+'rpx'}" scroll-y show-scrollbar scroll-with-animation
					@scroll="onScrollHandler" @mouseup="upper">
					<view v-for="(item,index) in jobs" :key='index' class="item">
						<view class="title">{{item.title}}</view>
						<view class="item-info">
							<view class="enterprise_name">{{item.enterprise_name}}</view>
							<view class="time">{{item.time}}</view>
						</view>
					</view>
				</scroll-view>
			</view>
		</view>

	</view>
</template>

<script>
	/**
	 * 自适应jobs的总高度
	 */
	function getRecruitmentHeight(height, isShowSwiper) {
		const titleHeight = 0
		const swiperHeight = 130
		const noticeBarHeight = 37
		const selectorHeight = 50
		const bottomHeight = 0
		let otherHeight
		if (isShowSwiper) {
			otherHeight = titleHeight + swiperHeight + noticeBarHeight + selectorHeight + bottomHeight
		} else {
			otherHeight = titleHeight + selectorHeight + bottomHeight
		}
		return (height - otherHeight) * 2
	}
	export default {
		data() {
			return {
				is_show_head: true,
				carousel_list: [
					'https://zwfw.nmg.gov.cn/pub/150000/custom/ztfw/jyfw/ggzp/202012/W020201223315167090380.jpg'
				],
				search_key_word: '',
				selector_options: [{
					name: 'comprehensive',
					options: [{
						text: '推荐',
						value: 0
					}, {
						text: '最新',
						value: 1
					}, {
						text: '最近',
						value: 2
					}],
					value: 0,
					changeHandler: (item) => {
						console.log("排序规则:", item)
						this.$refs.dropdown.close()
					}
				}, {
					name: 'location',
					options: [{
						text: '赣州',
						value: 0
					}, {
						text: '未开放',
						value: 1
					}],
					value: 0,
					changeHandler: (item) => {
						console.log("位置:", item)
						this.$refs.dropdown.close()
					}
				}],
				jobs: [{
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}, {
					title: '2024年江西赣州崇义县公开选调教师120人(8月15日起报名)',
					enterprise_name: '崇义县教育体育局',
					time: '2024-08-14 14:58'
				}],
				scroll_height: 0
			}
		},
		onLoad() {
			uni.getSystemInfo({
				success: (res) => {
					this.window_height = res.windowHeight
					this.scroll_height = getRecruitmentHeight(this.window_height, true)
				}
			})
		},
		methods: {
			onScrollHandler(e) {

				if (e.detail.scrollTop > 50) {
					this.is_show_head = false
					this.scroll_height = getRecruitmentHeight(this.window_height, false)
				} else {
					this.is_show_head = true
					this.scroll_height = getRecruitmentHeight(this.window_height, true)
				}
			},
			upper(e) {
	
				this.is_show_head = true
				this.scroll_height = getRecruitmentHeight(this.window_height, true)

			}
		}
	}
</script>

<style lang="scss" scoped>
	.item {
		border-bottom: solid 1px #edeff2;
		margin: 0 10rpx 10rpx 10rpx;
		padding: 10rpx 0;

		.title {
			font-size: 30rpx;
			font-weight: 1000;
			margin: 10rpx 0;
		}

		.item-info {
			// border: solid 1px red;
			display: flex;
			flex-wrap: wrap;
			justify-content: flex-start;
			align-items: flex-start;
			margin: 10rpx 0;

			.enterprise_name {
				width: 50%;
				// border: solid 1px red;
				font-size: 25rpx;
				color: #b1b1b1
			}

			.time {
				width: 50%;
				// height: 80rpx;
				// border: solid 1px red;
				text-align: right;
				font-size: 25rpx;
				color: #b1b1b1
			}
		}
	}
</style>