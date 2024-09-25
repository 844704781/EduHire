<template>
	<view class="me">
		<view class="profile item">
			<view class="name_mount">
				<view class="job_name">幼教老师</view>
				<view class="mount">2000-3000元/月</view>
			</view>
			<view class="labels">
				<view v-for="(item,index) in job.job_labels" :key='index'>
					<enterprise-label :item='item'></enterprise-label>
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
					<view class="value">{{job.description.skill}}</view>
				</view>
				<view>
					<view class="key">证书要求</view>
					<view class="value">
						<view class="labels">
							<view v-for="(item,index) in job.description.certificates" :key='index'>
								<enterprise-label :item='item'></enterprise-label>
							</view>
						</view>
					</view>
				</view>
				<view>
					<view class="key">特色福利</view>
					<view class="value">
						<view class="labels">
							<view v-for="(item,index) in job.description.labels" :key='index'>
								<enterprise-label :item='item'></enterprise-label>
							</view>
						</view>
					</view>
				</view>
				<view>
					<view class="key">职位描述</view>
					<view class="value">
						<view v-html="job.description.content"></view>

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
	import job_item from '@/components/common/job-item.vue'
	import enterprise_label from '@/components/common/enterprise-label.vue'

	export default {
		data() {
			return {
				job: {
					job_labels: [{
						text: '无经验',
						color: null,
						bg_color: 'transparent',
						icon: 'bag-fill',
					}, {
						text: '不限',
						color: null,
						bg_color: 'transparent',
						icon: 'woman',
					}, {
						text: '2人',
						color: null,
						bg_color: 'transparent',
						icon: 'man-add-fill',
					}, {
						text: '大专',
						color: null,
						bg_color: 'transparent',
						icon: 'file-text-fill',
					}],
					description: {
						skill: `唱跳rap篮球`,
						certificates: [{
							text: '教师资格证',
							color: '#eb8f05',
							bg_color: '#ffeed4'
						}, {
							text: '幼师证',
							color: '#eb8f05',
							bg_color: '#ffeed4'
						}],
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
						}],
						content: `1.热爱教育行业，责任心强<br>
						2.有幼师证`
					},
				},

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
			'job-item': job_item,
			'enterprise-label': enterprise_label
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
				margin: 30rpx 0 0 0;

				.label {
					/deep/ .u-tag {

						border-color: transparent;
					}

					/deep/ .u-icon__icon * {

						color: #e1e1e1;
					}

					/deep/ .u-tag__text * {

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
			margin: 20rpx 0 10rpx 0;

			/deep/ .label {
				margin-right: 15rpx;
			}
		}
	}
</style>