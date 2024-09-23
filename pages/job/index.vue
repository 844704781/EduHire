<template>
	<view>
		<u-transition :show="is_show_head" mode='fade' duration='200'>
			<view class="head">
				<view class="carousel">
					<u-swiper :list="list" mode='none'></u-swiper>
				</view>
				<view class='notice_bar'>
					<u-notice-bar :text="notification" color='#eb8f05'></u-notice-bar>
				</view>
			</view>

		</u-transition>
		<view class='selector'>
			<view class="container">
				<u-row>
					<u-col span="9">
						<view class="left">
							<zb-dropdown-menu style="width: 100%" ref="dropdown" active-color="#ffe135">
								<zb-dropdown-item :name="selector_options[0].name"
									:options="selector_options[0].options" v-model="selector_options[0].value"
									@change="selector_options[0].changeHandler"></zb-dropdown-item>
								<zb-dropdown-item :name="selector_options[1].name"
									:options="selector_options[1].options" v-model="selector_options[1].value"
									@change="selector_options[1].changeHandler"></zb-dropdown-item>
								<zb-dropdown-item :name="selector_options[2].name"
									:options="selector_options[2].options" v-model="selector_options[2].value"
									@change="selector_options[2].changeHandler"></zb-dropdown-item>
							</zb-dropdown-menu>
						</view>
					</u-col>
					<u-col span="3">
						<view class="right" @click="handleSearch">
							<u--input placeholder="搜索" suffixIcon="search" suffixIconStyle="color: #909399" ></u--input>
						</view>
					</u-col>
				</u-row>
			</view>
		</view>
		<view class='jobs'>
			<scroll-view :style="{height: scroll_height+'rpx'}" scroll-y show-scrollbar scroll-with-animation
				@scroll="onScrollHandler" @scrolltoupper="upper">

				<view v-for="(item,index) in jobs" :key='index' class='job' @click="handleClick(item.name)">
					<view class="name_mount">
						<u-row>
							<u-col span="6">
								<view class="job_name">
									{{item.name}}
								</view>
							</u-col>
							<u-col span="6">
								<view class="mount">
									{{item.mount}}
								</view>
							</u-col>
						</u-row>
					</view>
					<view class="benefits">
						<view v-for="(tag,index) in item.tags" :key='index' class="item">{{tag}}</view>
					</view>
					<view class="info">
						<u-row>
							<u-col :span='8'>
								<u-row>
									<u-col span='3'><u-avatar
											src="https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png"></u-avatar></u-col>
									<u-col span='9'>
										<view class="enterprise_name">{{item.enterprise_name}}</view>
										<view class="enterprise_type">{{item.enterprise_type}}</view>
									</u-col>
								</u-row>
							</u-col>
							<u-col :span='4'>
								<view class="enterprise_location">
									{{item.enterprise_location}}
								</view>
							</u-col>
						</u-row>
					</view>
				</view>
			</scroll-view>
		</view>
	</view>

</template>

<script>
	/**
	 * 自适应jobs的总高度
	 */
	function getJobsHeight(height, isShowSwiper) {
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
				list: [
					'https://youpinwang.oss-cn-shenzhen.aliyuncs.com/upload/20220623/c6d09476ab885d4275c3e438879d0ab4.jpg',
					'https://youpinwang.oss-cn-shenzhen.aliyuncs.com/upload/20221214/16d534f9bface28756aa791859c916ce.jpg'
				],
				notification: 'edu_hire官网: https://www.eduhire.com',
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
				}, {
					name: 'condition',
					options: [{
						text: '筛选',
						value: 0
					}, {
						text: '生活老师',
						value: 1
					}, {
						text: '副班老师',
						value: 2
					}, {
						text: '主班老师',
						value: 3
					}, {
						text: '待加入',
						value: 4
					}],
					value: 0,
					changeHandler: (item) => {
						console.log("筛选:", item)
						this.$refs.dropdown.close()
					}
				}],
				jobs: [{
					name: '副班老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '班主任',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区城关幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '校长',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '语文老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '数学老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '数学老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '数学老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '数学老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}],
				scroll_height: 0,
				window_height: 0,

			}
		},
		onLoad() {
			uni.getSystemInfo({
				success: (res) => {
					this.window_height = res.windowHeight
					this.scroll_height = getJobsHeight(this.window_height, true)
				}
			})
		},
		watch: {},
		methods: {
			onScrollHandler(e) {

				if (e.detail.scrollTop > 50) {
					this.is_show_head = false
					this.scroll_height = getJobsHeight(this.window_height, false)
				} else {
					this.is_show_head = true
					this.scroll_height = getJobsHeight(this.window_height, true)
				}
			},
			upper(e) {

				this.is_show_head = true
				this.scroll_height = getJobsHeight(this.window_height, true)

			},
			handleClick(name) {
				uni.navigateTo({
					url: '/sub/job/detail'
				})
			},
			handleSearch(){
				uni.navigateTo({
					url: '/sub/job/search'
				})
			}
		}
	}
</script>

<style lang="scss">
	.head {


		.carousel {
			// border:solid 1px red;
			touch-action: none;
		}

		.notice_bar {
			// border:solid 1px red;
			// margin-bottom: 9rpx;
			touch-action: none;
		}
	}



	.selector {
		// border: solid 1px red;
		// position: -webkit-sticky;
		// position: sticky;
		// top: 0;
		touch-action: none;

		.container {
			width: 100%;
			border: solid 1px #edeff2;

			.left {

				// border: solid 1px red;
				/deep/ .zb-dropdown-menu__bar {
					box-shadow: none
				}
			}

			.right {

				// border: solid 1px red;
				/deep/ .u-border {
					border-style: none;
				}
			}
		}
	}

	.jobs {
		// border: solid 1px red;
		// border: solid 1px #f1f1f1;
		// margin-top: 10rpx;
		padding: 0 10rpx 0rpx 10rpx;

		// .scroll-content {
		// 	height: 645rpx;
		// }
		// border:solid 1px red;
		.job {
			border: solid 1px #edeff2;
			margin: 0rpx 0;
			border-radius: 10rpx;
			padding: 5rpx 10rpx;

			.name_mount {
				// border: solid 1px #f1f1f1;
				padding: 10rpx 0;

				.job_name {

					font-size: 30rpx;
					font-weight: 1000;
				}

				.mount {

					text-align: right;
					font-size: 25rpx;
					color: #eb8f05
				}
			}

			.benefits {
				// border: solid 1px #f1f1f1;

				height: 80rpx;
				display: flex;
				flex-wrap: wrap;
				justify-content: flex-start;
				align-items: flex-start;

				.item {
					flex-shrink: 0;

					margin: 5rpx 10rpx 5rpx 0;
					border: solid 1px #b1b1b1;
					border-radius: 10rpx;
					padding: 5rpx;
					font-size: 16rpx;
					background-color: #ffffff;
					color: #b1b1b1
				}
			}

			.info {
				// border: solid 1px #f1f1f1;

				.enterprise_name {
					font-size: 25rpx;
				}

				.enterprise_type {
					padding: 5rpx 0;
					font-size: 21rpx;
					color: #b1b1b1
				}

				.enterprise_location {
					width: 100%;
					text-align: right;
					font-size: 25rpx;
				}

			}
		}

	}
</style>