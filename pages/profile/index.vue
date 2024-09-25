<template>
	<view class='profile'>
		<view class="info ">
			<view class="me">
				<u-row>
					<u-col :span='3'>
						<u-avatar :src="info.avatar_url" size='75'></u-avatar>
					</u-col>
					<u-col :span='9'>
						<view class="name">{{info.name}}</view>
						<view class="status">
							<u-tag icon='arrow-down' :text="info.status" bg-color='#a3a3a3' size='mini'
								border-color="transparent" @click='handleClick'></u-tag>
						</view>
					</u-col>
				</u-row>
			</view>
			<view class="overview">
				<u-row>
					<u-col :span='3'>
						<view class="item">
							<view class="count">299</view>
							<view class="name">沟通过</view>
						</view>
					</u-col>

					<u-col :span='3'>
						<view class="item">
							<view class="count">100</view>
							<view class="name">已投递</view>
						</view>
					</u-col>

					<u-col :span='3'>
						<view class="item">
							<view class="count">40</view>
							<view class="name">收藏</view>
						</view>
					</u-col>

					<u-col :span='3'>
						<view class="item">
							<view class="count">20</view>
							<view class="name">已投递</view>
						</view>
					</u-col>

				</u-row>
			</view>
		</view>
		<view class="recruit_now ">
			<u-row>
				<u-col span="2">
					<u-icon name="plus-people-fill" color="#f9ae3d" size="45"></u-icon>
				</u-col>
				<u-col span="7">
					<view>
						<view class="title1">我要招聘</view>
						<view class="title2">更专业，更有效率的选择</view>
					</view>
				</u-col>
				<u-col span="3"><u-button size='small' type="warning" shape="circle" text="去招聘"></u-button></u-col>
			</u-row>
		</view>
		<view class="common_tools ">
			<view class="title">常用功能</view>
			<view class="tools">
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/profile.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">我的简历</view>
				</view>
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/profile-file.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">附件简历</view>
				</view>
			</view>
		</view>
		<view class="common_tools ">
			<view class="title">其他功能</view>
			<view class="tools">
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/settings.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">设置</view>
				</view>
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/browsing-history.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">浏览记录</view>
				</view>
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/business-cooperation.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">商务合作</view>
				</view>
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/chat-support.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">在线客服</view>
				</view>
				<view class="item">
					<view class="logo">
						<u--image :showLoading="true"
							src="https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=tools/feedback.png"
							:width='logo_size' :height='logo_size'></u--image>
					</view>
					<view class="name">问题反馈</view>
				</view>
			</view>
		</view>
		<view class="exit ">
			<view class="exit_button">
				<u-button :plain="true" shape="circle" type='error' text="退出登录" :closeOnClickOverlay="true"
					:closeOnClickAction="true"></u-button>
			</view>
		</view>


		<u-action-sheet :actions="status_obj.status_list" :title="status_obj.title"
			:show="show_status_obj"  @select="selectClick" @close="closeAction" :closeOnClickOverlay="true" :closeOnClickAction="true" ></u-action-sheet>

	</view>
</template>

<script>
	export default {
		data() {
			return {
				logo_size: "60rpx",

				info: {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: 'watermelon',
					status: '离职-随时到岗'
				},
				
				show_status_obj: false,
				status_obj: {
					title: '求职状态',
					status_list: [{
						name: '离职-随时到岗',


					}, {
						name: '在职-月内到岗',


					}, {
						name: '在职-考虑机会',


					}, {
						name: '在职-暂不考虑',


					}]
				}

			}
		},
		onLoad() {

		},
		methods: {
			handleClick() {
				this.show_status_obj = true
			},
			selectClick(target){
				this.info.status=target.name
				this.show_status_obj = false
			},
			closeAction(){
				this.show_status_obj = false
			}
			
		}
	}
</script>

<style lang="scss">
	.profile {


		.info {
			.me {
				// border: solid 1px #b1b1b1;
				padding: 0 10rpx;

				.name {
					font-size: 50rpx;
					margin: 10rpx 0;
				}

				.status {
					display: flex;

					// /deep/ .u-button {
					// 	display: inline-flex;
					// 	width: auto;
					// 	white-space: nowrap;
					// 	/* 防止子元素换行 */
					// 	overflow: hidden;

					// 	background: #f9ae3d;
					// 	border-radius: 50rpx;

					// }

					// /deep/ .u-icon__icon span {
					// 	display: inline-flex;
					// 	font-size: 10rpx;
					// 	color: #ffffff;

					// }

					// /deep/ .u-button__text span {
					// 	display: inline-flex;
					// 	font-size: 15rpx;

					// 	color: #ffffff;

					// }
				}
			}

			.overview {
				border: solid 1px #e5e5e5;
				margin: 20rpx 30rpx;
				border-radius: 20rpx;

				.item {
					text-align: center;

					.count {
						// border: solid 1px #b1b1b1;
						font-size: 38rpx;
						font-weight: 500;
						padding: 10rpx;
					}

					.name {
						// border: solid 1px #b1b1b1;
						font-size: 20rpx;
						font-weight: 400;
						color: #b1b1b1;
						padding: 10rpx;
					}
				}
			}

		}

		.recruit_now {
			border: solid 1px #e5e5e5;
			margin: 30rpx 30rpx;
			padding: 15rpx 10rpx;
			border-radius: 20rpx;

			.title1 {
				font-size: 25rpx;
				font-weight: 100;
				margin: 10rpx 0;
			}

			.title2 {
				font-size: 20rpx;
				font-weight: 50;
				margin: 10rpx 0;
			}
		}

		.common_tools {
			border: solid 1px #e5e5e5;
			margin: 30rpx 30rpx;
			padding: 15rpx 10rpx;
			border-radius: 20rpx;

			.title {
				font-size: 30rpx;
				font-weight: 1000;
			}

			.tools {
				display: flex;
				flex-wrap: wrap;
				margin: 20rpx 0 0 0;

				.item {
					// border: solid 1px red;
					width: 25%;
					margin: 10rpx 0;

					// padding: 10rpx;
					.logo {
						// border: solid 1px red;
						display: flex;
						justify-content: center;
					}

					.name {
						// border: solid 1px red;
						font-size: 20rpx;
						text-align: center;
						color: #b1b1b1;
						margin: 10rpx 0;
					}
				}
			}
		}

		.exit {
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			margin: 30rpx 0;
			height: 300rpx;

			.exit_button {
				width: 50%;
			}
		}
	}
</style>