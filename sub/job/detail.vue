<template>
	<view class="me">
		<view class="profile item">
			<view class="name_mount">
				<view class="job_name">幼教老师</view>
				<view class="mount">2000-3000元/月</view>
			</view>
			<view class="labels">
				<view class="label">
					<u-tag plain icon='bag-fill' text="无经验" size="mini"></u-tag>
				</view>
				<view class="label">
					<u-tag plain icon='woman' text="不限" size="mini"></u-tag>
				</view>
				<view class="label">
					<u-tag plain icon='man-add-fill' text="2人" size="mini"></u-tag>
				</view>
				<view class="label">
					<u-tag plain icon='file-text-fill' text="大专" size="mini"></u-tag>
				</view>
			</view>
			<view class="location_navigation">
				<view class="location">
					赣州市·赣县区
				</view>
				<view class="navigation">
					<u-button text="去导航" shape="circle" size='mini' type="warning" color="#f9ae3d" plain></u-button>
				</view>
			</view>
		</view>
		<view class="contact item">
			<u-row>
				<u-col :span="2">
					<view>
						<u-avatar
							src="https://vkceyugu.cdn.bspapp.com/VKCEYUGU-8f7e1d02-dcb1-46ba-90db-ae32fea44f22/4b2bf3e5-68ad-4a15-b0d1-00b7a5246eab.png"></u-avatar>
					</view>
				</u-col>
				<u-col :span="8">
					<view class="enterprise">
						<view class="enterprise_name">赣县区翰思学校</view>
						<view class="enterprise_type">幼儿园私立园</view>
					</view>
				</u-col>
				<u-col :span='2'>
					<view>
						<view>
							<u-icon name='phone-fill' size='30' label="＞"></u-icon>
						</view>
					</view>
				</u-col>
			</u-row>
		</view>
		<view class="detail item">
			<view class="title">职位描述</view>
			<view class="content">
				<view>
					<view class="key">技能要求</view>
					<view class="value">唱跳rap篮球</view>
				</view>
				<view>
					<view class="key">证书要求</view>
					<view class="value">
						<view class="labels">
							<view class="label">
								<u-tag text="教师资格证" size="mini" color='#eb8f05' bg-color="#ffeed4"
									border-color="transparent"></u-tag>
							</view>
							<view class="label">
								<u-tag text="身份证" size="mini" color='#eb8f05' bg-color="#ffeed4"
									border-color="transparent"></u-tag>
							</view>
						</view>
					</view>
				</view>
				<view>
					<view class="key">特色福利</view>
					<view class="value">
						<view class="labels">
							<view class="label">
								<u-tag text="寒暑假" size="mini" color='#eb8f05' bg-color="#ffeed4"
									border-color="transparent"></u-tag>
							</view>
							<view class="label">
								<u-tag text="节日福利" size="mini" color='#fd008d' bg-color="#ffc3e0"
									border-color="transparent"></u-tag>
							</view>

							<view class="label">
								<u-tag text="社保" size="mini" color='#0064ff' bg-color="#adcbf9"
									border-color="transparent"></u-tag>
							</view>
							<view class="label">
								<u-tag text="双休" size="mini" color='#fdd400' bg-color="#fff8d4"
									border-color="transparent"></u-tag>
							</view>
						</view>
					</view>
				</view>
				<view>
					<view class="key">职位描述</view>
					<view class="value">
						<view>1.热爱教育行业，责任心强</view>
						<view>2.有幼师证</view>
					</view>
				</view>
			</view>
		</view>
		<view class="recommend item">
			<view class="title">相似职位</view>
			<u-transition :show='true' mode='fade' duration='200'>
				<view v-for="(item,index) in jobs" :key='index'>
					<job-item :item='item'></job-item>
				</view>
			</u-transition>
		</view>
	</view>
</template>

<script>
	import jobItem from '@/components/common/job-item.vue'
	export default {
		data() {
			return {
				jobs: [{
					name: '副班老师',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '保育员', '包吃', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证'],
					enterprise_name: '赣州市章贡区金色摇篮幼儿园',
					enterprise_type: '幼儿园',
					enterprise_location: '赣州市·章贡区'
				}, {
					name: '班主任',
					mount: '2000-3000元/月',
					tags: ['教师资格证', '包住', '寒暑假', '全勤奖', '年终奖', '教师资格证'],
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
				}]
			}
		},
		components: {
			'job-item': jobItem
		}
	}
</script>

<style lang="scss" scoped>
	.me {
		margin: 0 20rpx;

		.item {
			margin: 30rpx 0;
		}

		.profile {
			border: solid 1px #e1e1ef;
			border-radius: 20rpx;
			padding: 10rpx;

			.name_mount {
				display: flex;
				justify-content: space-between;
				align-items: center;
				width: 100%;

				.job_name {
					font-size: 38rpx;
					font-weight: 500;
				}

				.mount {
					font-size: 30rpx;
					color: #eb8f05;
				}
			}

			.labels {
				display: inline-flex;

				.label {
					margin: 30rpx 30rpx 10rpx 0;

					/deep/ .u-tag {
						border-color: transparent;
					}

					/deep/ .u-icon__icon {
						color: #e1e1e1;
					}

					/deep/ .u-tag__text {
						color: #5a5a5a;
					}
				}
			}

			.location_navigation {
				margin: 10rpx 0;
				padding: 10rpx 0;

				display: flex;
				justify-content: space-between;
				align-items: center;
				width: 100%;

				.location {
					font-size: 25rpx;
					color: #404040;
				}
			}

		}

		.contact {
			border: solid 1px #e1e1ef;
			border-radius: 20rpx;
			padding: 10rpx;

			.enterprise {
				.enterprise_name {
					margin: 10rpx 0;
				}

				.enterprise_type {
					margin: 10rpx 0;
					font-size: 20rpx;
					color: #a1a1a1;
				}
			}
		}

		.detail {
			border: solid 1px #e1e1ef;
			border-radius: 20rpx;
			padding: 10rpx;

			.content {

				padding: 30rpx 5rpx 0rpx 5rpx;

				.key {
					font-size: 25rpx;
					font-weight: 600;
				}

				.value {
					padding: 20rpx 0;
					font-size: 20rpx;
					font-weight: 500;
					color: #717171
				}
			}
		}

		.recommend {
			border: solid 1px #e1e1ef;
			border-radius: 20rpx;
			padding: 10rpx;

			.title {
				margin-bottom: 20rpx;
			}
		}

		.title {

			font-size: 35rpx;
			font-weight: 500;
		}

		.labels {
			display: inline-flex;

			.label {
				padding: 10rpx 20rpx 10rpx 0;
			}
		}
	}
</style>