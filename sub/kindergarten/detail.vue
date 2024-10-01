<template>
  <view class="kindergarten-detail">
    <view class="header section">
      <view class="top-row">
        <image class="logo" src="/static/school-logo.png" mode="aspectFill"></image>
        <view class="name-info">
          <text class="name">{{ kindergartenName }}</text>
          <text class="sub-info">{{ kindergartenType }} | {{ classCount }}</text>
        </view>
      </view>
      <view class="address-container">
        <view class="address">
          <u-icon name="map-fill" size="14" color="#666"></u-icon>
          <text>广东省东莞市恒景路276号</text>
        </view>
        <view class="navigate-btn" @click="navigate">
          <text>去导航</text>
        </view>
      </view>
    </view>

    <view class="section">
      <view class="section-title">
        <text>园所介绍</text>
      </view>
      <view class="description-container">
        <text class="description" :class="{ 'truncate': !showFullDescription }">{{ description }}</text>
        <text v-if="description.length > 100" class="expand-btn" @click="toggleDescription">
          {{ showFullDescription ? '收起' : '展开' }}
        </text>
      </view>
      <swiper class="swiper" :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000">
        <swiper-item v-for="(image, index) in schoolImages" :key="index" class="swiper-item">
          <image :src="image" mode="aspectFill" class="swiper-image"></image>
        </swiper-item>
      </swiper>
      <view class="sub-title">特色福利</view>
      <view class="tags">
        <text class="tag" v-for="(tag, index) in tags" :key="index">{{ tag }}</text>
      </view>
    </view>

    <view class="section">
      <view class="section-title">
        <text>正在招聘</text>
      </view>
      <view class="job-card" v-for="(job, index) in jobs" :key="index">
        <view class="job-header">
          <view class="job-title-container">
            <text class="job-title">{{ job.title }}</text>
            <text v-if="job.urgent" class="urgent-tag">急聘</text>
          </view>
          <text class="job-salary">{{ job.salary }}</text>
        </view>
        <view class="job-info">
          <text class="job-details">招聘人数：<span class="highlight">{{ job.recruitCount }}</span>人</text>
          <text class="job-follow"><span class="highlight">{{ job.followCount }}</span>人关注</text>
        </view>
        <view class="job-requirements">
          <text class="requirement" v-for="(req, reqIndex) in job.requirements" :key="reqIndex">{{ req }}</text>
        </view>
      </view>
    </view>

    <view class="bottom-nav">
      <view class="nav-button share">
        <uni-icons type="redo" size="20" color="#FFFFFF"></uni-icons>
        <text class="button-text">分享</text>
      </view>
      <view class="nav-button comment">
        <uni-icons type="chat" size="20" color="#FFFFFF"></uni-icons>
        <text class="button-text">评论</text>
      </view>
      <view class="nav-button follow">
        <uni-icons type="star" size="20" color="#FFFFFF"></uni-icons>
        <text class="button-text">关注</text>
      </view>
    </view>
  </view>
</template>

<script>
import { uniIcons } from '@dcloudio/uni-ui'
export default {
  components: {
    uniIcons
  },
  data() {
    return {
      kindergartenName: '',
      kindergartenType: '幼儿园',
      classCount: '10~15个班',
      tags: ['亲爱假', '社保', '双休', '包吃', '年终奖'],
      schoolImages: [
        'http://124.71.152.98:9090/browser/eduhire/detail_school%2Fschool-image1.jpg',
        'http://124.71.152.98:9090/browser/eduhire/detail_school%2Fschool-image2.jpg',
        'http://124.71.152.98:9090/browser/eduhire/detail_school%2Fschool-image3.jpg',
        'http://124.71.152.98:9090/browser/eduhire/detail_school%2Fschool-image4.jpg'
      ],
      jobs: [
        { 
          title: '副班老师', 
          salary: '2500-3000', 
          recruitCount: 2,
          followCount: 15,
          requirements: ['保育员证', '教师资格证'],
          urgent: true
        },
        { 
          title: '主班老师', 
          salary: '4000-5000', 
          recruitCount: 1,
          followCount: 23,
          requirements: ['教师资格证', '幼师证'],
          urgent: false
        }
      ],
      description: '本园创建于2002年，是一所广东省规范化幼儿园是一所广东省规范化幼儿园是一所广东省规范化幼儿园是一所广东省规范化幼儿园。秉承"以爱育爱,以德育人"的办学理念,致力于为孩子们提供优质的学前教育。我们注重孩子的全面发展，培养他们的创造力、独立思考能力和社交技能。',
      showFullDescription: false
    }
  },
  methods: {
    navigate() {
      console.log('导航到幼儿园');
    },
    toggleDescription() {
      this.showFullDescription = !this.showFullDescription;
    }
  },
  onLoad(option) {
    if (option.name) {
      this.kindergartenName = decodeURIComponent(option.name)
    }
  }
}
</script>

<style lang="scss">
.kindergarten-detail {
  padding: 0.625rem;
  background-color: #FFF3E0;
  font-size: 1rem;

  .section {
    background-color: #FFF;
    margin-bottom: 0.9375rem;
    padding: 0.75rem;
    border-radius: 0.5rem;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  .header {
    .top-row {
      display: flex;
      align-items: center;
      margin-bottom: 0.625rem;

      .logo {
        width: 3.125rem;
        height: 3.125rem;
        border-radius: 0.5rem;
        margin-right: 0.625rem;
      }

      .name-info {
        display: flex;
        flex-direction: column;

        .name {
          font-size: 1.125rem;
          font-weight: bold;
        }

        .sub-info {
          font-size: 0.75rem;
          color: #666;
          margin-top: 0.1875rem;
        }
      }
    }

    .address-container {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #f0f0f0;
      border-radius: 0.5rem;
      padding: 0.375rem 0.75rem;

      .address {
        display: flex;
        align-items: center;
        font-size: 0.875rem;
        color: #666;

        .u-icon {
          margin-right: 0.25rem;
        }
      }

      .navigate-btn {
        background-color: #FFE4B5;
        padding: 0.1875rem 0.5rem;
        border-radius: 0.5rem;
        font-size: 0.875rem;
        color: #333;
      }
    }
  }

  .section-title {
    font-size: 1rem;
    font-weight: bold;
    margin-bottom: 0.625rem;
    color: #333;
    display: inline-block;
    position: relative;

    &::after {
      content: '';
      position: absolute;
      bottom: -0.1875rem;
      left: 0;
      width: 100%;
      height: 0.125rem;
      background-color: #FF9800;
    }
  }

  .description-container {
    position: relative;
    margin-bottom: 0.625rem;

    .description {
      font-size: 0.875rem;
      color: #666;
      line-height: 1.4;

      &.truncate {
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        overflow: hidden;
      }
    }

    .expand-btn {
      position: absolute;
      right: 0;
      bottom: 0;
      background-color: #FFF;
      padding-left: 0.3125rem;
      color: #FF9800;
      font-size: 0.75rem;
    }
  }

  .swiper {
    height: 12.5rem;
    width: 100%;
    border-radius: 0.5rem;
    overflow: hidden;
    margin-bottom: 0.625rem;

    .swiper-item {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100%;
      width: 100%;
    }

    .swiper-image {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }

  .sub-title {
    font-size: 0.875rem;
    font-weight: bold;
    margin-bottom: 0.625rem;
    color: #333;
    display: inline-block;
    position: relative;

    &::after {
      content: '';
      position: absolute;
      bottom: -0.1875rem;
      left: 0;
      width: 100%;
      height: 0.125rem;
      background-color: #FF9800;
    }
  }

  .tags {
    display: flex;
    flex-wrap: wrap;

    .tag {
      padding: 0.25rem 0.5rem;
      margin-right: 0.375rem;
      margin-bottom: 0.375rem;
      border-radius: 0.5rem;
      font-size: 0.875rem;

      &:nth-child(3n+1) {
        background-color: #E8F5E9;
        color: #4CAF50;
      }
      &:nth-child(3n+2) {
        background-color: #E3F2FD;
        color: #2196F3;
      }
      &:nth-child(3n) {
        background-color: #FFF3E0;
        color: #FF9800;
      }
    }
  }

  .job-card {
    background-color: #FFF;
    border-radius: 0.5rem;
    margin-bottom: 0.625rem;
    padding: 0.625rem 0;

    &:not(:last-child) {
      border-bottom: 1px solid #E0E0E0;
    }

    .job-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 0.375rem;

      .job-title-container {
        display: flex;
        align-items: center;

        .job-title {
          font-size: 0.9375rem;
          font-weight: bold;
          color: #333;
          margin-right: 0.3125rem;
        }

        .urgent-tag {
          font-size: 0.75rem;
          color: #FF5722;
          border: 1px solid #FF5722;
          padding: 0.125rem 0.25rem;
          border-radius: 0.5rem;
        }
      }

      .job-salary {
        font-size: 0.9375rem;
        color: #FF9800;
        font-weight: bold;
      }
    }

    .job-info {
      display: flex;
      justify-content: space-between;
      margin-bottom: 0.375rem;

      .job-details, .job-follow {
        font-size: 0.875rem;
        color: #888;
      }

      .job-follow {
        color: #FF9800;
      }
    }

    .job-requirements {
      display: flex;
      flex-wrap: wrap;

      .requirement {
        background-color: #FFF3E0;
        color: #FF9800;
        padding: 0.1875rem 0.375rem;
        margin-right: 0.375rem;
        margin-bottom: 0.1875rem;
        border-radius: 0.5rem;
        font-size: 0.875rem;
      }
    }
  }

  .bottom-nav {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    display: flex;
    height: 2.8125rem;
    box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);

    .nav-button {
      flex: 1;
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      color: #FFF;

      .uni-icons {
        margin-right: 0.3125rem;
      }

      .button-text {
        font-size: 0.875rem;
      }

      &.share {
        background-color: #4CAF50;
      }

      &.comment {
        background-color: #2196F3;
      }

      &.follow {
        background-color: #FF9800;
      }
    }
  }

  padding-bottom: 3.4375rem;
}
</style>