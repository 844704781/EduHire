<template>
	<view class="message">
		<view>
			<scroll-view :style="{height: scroll_height+'rpx'}" scroll-y show-scrollbar scroll-with-animation>
				<view v-for="(item,index) in messages" :key='index' class="item" @click="handleClick(item.name)">
					<u-row>
						<u-col span="2">
							<u-avatar :src="item.avatar_url"></u-avatar>
						</u-col>
						<u-col span="6">
							<view class="mid">
								<view class="top">
									<view class="name">{{item.name}}</view>
									<view class="enterprise_name">{{item.enterprise_name}}</view>
								</view>
								<view class="message">{{item.message_text}}</view>
							</view>
						</u-col>
						<u-col span="3" :offset="1">
							<view class="right">
								<view class="date">{{item.date}}</view>
								<view class="tip" :style='item.type_style'>{{item.tip}}</view>
							</view>
						</u-col>
					</u-row>
				</view>
			</scroll-view>
		</view>
	</view>
</template>

<script>
	/**
	 * 自适应jobs的总高度
	 */
	function getMessagesHeight(height, isShowSwiper = true) {
		const titleHeight = 0
		const swiperHeight = 0
		const noticeBarHeight = 0
		const selectorHeight = 0
		const bottomHeight = 0
		let otherHeight
		if (isShowSwiper) {
			otherHeight = titleHeight + swiperHeight + noticeBarHeight + selectorHeight + bottomHeight
		} else {
			otherHeight = titleHeight + selectorHeight + bottomHeight
		}
		return (height - otherHeight) * 2
	}

	function handleTipStyle(type) {
		if (type == 'unread_by_me') {
			return 'background-color: #ff0000;'
		} else if (type = 'unread_by_other') {
			return 'background-color: #b1b1b1b1;'
		} else {
			return 'background-color: #b1b1b1b1;'
		}
	}

	function handleTipText(tip_text, max_length) {

		if (tip_text.length > max_length) {
			return tip_text.substring(0, max_length) + '...'
		} else {
			return tip_text
		}
	}
	export default {
		data() {
			return {
				scroll_height: 0,
				messages: [{
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小李',
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					message: '你好,我想了解下这个工作',
					date: '2024/9/6',
					type: 'unread_by_other', //对方已读
					tip: '已读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我想了解下这个工作', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小周',
					enterprise_name: '赣州市章贡区城关幼儿园',
					message: '恭喜您，这边对您非常满意，欢迎入职',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+1',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('恭喜您，这边对您非常满意，欢迎入职', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小王',
					enterprise_name: '赣州市章贡区横水小学',
					message: '你好,我对贵校这份工作很感兴趣,希望...',
					date: '2024/9/6',
					type: 'unread_by_other', //对方未读
					tip: '对方未读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我对贵校这份工作很感兴趣,希望...', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小赖',
					enterprise_name: '赣州市章贡区横水中学',
					message: '我校最近在招人，希望与您进一步沟...',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+3',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('我校最近在招人，希望与您进一步沟...', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小李',
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					message: '你好,我想了解下这个工作',
					date: '2024/9/6',
					type: 'unread_by_other', //对方已读
					tip: '已读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我想了解下这个工作', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小周',
					enterprise_name: '赣州市章贡区城关幼儿园',
					message: '恭喜您，这边对您非常满意，欢迎入职',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+1',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('恭喜您，这边对您非常满意，欢迎入职', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小王',
					enterprise_name: '赣州市章贡区横水小学',
					message: '你好,我对贵校这份工作很感兴趣,希望...',
					date: '2024/9/6',
					type: 'unread_by_other', //对方未读
					tip: '对方未读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我对贵校这份工作很感兴趣,希望...', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小赖',
					enterprise_name: '赣州市章贡区横水中学',
					message: '我校最近在招人，希望与您进一步沟...',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+3',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('我校最近在招人，希望与您进一步沟...', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小李',
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					message: '你好,我想了解下这个工作',
					date: '2024/9/6',
					type: 'unread_by_other', //对方已读
					tip: '已读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我想了解下这个工作', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小周',
					enterprise_name: '赣州市章贡区城关幼儿园',
					message: '恭喜您，这边对您非常满意，欢迎入职',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+1',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('恭喜您，这边对您非常满意，欢迎入职', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小王',
					enterprise_name: '赣州市章贡区横水小学',
					message: '你好,我对贵校这份工作很感兴趣,希望...',
					date: '2024/9/6',
					type: 'unread_by_other', //对方未读
					tip: '对方未读',
					type_style: handleTipStyle('unread_by_other'),
					message_text: handleTipText('你好,我对贵校这份工作很感兴趣,希望...', 13)
				}, {
					avatar_url: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png',
					name: '小赖',
					enterprise_name: '赣州市章贡区横水中学',
					message: '我校最近在招人，希望与您进一步沟...',
					date: '2024/8/6',
					type: 'unread_by_me', //我方未读
					tip: '+3',
					type_style: handleTipStyle('unread_by_me'),
					message_text: handleTipText('我校最近在招人，希望与您进一步沟...', 13)
				}]
			}
		},
		onLoad() {
			uni.getSystemInfo({
				success: (res) => {
					this.window_height = res.windowHeight
					this.scroll_height = getMessagesHeight(uni.getSystemInfoSync().screenHeight, true)
				}
			})
			
		},
		methods: {
			handleClick(name){
				uni.navigateTo({
					url: '/pages/message/detail'
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
	.message {
		margin: 0 20rpx;
		.item {
			border-bottom: solid 1px #e5e5e5;
			padding: 10rpx 0;
			.mid {
				width: 100%;

				.top {
					display: flex;
					justify-content: space-between;
					align-items: center;
					// border: solid 1px red;
					padding: 10rpx 0;

					.name {
						// border: solid 1px red;
						font-size: 30rpx;
						font-weight: 550;
						width: 25%;
					}

					.enterprise_name {
						
						width: 75%;
						font-size: 18rpx;
						font-weight: 400;
						color: #b1b1b1;
					}
				}

				.message {
					// border: solid 1px red;
					padding: 10rpx 0;
					font-size: 20rpx;
					color: #b1b1b1;
				}
			}

			.right {
				// border: solid 1px red;
				text-align: right;

				.date {
					font-size: 20rpx;
				}

				.tip {
					font-size: 20rpx;
					display: inline-block;
					border-radius: 8rpx;
					color: #ffffff;
				}
			}
		}
	}
</style>