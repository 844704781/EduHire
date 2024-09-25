<template>
	<view class="item">

		<view class="current" v-if="item.is_current">
			<view class="message">
				<view class="content">
					{{item.content}}
				</view>
			</view>
			<view class="logo">
				<u-avatar :src="item.avatar"></u-avatar>
			</view>
		</view>
		<view class="sender" v-else>
			<view class="logo">
				<u-avatar :src="item.avatar"></u-avatar>
			</view>
			<view class="message">
				<view class="name_time">
					<view class="name">{{item.name}}</view>
					<view class="time">{{item.datetime}}</view>
				</view>
				<view class="content">
					{{item.content}}
				</view>
			</view>
		</view>

	</view>
</template>

<script>
	export default {
		data() {
			return {
				name: 'chat-item',

			}
		},
		props: ['item']
	}
</script>

<style lang="scss" scoped>
	.item {
		.current {
			display: flex;
			justify-content: flex-end;
			align-items: center;
			margin: 50rpx 0;

			.logo {
				padding: 0 10rpx 0 10rpx;
			}

			.message {
				padding: 0 10rpx;
				display: flex;
				justify-content: flex-end;
				width: 100%;
				.content {
					max-width: 80%;
					padding: 15rpx 20rpx;
					font-size: 26rpx;
					background-color: #ff9a00;

					border-radius: 8rpx;
					letter-spacing: 0.10em;
					line-height: 1.6;
					/* 根據需要調整行高 */

				}
			}
		}
	}

	.item {
		.sender {
			display: flex;

			.logo {

				padding: 30rpx 10rpx 0 10rpx;
			}

			.message {

				padding: 0 10rpx;

				.name_time {
					padding: 10rpx 0;
					display: flex;

					flex-direction: row;
					align-items: center;

					.name {
						font-size: 22rpx;
						color: #999999;
					}

					.time {
						font-size: 20rpx;
						color: #9f9f9f;
						margin-left: 20rpx;
					}
				}

				.content {

					max-width: 80%;
					padding: 15rpx 20rpx;
					font-size: 26rpx;
					// background-color: #ff9a00;
					background-color: #ffd492;
					border-radius: 8rpx;
					letter-spacing: 0.10em;
					line-height: 1.6;
					/* 根據需要調整行高 */

				}
			}
		}

	}
</style>