<template>
	<view>
		<view class='job' @click="handleClick(item.name)">
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
	</view>
</template>

<script>
	export default {
		name: 'job-item',
		data() {
			return {

			}
		},
		props: ['item'],
		methods: {
			handleClick(name) {
				uni.navigateTo({
					url: '/sub/job/detail'
				})
			},
		}
	}
</script>

<style lang="scss" scoped>
	.job {
		margin: 0 0 40rpx 0;
		padding: 10rpx 10rpx;
		border: solid 1px #edeff2;
		border-radius: 10rpx;
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
</style>