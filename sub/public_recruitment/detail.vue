<template>
	<view>
		<view class="title">
			{{article.title}}
		</view>
		<view class="source">
			<u-row>
				<u-col :span='4'>
					<view class="enterprise_name"> {{article.enterprise_name}}</view>
				</u-col>
				<u-col :span='4'>
					<view class="datetime"> {{article.datetime}}</view>
				</u-col>
				<u-col :span='4'>
					<view class="location">{{article.location}}</view>
				</u-col>

			</u-row>
		</view>
		<view class="content">
			<view v-html="formattedContent"></view>
		</view>
	</view>
</template>

<script>
	export default {

		data() {
			return {
				article: {
					title: '赣州市于都县2024年公开招聘硕士研究生学历教师公告',
					enterprise_name: '于都县人民政府',
					datetime: '2024-06-14',
					location: '江西 赣州',
					content: `为全面推进我县教育高质量发展，引进优秀人才，提升教师队伍素质，经县人民政府研究，并报市人社局备案同意，决定面向社会公开招聘事业编制硕士研究生学历教师35名，现将有关事项公告如下：

一、招聘岗位及数量

计划招聘硕士研究生学历事业编制教师35名。具体招聘岗位、招聘学科人数及所需资格条件详见《赣州市于都县2024年公开招聘硕士研究生学历教师岗位表》（附件1）。

二、招聘原则及方法

坚持“公开、平等、竞争、择优”的原则，实行严格考核、宁缺勿滥、择优聘用。本次招聘采取直接面试考核的方式进行。面试成绩为100分，面试成绩即为总成绩，保留两位小数，尾数四舍五入。

三、招聘条件

（一）应具备的基本条件

1.具有中华人民共和国国籍；

2.遵守中华人民共和国宪法和法律，拥护中国共产党领导和社会主义制度；

3.热爱教育事业，遵纪守法，品行端正，无不良记录；

4.具备招聘岗位所需的资格及技能要求；

5.具有适应职位要求的身体条件和心理素质。

（二）下列人员不具备报考资格

1.曾受过刑事处罚，曾被开除中国共产党党籍或公职的；

2.正在接受违法违纪审查、审计尚未终结的；

3.尚未解除党纪政纪处分或正在接受纪律审查的人员；

4.现役军人、试用期内的公务员及参照公务员管理机关（单位）工作人员、试用期内的事业单位工作人员；

5.在读的普通高校全日制非2024届毕业生不得以过去取得的学历报考；

6.有服务期要求且仍在服务期内的机关事业单位正式在编人员（含编制备案制人员、用人备案数人员）；

7.于都县在编教师；

8.在各级公务员、事业单位招考中因严重违纪被取消考试资格，仍在禁考期内的;

9.被依法列为失信联合惩戒对象的、法律法规和政策规定不得聘用为事业单位人员的其他情形；

此外，根据《事业单位人事管理回避规定》，报考人员不得报考聘用后即构成回避关系的岗位。

（三）专业、年龄、学历学位及其他条件

1.详见各招聘岗位具体要求《赣州市于都县2024年公开招聘硕士研究生学历教师岗位表》（附件1），考生在报名期间（截止2024年6月27日前）须满足本次招聘的所有条件。

2.专业条件：考生所学专业以《江西省中小学教师招聘岗位专业要求参照目录》（2024年修订）为准。专业要求为大类的，考生所学专业只要符合其中任何一个分类目录，即可报考；招聘岗位要求具体专业的，考生所学专业应与招聘岗位要求的专业一致方可报考，其中体育专业教师所学专修项目还须与招聘岗位要求的专修项目（含国家二级及以上运动员证书）一致方可报考。若报考人员所学专业未列入《参照目录》的，可以选择招聘岗位中的相近专业报考，其所学专业须与报考岗位要求专业的学科或专业学位类别相同，且主要必修课程基本一致，并在资格审核时提供招生简章、毕业证书、所学专业课程成绩单（须毕业院校的教务处或研究生院盖章）、毕业院校专业设置的说明等材料。

3.年龄条件：报考人员须年满18周岁，35周岁以下。年龄计算方法为：18周岁以上是指2006年6月17日以前出生，35周岁以下是指1988年6月17日以后出生（注：6月17日为报名第一天）。

4．学历学位及其他条件：

（1）岗位要求的学历学位均指本岗位招聘最低条件（含本条件）。报考人员应在报考前取得国家承认并符合职位要求的学历学位（2024年应届毕业生须在2024年8月31日前取得相应的学历学位并向县教科体局提供相应的学历、学位等证书材料原件，否则取消聘用资格）。

（2）具备与所报岗位相应学科的教师资格证（暂未取得教师资格证的，须在2024年8月31日前取得相应学科的教师资格证）。

（3）限高校应届毕业生报考的岗位，报考人员须为通过全国统一的高考或研究生入学考试，在国内普通高等学校或承担研究生教育任务的科研机构就读，且就读期间人事关系（个人人事档案、工资关系）和组织关系转入就读院校或科研机构，于2024年8月31日前毕业的2024届普通高校毕业生（应届博士毕业生可放宽到2024年12月31日）。除2024届普通高校毕业生外，择业期内未落实工作单位的普通高校毕业生（即：国家统一招生的普通高校毕业生离校时和在国家规定的2年择业期内未落实工作单位，档案、组织关系等仍保留在原毕业学校或保留在各级毕业生就业主管部门、毕业生就业指导服务中心、各级人才交流服务机构和各级公共就业服务机构的毕业生）也可报考限高校应届毕业生的岗位。

2023年9月1日至报名截止日期间取得国（境）外学历学位并已完成教育部门学历认证的留学回国人员和在国家规定的2年择业期内未落实工作单位的留学回国人员,可以报考限高校应届毕业生报考的岗位。

（4）机关、事业单位正式在编人员报考，须按干部人事管理权限在资格审查时提供单位出具的同意报考证明，不得隐瞒实情进行报考；县及以下机关事业单位工作人员报考须在资格审查时出具所在地组织（人社）部门同意报考证明（附件5《赣州市事业单位公开招聘机关事业国有企业正式人员同意报考证明》）。大学生村官、特岗教师、“三支一扶”等人员报考须提供服务单位及其主管部门和当地组织人社部门的同意报考证明。与企业或其他用人单位建立劳动关系的人员，如拟被招聘单位聘用，须与原用人单位解除劳动关系。

（5）未满服务期或处于试用期的机关事业单位人员报考，须在报名结束前与所在单位解除录（聘）用关系（以主管单位和组织人事部门同意批复时间或解除聘用合同书的签订时间为准）。

（6）本次招聘不设开考比例，不对岗位招聘人数进行调剂。

四、招聘程序及要求

本次公开招聘采取发布招聘公告、报名、资格审查、面试、体检和考察、确定拟聘用人员、公示与聘用等程序。

（一）发布公告

招聘公告于2024年6月13日起在赣州市人力资源和社会保障局官网、于都县人民政府网、“于都教科体”微信公众号发布本招聘公告。

（二）报名

1.报名形式。本次招聘采取网上报名的形式。

应聘者可自行下载《赣州市于都县2024年公开招聘硕士研究生学历教师报名表》（见附件2），报考实行诚信报名，要求如实、完整、有效填报相关信息后，将纸质稿签字按手印后制成PDF文件并以“应聘岗位+姓名+联系电话”命名发至县教科体局人事股邮箱（ydjyjrsg@163.com），每位报考人员限报考一个岗位，同时报考两个及以上岗位的，报名无效。

2.报名时间：2024年6月17日9:00至6月27日17:00。

3.报名结束后拨打于都县教科体局人事股电话（0797-6335361）确认报名结果。

（三）资格审查

资格审查由于都县公开招聘硕士研究生学历教师工作领导小组组织实施，对报名人员提供的信息、材料进行审查，符合招聘条件的，发放《面试准考证》；不符合的，资格审查不予通过。资格审查及考察贯穿招聘全过程（含聘用后的试用期内）。考生自报名成功起已进入考察阶段，接受其他考生及招聘的监督，请考生注意参与考试过程中的言行举止。考生应如实提交有关信息和材料，凡发现本人填写信息不真实、不完整或填写错误，与所报岗位要求条件不符，弄虚作假的，一经查实取消面试和聘用资格。应聘人员应保持报名时所留联系方式的畅通。

1.现场资格审查时间：2024年6月28日9:00－17:00

2.现场资格审查地点：于都县教科体局五楼511室（于都县红军大道689号）

3.需提供以下材料：

①《赣州市于都县2024年公开招聘硕士研究生学历教师报名表》1份（请自行在于都县人民政府网站下载，填写相关内容，张贴好照片）；

②身份证原件或社会保障卡原件及1份复印件，委托他人报名的，须提供委托授权书、被委托人身份证原件及复印件1份；

③毕业证、学位证原件及1份复印件（含大学本科和研究生学历），同时，报考体育专业教师岗位的须提供毕业院校出具的专修项目证明；2024届毕业生须提供毕业院校已盖公章的毕业生就业推荐表；所有考生需提供中国高等教育学生信息网查询生成有二维码的《教育部学历证书电子注册备案表》（二维码有效期在2024年8月31日以后）及学位查询结果，国外的学历、学位还须提供教育部留学服务中心认证的《国外学历学位认证书》；

④岗位要求的对应学科的教师资格证（暂未取得教师资格证的，须提供可取得教师资格证的佐证资料）；

⑤机关事业单位在编人员及国企正式人员报考，应出具单位及主管部门在报名截止日前盖章同意报考的证明；县及以下机关事业单位在编人员报考还须提供所在地组织（人社）部门在报名截止日前同意报考的证明；

⑥本人近期与报名表同底一寸彩照2张。

（四）面试

1.面试时间地点：详见准考证。

2.主要考察应试人员的岗位适合能力。

高中文化学科教师岗采取试讲的方式进行，试讲内容为我县现行使用的高中相应学科教材，准备时间50分钟，试讲时间15分钟。

专业体育教师岗采取专业考核测试（专业能力测试+动作讲解）的方式进行，测试具体内容详见附件4。

3.面试结束后，根据招聘计划数1:1的比例，按面试成绩从高到低等额确定入闱体检人员（面试成绩60分以下者不得确定为体检考察对象）。若同一岗位末位同分者，采取加试的方式确定高分者入闱体检。

4.报考同一职位的考生，如在不同面试考场面试，该职位考生最终面试成绩为按修正系数计算后的成绩。计算公式为：考生最终面试成绩=本面试考场得分×（同一职位各考场所有考生平均分／同一职位本面试考场所有考生平均分）。（计算时去除畸低分50以下，畸高分90分及以上）

5.当某岗位报名人数与岗位计划招聘数之比大于30:1时，增设笔试环节。笔试成绩满分100分，设60分为合格分数线。在合格分数线以上根据笔试成绩从高分到低分，按招聘计划1:3的比例确定进入面试人选，不足1:3比例的，合格线上所有人员进入面试。增加笔试环节的岗位总成绩=笔试成绩*40%+面试成绩*60%。如末位总成绩相同的，取面试高分者。仅参加了笔试的考生，不计算考试总成绩，不进入体检、考察环节。笔试内容及考试时间、地点另行公告。

6.面试成绩、入闱体检人员名单及体检等相关事项将在于都县人民政府网、“于都教科体”微信公众号公布，请自行及时关注。

（五）体检与考察

1.体检。体检参照《江西省教师资格申请人员体检办法（修订）》（赣教规字〔2021〕3号）文件和有关规定执行，必要时可对考生进行心理测评。体检费用参照公务员录用体检收费标准及体检医院等级收取，由考生自行负担。报考者对非当日、非当场复检的体检项目结果有疑问的，可以在接到体检结论电话通知之日起7日内，向体检实施机关提交书面复检申请，体检实施机关按规定安排复检。报考者对当日、当场复检的体检项目结果有疑问的，可以当场申请复检，体检实施机关应在当日、当场安排复检，当场复检原则上只能进行三次，体检结果以复检结论为准。7日内因个人无法完成体检的，视为自动放弃聘用资格，招聘单位对体检结论有疑问的，在接到体检结论通知之日起7日内决定是否进行复检，如需复检，提交书面申请。

2.考察。由县教科体局组织实施，主要是全面了解考察对象的政治素质、道德品质、能力素质、心理素质、学习和工作表现、遵纪守法、廉洁自律、诚信记录、岗位匹配度以及需要回避等方面的情况。考察时还将对报考人员进行资格复审。对政治上不合格的，实行一票否决，不予聘用。考核采取函调或实地考核方式进行，考核结果报县人社局备案。

（六）公示与聘用

对体检、考察合格的拟聘用人员名单，在于都县人民政府网、“于都教科体”微信公众号公示7个工作日。公示期满，对公示期间反映有影响聘用的问题并查实的，不予聘用；对反映的问题一时难以查实的，暂缓聘用，待查清后再决定是否聘用。

公示结果如无异议或有异议但不影响聘用的，由县教科体局、县人社局报县人事调配工作领导小组同意后下发聘用批复文件，按规定办理聘用备案手续，并报市事业单位人事综合管理部门备案。聘用通知下发后，拟聘用人员不在规定的期限内到单位报到上班并转递档案的（怀孕未完成体检的除外），视为自动放弃聘用资格。因个人放弃聘用等一切原因造成的缺额不再递补。

公示结果不影响聘用的人员按《事业单位人事管理条例》（国务院令第652号）等规定实行试用期制度。试用期包括在聘用合同期内。试用期满合格的，予以正式聘用；不合格的，取消聘用。正式聘用人员纳入编制内管理，若考生现为行政编制，聘用后为事业编制。

本次公开招聘聘用人员最低服务期限为五年，考生报名即视为接受服务期要求，须严格遵从最低服务期限的相关要求，未满最低服务期限辞聘、调动的将按有关规定追究其违约责任。

五、有关要求

本次公开招聘工作政策性强、涉及面广，要建立严格的制度规范，加强管理，强化监督，对招聘过程中违反公开招聘规定的行为要坚决予以制止和纠正，确保招聘工作的公开、公平、公正。严格执行事业单位人事管理回避规定，坚决杜绝弄虚作假、徇私舞弊等不良现象，对违纪的相关工作人员将给予纪律处分。如在资格审查、面试、考察、体检等过程中有违纪情况发生，将取消考生的聘用资格，并对违纪的相关人员给予纪律处分。

六、咨询监督举报电话

政策咨询电话：0797-6335361（于都县教科体局）；

监督举报电话：0797-6335459（于都县人社局）。

 

附件：附件1：赣州市于都县2024年公开招聘硕士研究生学历教师岗位表

附件2：赣州市于都县2024年公开招聘硕士研究生学历教师报名表

附件3：江西省中小学教师招聘岗位专业要求参照目录

附件4：体育专业教师专业考核测试内容

附件5：赣州市事业单位公开招聘机关事业国有企业正式人员同意报考证明

 

 

 

于都县公开招聘硕士研究生学历教师      

工作领导小组（代章）          

2024年6月13日    `,
				}
			}
		},
		computed: {
			formattedContent() {
				return this.article.content
					.replace(/^(?=\S)/gm, '&nbsp;&nbsp;&nbsp;&nbsp;') // 替换四个空格
					.replace(/\n/g, '<br>'); // 替换换行符
			}
		},
	}
</script>

<style lang="scss" scoped>
	.title {
		margin: 30rpx 0;
		font-size: 30rpx;
		text-align: center;
		font-weight: 600;
	}

	.source {
		color: #a1a1a1;
		padding: 20rpx 0;
		margin: 30rpx 0;
		border-bottom: solid 1px  #f1f1f1;

		.enterprise_name {
			font-size: 25rpx;
			font-weight: 500;
			text-align: center;
		}

		.datetime {
			font-size: 25rpx;
			font-weight: 500;
			text-align: center;
		}

		.location {
			font-size: 25rpx;
			font-weight: 500;
			text-align: center;
		}
	}

	.content {
		font-size: 28rpx;
		margin: 0 20rpx 0 20rpx;
		padding-bottom: 100rpx;
	}
</style>