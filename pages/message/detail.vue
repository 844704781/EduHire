<template>
	<view class="app" ref="app">
		<view class="func">
			<u-row>
				<u-col :span='4'>
					<view class="item">
						<u-icon name="phone-fill" label="打电话" color='#f9b246' label-pos="bottom" size="28"
							label-size="10" label-color='#a1a1a1'></u-icon>
					</view>
				</u-col>
				<u-col :span='4'>
					<view class="item">
						<u-icon name="file-text-fill" label="投递简历" color='#f9b246' label-pos="bottom" size="28"
							label-size="10" label-color='#a1a1a1'></u-icon>
					</view>

				</u-col>
				<u-col :span='4'>
					<view class="item">
						<u-icon name="attach" label="发送附件" color='#f9b246' label-pos="bottom" size="28" label-size="10"
							label-color='#a1a1a1'></u-icon>
					</view>
				</u-col>
			</u-row>
		</view>
		<view class="enterprise">
			<view class="enterprise_info">
				<u-row>
					<u-col :span='2'>
						<u-avatar
							src="https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png"></u-avatar>
					</u-col>
					<u-col :span='10'>
						<view class="enterprise_name">{{enterprise.name}}</view>
						<view class="enterprise_location">{{enterprise.location}}</view>
					</u-col>
				</u-row>
			</view>
			<view class="labels">
				<view v-for="(item,index) in enterprise.labels" :key='index'>
					<enterprise-label :item='item'></enterprise-label>
				</view>
			</view>
			<view class="who">
				由你发起沟通
			</view>
		</view>

		<view class="chat">
			<view v-for="(item,index) in chat.messages" :key='index'>
				<chat-item :item='item'></chat-item>
			</view>
		</view>

		<view class="input_content">
			<u-row>
				<u-col :span="12">
					<u--input class="input_btn" v-model='input_text' @confirm="handleEnter"></u--input>
				</u-col>
			</u-row>
		</view>
	</view>
</template>

<script>
	import enterprise_label from '@/components/common/enterprise-label.vue'
	import chat_item from '@/components/chat/chat-item.vue'
	export default {
		data() {
			return {
				input_text: '',
				enterprise: {
					name: '赣州市江湾一号森林公园',
					location: '赣州市章贡区',
					labels: [{
						text: '寒暑假',
						color: '#eb8f05',
						bg_color: '#ffeed4'
					}, {
						text: '节日福利',
						color: '#fd008d',
						bg_color: '#ffc3e0'
					}, {
						text: '社保',
						color: '#0064ff',
						bg_color: '#adcbf9'
					}, {
						text: '双休',
						color: '#fdd400',
						bg_color: '#fff8d4'
					}]
				},
				chat: {
					current_user_uuid: 'user1',
					messages: [{
							"uuid": "msg3",
							"senderId": "user2",
							"is_current": false,
							"name": "江西师范大学",
							"avatar": "https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=logo/48b9713f8085f066cd3ab586ed27a2507667f8da.jpg@240w_240h_1c_1s_!web-avatar-search-videos.webp",
							"receiverId": "user1",
							"content": "听说我们县要招聘35名硕士研究生学历的教师，这对提升教育质量非常重要。你打算申请吗？",
							"datetime": "2024-09-20 10:15:30",
							"timestamp": 1726826130
						},
						{
							"uuid": "msg4",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "我考虑申请这个职位，机会难得。你觉得报名需要准备些什么材料？",
							"datetime": "2024-09-20 10:17:45",
							"timestamp": 1726826265
						},
						{
							"uuid": "msg5",
							"senderId": "user2",
							"is_current": false,
							"name": "江西师范大学",
							"avatar": "https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=logo/48b9713f8085f066cd3ab586ed27a2507667f8da.jpg@240w_240h_1c_1s_!web-avatar-search-videos.webp",
							"receiverId": "user1",
							"content": "简历要突出教学经历和专业研究方向。可能还需要一些推荐信，增加竞争力。",
							"datetime": "2024-09-20 10:18:30",
							"timestamp": 1726826310
						},
						{
							"uuid": "msg6",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "我打算强调我的教学成果和学生反馈，希望能通过这些展示我的能力。",
							"datetime": "2024-09-20 10:19:15",
							"timestamp": 1726826355
						},
						{
							"uuid": "msg7",
							"senderId": "user2",
							"is_current": false,
							"name": "江西师范大学",
							"avatar": "https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=logo/48b9713f8085f066cd3ab586ed27a2507667f8da.jpg@240w_240h_1c_1s_!web-avatar-search-videos.webp",
							"receiverId": "user1",
							"content": "还可以准备一份教学设计案例，展示自己的教学理念和方法。",
							"datetime": "2024-09-20 10:20:00",
							"timestamp": 1726826400
						},
						{
							"uuid": "msg8",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "这是个好主意！有机会的话，可以互相交流一下案例，完善内容。",
							"datetime": "2024-09-20 10:21:10",
							"timestamp": 1726826470
						},
						{
							"uuid": "msg9",
							"senderId": "user2",
							"is_current": false,
							"name": "江西师范大学",
							"avatar": "https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=logo/48b9713f8085f066cd3ab586ed27a2507667f8da.jpg@240w_240h_1c_1s_!web-avatar-search-videos.webp",
							"receiverId": "user1",
							"content": "我还听说面试环节会有模拟授课，准备一下课堂表现也很重要。",
							"datetime": "2024-09-20 10:22:00",
							"timestamp": 1726826520
						},
						{
							"uuid": "msg10",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "对的，模拟授课能展示我们的教学能力。咱们提前练习一下吧！",
							"datetime": "2024-09-20 10:23:15",
							"timestamp": 1726826595
						},
						{
							"uuid": "msg11",
							"senderId": "user2",
							"is_current": false,
							"name": "江西师范大学",
							"avatar": "https://wallpaper.cospapa.cn/oss/v1/get?bucket=eduhire&filename=logo/48b9713f8085f066cd3ab586ed27a2507667f8da.jpg@240w_240h_1c_1s_!web-avatar-search-videos.webp",
							"receiverId": "user1",
							"content": "好的，有时间我们一起讨论具体的授课内容，争取表现出色！",
							"datetime": "2024-09-20 10:24:00",
							"timestamp": 1726826640
						},
						{
							"uuid": "msg12",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "期待我们的合作，祝我们都能成功！",
							"datetime": "2024-09-20 10:25:30",
							"timestamp": 1726826730
						},
						{
							"uuid": "msg12",
							"is_current": true,
							"name": "watermelon",
							"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
							"senderId": "user1",
							"receiverId": "user2",
							"content": "你猜猜我是谁",
							"datetime": "2024-09-20 10:25:30",
							"timestamp": 1726826730
						}
					]

				}
			}
		},
		components: {
			'enterprise-label': enterprise_label,
			'chat-item': chat_item,
		},
		onLoad() {

			this.scrollToBottom(500)

		},
		methods: {
			scrollToBottom(duration = 0) {
				setTimeout(() => {
					const query = uni.createSelectorQuery();
					query.select('.app').boundingClientRect()
					query.exec(rect => {
						let height = rect[0].height
						uni.pageScrollTo({
							scrollTop: height,
							duration: duration
						});

					});
				}, 100)
			},
			handleEnter() {
				if (this.input_text == null || this.input_text == '') {
					return;
				}
				this.chat.messages.push({
					"uuid": "msg12",
					"is_current": true,
					"name": "watermelon",
					"avatar": "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png",
					"senderId": "user1",
					"receiverId": "user2",
					"content": this.input_text,
					"datetime": "2024-09-20 10:25:30",
					"timestamp": 1726826730
				})
				this.input_text = ''
				this.scrollToBottom(100)
			}
		},
	}
</script>

<style lang="scss" scoped>
	.app {
		.func {
			border-bottom: solid 1px #f1f1f1;
			position: sticky;
			top: 0;
			left: 0;
			right: 0;
			z-index: 1000;
			background-color: #ffffff;

			.item {
				padding: 30rpx;
			}
		}

		//#ifdef H5
		.func {
			top: 44px;
		}

		//#endif
		.enterprise {
			border: solid 1px #f2f3f6;
			border-radius: 30rpx;
			margin: 10rpx 30rpx 10rpx 30rpx;
			padding: 0 10rpx;

			.enterprise_info {
				.enterprise_name {
					padding: 10rpx 0;
					font-size: 28rpx;
				}

				.enterprise_location {
					padding: 5rpx 0;
					width: 100%;
					font-size: 20rpx;
					font-weight: 300;
					color: #999999;
				}
			}

			.labels {
				padding: 20rpx 0;
				display: inline-flex;

				/deep/ .label {
					margin-right: 20rpx;
				}
			}

			.who {
				padding: 10rpx 0;
				border-top: solid 1px #edeff2;
				color: #c5c5c5;
				font-size: 25rpx;
			}
		}

		.input_content {
			background-color: #ffffff;
			border-top: solid 1px #f1f1f1;
			position: sticky;
			bottom: 0;
			padding: 10rpx 50rpx 50rpx 50rpx;
		}

		//#ifdef H5
		.input_content {
			padding: 10rpx 50rpx 20rpx 50rpx;
		}

		//#endif
	}
</style>