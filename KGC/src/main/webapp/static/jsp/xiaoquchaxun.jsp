<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>jquery 地图点击显示对应弹窗介绍</title>
    <link href="/static/css/styleditu.css" rel="stylesheet" type="text/css"/>

    <link href="/static/css/styleditukefu.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/static/js/scriptditukefu.js"></script>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/js/jquery.min.js"></script>
    <style type="text/css">
        #daohanglogo{
            margin-left: 180px;
            position: relative;
            top: 3px;
        }
        .lia{
            text-decoration: none;
            color: #656565;
            margin-left: 30px;
            position: relative;
            top: -20px;
            font-size: 16px;
        }
        .lia:hover{
            color: #9FC105;
        }
        #sousuokuang{
            padding-left: 10px;
            position: absolute;
            top: 12px;
            width: 170px;
            height: 30px;
            left: 930px;
        }
        #sia{
            float: right;
            margin-top: 20px;
            margin-right: 150px;
        }
        .siaa{
            text-decoration: none;
            color: #656565;
        }
        .siaa:hover{
            color: #9FC105;
        }
        input, select {
            width: 200px;
            height: 35px;
        }

        .form-item {
            margin: 20px;
            width:100%;
        }

        .content {
            width: 800px;
            margin: 0 auto;
        }
    </style>

</head>
<body><script src="/demos/googlegg.js"></script>
<!--导航栏-->
<div>
    <!--logo-->
    <img src="/static/img/zhihuilogo.png" id="daohanglogo" />
    <!--9li-->
    <a class="lia" href="#">直播</a>
    <a class="lia" href="#">系列</a>
    <a class="lia" href="#">岗位</a>
    <a class="lia" href="#">实战</a>
    <a class="lia" href="#">题库</a>
    <a class="lia" href="#">社区</a>
    <a class="lia" href="#">教材</a>
    <a class="lia" href="#">阿里云</a>
    <a class="lia" href="#">社区</a>
    <!--搜索框-->
    <input type="text" placeholder="搜索" id="sousuokuang" />
    <!--app下载 登录|注册-->
    <div id="sia">
        <c:if test="${sessionScope.username==null}">
            <a href="#" id="appa" style=" color: #9FC005;text-decoration: none;position:relative;left: -30px;">APP下载</a>
            <a href="#" class="siaa" style="position:relative;left:-20px ;" ;>登录</a>
            <a href="#" class="siaa" style="position:relative;left:-20px ;">|</a>
            <a href="#" class="siaa" style="position:relative;left:-20px ;">注册</a>
        </c:if>
        <c:if test="${sessionScope.username!=null}">
            <a href="#" id="appa" style=" color: #9FC005;text-decoration: none;position:relative;left: 40px;">APP下载</a>
            <c:if test="${sessionScope.usertype==1}">
                <a href="#" class="siaa" style="position:relative;left:50px ;" ;>欢迎</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">${sessionScope.username}</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">同学</a>
            </c:if>
            <c:if test="${sessionScope.usertype==2}">
                <a href="#" class="siaa" style="position:relative;left:50px ;" ;>欢迎</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">${sessionScope.username}</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">老师</a>
            </c:if>
            <c:if test="${sessionScope.usertype==3}">
                <a href="#" class="siaa" style="position:relative;left:50px ;" ;>欢迎</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">${sessionScope.username}</a>
                <a href="#" class="siaa" style="position:relative;left:50px ;">管理员</a>
            </c:if>
        </c:if>
    </div>
    <!--	<img src="/static/img/zhihuierweima.jpg" id="apperweima" style="float: right;position: absolute;top: 50px;left: 1180px;" />-->
</div>
<br />
<div class="map-content map-branch" >
    <div class="map-module">
        <p class="map-title">就近找到我们</p>
        <div class="map-content-info" style="position: relative;left: 120px;">
            <div class="branch-map-l" >
                <div class="map-content-box">
                    <span class="map-dot beijing" data-id="beijing" value="北京">北京</span>
                    <!--<span class="map-dot tianjin" data-id="tianjin" value="天津">天津</span>-->
                    <span class="map-dot hebei" data-id="hebei" value="河北">河北</span>
                    <span class="map-dot shanxi" data-id="shanxi" value="山西">山西</span>
                    <span class="map-dot liaoning" data-id="liaoning" value="辽宁">辽宁</span>
                    <!--<span class="map-dot jilin" data-id="jilin" value="吉林">吉林</span>-->
                    <!--<span class="map-dot heilongjiang" data-id="heilongjiang" value="黑龙江">黑龙江</span>-->
                    <span class="map-dot shanghai cur" data-id="shanghai" value="上海">上海</span>
                    <span class="map-dot jiangsu" data-id="jiangsu" value="江苏">江苏</span>
                    <span class="map-dot zhejiang" data-id="zhejiang" value="浙江">浙江</span>
                    <span class="map-dot anhui" data-id="anhui" value="安徽">安徽</span>
                    <span class="map-dot fujian" data-id="fujian" value="福建">福建</span>
                    <!--<span class="map-dot jiangxi" data-id="jiangxi" value="江西">江西</span>-->
                    <span class="map-dot shandong" data-id="shandong" value="山东">山东</span>
                    <span class="map-dot henan" data-id="henan" value="河南">河南</span>
                    <span class="map-dot hubei" data-id="hubei" value="湖北">湖北</span>
                    <span class="map-dot hunan" data-id="hunan" value="湖南">湖南</span>
                    <span class="map-dot guangdong" data-id="guangdong" value="广东">广东</span>
                    <!-- <span class="map-dot guangxi" data-id="guangxi" value="广西">广西</span>-->
                    <!--<span class="map-dot chongqing" data-id="chongqing" value="重庆">重庆</span>-->
                    <span class="map-dot sichuan" data-id="sichuan" value="四川">四川</span>
                    <span class="map-dot guizhou" data-id="guizhou" value="贵州">贵州</span>
                    <!--<span class="map-dot yunnan" data-id="yunnan" value="云南">云南</span>-->
                    <span class="map-dot shanxi1" data-id="shanxi1" value="陕西">陕西</span>
                </div>
                <div class="branch-map-data" id="company_liaoning">
                    <div class="branch-map-data-title">
                        <p>辽宁</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title=""><p class="data-name">沈阳●优云 - 线下服务中心</p></a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师
                                中心介绍：沈阳优越线下服务中心，坐落于沈阳市和平区三好街54号（沈阳音乐学院正对面），紧邻东北第一学府-东北大学。学校采取“企业+实训”双模式教学，企业级实训中心与教学实训基地相得益彰。19年来专注IT教育
                            </p>
                            <p>中心地址：沈阳市和平区三好街54号物产大厦四层401</p>
                            <p>全国统一热线：400-007-3888 </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_guangdong">
                    <div class="branch-map-data-title">
                        <p>广东</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="广东网站建设">
                                <p class="data-name">深圳●华强北 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 电子商务营销师 互联网营销师 Java全栈工程师
                                中心介绍：深圳华强北中心成立于2001年，具有15年是教学经验，连续多年通过深圳市A类教育机构资质评审，深圳高技能人才培训基地、深圳大学实习基地学校。中心坐落于深圳市商业和政治中心，学校周边是全国最大的电子产业
                            </p>
                            <p>中心地址：广东省深圳市福田区深南中路2038号爱华大厦14楼</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="广东网站建设">
                                <p class="data-name">深圳●南山 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场金蛛教育深圳南山线下服务中心，坐落于中国改革开放的前沿城市——深圳，在特区强大的经济活力氛围下，课工场金蛛教育积极响应国家“互联网+”战略，通过自己专业的技能培训能力，连续多年通过深圳市A类教育 </p>
                            <p>中心地址：深圳市南山区高新南1道6号TCL大厦A座六楼A607</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>
                                >
                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="广东网站建设">
                                <p class="data-name">广州●珠江新城 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 电子商务营销师 互联网营销师</p>
                            <p>中心介绍：课工场金蛛教育珠江新城线下服务中心，坐落于三大国家级中央商务区广州珠江新城，中心始终坚持“产学研”一体化的办学模式，以培养紧缺型实用型技能人才为己任，以“全心全意为学员服务，尽心尽力为企业育人”为办学</p>
                            <p>中心地址：广州市天河区黄埔大道西76号富力盈隆广场29楼 </p>
                            <p>全国统一热线：400-007-3888  </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="广东网站建设">
                                <p class="data-name">东莞●莞城 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 电子商务营销师 互联网营销师</p>
                            <p>中心介绍：课工场金蛛教育东莞莞城线下服务中心，坐落于世界工厂-东莞，在强大的经济活力氛围下，课工场金蛛教育积极响应国家“互联网+”战略，通过自己专业的技能培训能力，始终坚持“产学研”一体化的办学模式，以培养紧缺</p>
                            <p>中心地址：东莞市莞城区莞太路120号金马大厦三楼 </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_shandong">
                    <div class="branch-map-data-title">
                        <p>山东</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="山东网站建设">
                                <p class="data-name">烟台●中北 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：北大课工场烟台中北学院是烟威地区成立最早、教学最好、课程最高端的IT职业教育学院，学院本着传承北大教育品质，回归教育本源的教育理念服务每一位学员，多名拥有大型企业级开发经验的名师大咖为教学提供保障</p>
                            <p>中心地址：山东省烟台市芝罘区南大街117号文化宫大厦3楼 </p>
                            <p>全国统一热线：400-007-3888  </p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_jiangsu">
                    <div class="branch-map-data-title">
                        <p>江苏</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="江苏网站建设">
                                <p class="data-name">南京●中博 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：南京中博线下服务中心，位于万谷移动互联科技园（江苏警官学院）内，地理位置处于中国第一软件产业基地、国家重要的软件产业和信息产业中心——中国（南京）软件谷，汇聚了IBM中国软件；为学员的项目实训和本地化</p>
                            <p>中心地址：南京市雨花台区小行路16号9号楼 </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="江苏网站建设">
                                <p class="data-name">淮安●瀚唐 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 电子商务营销师 互联网营销师 互联网架构师</p>
                            <p>中心介绍：课工场淮安瀚唐线下服务中心，先后获得江苏省商务厅授予的“电子商务人才培训基地”、“服务外包人才培训基地”、和省教育厅“2015、2016年高等学校软件服务外包类专业嵌入式人才培养合作单位”、“淮安市大</p>
                            <p>中心地址：淮安市清浦区承德南路266号2号楼512</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="江苏网站建设">
                                <p class="data-name">南京●中博文鼎 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：南京中博线下服务中心，位于南京江宁区格致路99号文鼎大厦16层，万谷移动互联科技园汇聚了IBM中国软件、戴尔、润和软件、三胞集团、中兴通讯、华为科技、东软研发、软通动力、文思创新、泰晟科技等国内外知名</p>
                            <p>中心地址：南京江宁区格致路99号文鼎大厦16层</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="江苏网站建设">
                                <p class="data-name">徐州●中博矿大 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：位于矿大文昌校区成教院内，毗邻中关村软件园、矿大软件园，是徐州互联网产业集中地。中心拥有独立校园，环境优美，食宿便捷，教学严谨，师资强大，并在南京、上海等地设立了就业部，帮助学员高薪就业。</p>
                            <p>中心地址：徐州市泉山区解放南路386号矿大成教院内教学楼4楼</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="江苏网站建设">
                                <p class="data-name">徐州●中博 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：徐州中博成立于2003年，地处徐州市核心地带，交通便利，是华东区规模领先的专业软件人才培养基地，拥有本地在校生千余名，并设有独立的软件研发中心为在读学员提供带薪实习机会。</p>
                            <p>中心地址：徐州市解放南路181号（六中斜对面） </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_zhejiang">
                    <div class="branch-map-data-title">
                        <p>浙江</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="浙江网站建设">
                                <p class="data-name">杭州●德博 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场浙江线下服务中心位于浙江省会杭州，互联网企业云集，IT行业发展迅速。中心现有职业规划，教学，就业组成的师资队伍，拥有多年行业经验，为学员打造一站式服务体验。</p>
                            <p>中心地址：杭州市拱墅区湖州街29号时瑞大厦6楼</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_sichuan">
                    <div class="branch-map-data-title">
                        <p>四川</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">成都●优越 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场成都优越线下中心，位于历史悠久的西南大都会成都，成立于2015年，已累计培养优质大数据、云计算、软件开发等学员逾50000人。中心依托实力雄厚的优越国际，拥有完善的人才培养、研发、就业服务综合体</p>
                            <p>中心地址：成都市天益街38号理想中心三栋三楼 </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">绵阳●融科 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场绵阳融科中心是绵阳市“互联网+”产业链重点人才培养招商项目，由具有12年实训管理经验的洛阳融科中心提供技术支撑，专业方向涵盖：大数据、云计算、UI设计、WEB前端等</p>
                            <p>中心地址：四川省绵阳市文武中路9号术业楼3楼 </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>

                <div class="branch-map-data" id="company_hubei">
                    <div class="branch-map-data-title">
                        <p>湖北</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">武汉●光谷 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师/p>
                            <p>中心介绍：武汉光谷线下服务中心，地处湖北武汉光谷，紧邻中西部地区知名软件及服务外包产业园－光谷软件园，秉持15年教学服务经验，为互联网企业输送急需人才。</p>
                            <p>中心地址：湖北省武汉市-洪山区-珞瑜路718号春和天地3-302号</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">武汉●徐东 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：武汉·徐东线下服务中心是由国内顶级教育集团宏鹏集团旗下全资校区，依托十几年在IT教育行业深耕，聚集了一批来自阿里、腾讯、百度行业专家级讲师团队，为行业累计输送数十余万高级IT人才，环境优美、交通便利，</p>
                            <p>中心地址：武汉市洪山区友谊大道504号金马凯旋家居2楼</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_hunan">
                    <div class="branch-map-data-title">
                        <p>湖南</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="湖南网站建设">
                                <p class="data-name">长沙●新途 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：长沙课工场本着传承北大教育品质，回归教育本源的教育理念服务每一位学员，为追求高品质的大学生群体匠心打造高增值、高师资的IT职业教育平台，为学员提供完善的就业体系，并提供高端二次就业和终身就业服务。</p>
                            <p>中心地址：长沙市芙蓉区五一大道333号湖南物资产业集团北院6-7楼 </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="湖南网站建设">
                                <p class="data-name">长沙●实力 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：长沙实力线下服务中心，坐落于长沙市中心地带，15年来专注IT教育，拥有强大的师资团队，完善的教学设备。丰富的企业资源，确保学员高质就业,薪资优厚,为全国就业示范校区。</p>
                            <p>中心地址：湖南长沙市蔡锷北路司马里38号 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="湖南网站建设">
                                <p class="data-name">岳阳●海纳 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：岳阳海纳软件学院2004年成立至今拥有15年IT培训教学经验，以就业为导向培养高素质高质量的软件开发人才，多次获得全国教学质量奖、就业质量奖。现在读全日制学生1200多人</p>
                            <p>中心地址：岳阳市南湖大道188号市交通银行大厦三楼湖南理工学院南院对面 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_beijing">
                    <div class="branch-map-data-title">
                        <p>北京</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">北京●航天桥 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场全国正式授牌的云计算学院和人工智能学院级校区，航天桥拥有强大规格的师资和就业团队，有着一流的课程研发和更新能力，是课工场新上线课程首批的教学试点和示范中心，连续多年荣获全国高薪就业大奖。</p>
                            <p>中心地址：北京市海淀区西三环北路甲105号(首都师范大学东门研究生学院) 电话：010−88414120</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">课工场产教融合创新基地●城市服务中心 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场产融创新服务中心由原潘家园线下服务中心升级成立，现隶属课工场总部产融基地，依托北大和总部资源，集产学研一体，为全国学员、高校及企业提供更完善的教学、就业以及人才输送等服务，其开设的创客、培优等多</p>
                            <p>中心地址：北京市朝阳区潘家园松榆西里43号教学楼/北京市大兴区旧宫镇广德大街中科电商谷 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●华腾科技园 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 北美大数据 互联网架构师 Java全栈工程师</p>
                            <p>中心介绍：北京华腾中心，设科技园、来广营两大校区。15年来专注IT教育，拥有强大的师资团队，丰富的就业资源，完善的教学设备。华腾教育将继续不断为学员提供更为优质的教育服务，培养职场精英，成就每一位学员的精彩人生</p>
                            <p>中心地址：北京市朝阳区望京诚盈中心6号楼3层 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●华腾来广营 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 北美大数据 互联网架构师 Java全栈工程师</p>
                            <p>中心介绍：北京华腾来广营校区，位于首都师范大学东校区内，毗邻望京科技园，常年为望京科技园提供高端IT人才培训和输送，拥有15年以上教学就业经验，注重教学质量，更注重就业质量，丰富的企业资源，确保学员高质就业。</p>
                            <p>中心地址：北京市朝阳区来广营西路1号（首都师范大学东校区内） </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●中关村 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：中关村校区，坐落于中国硅谷中关村核心地带，拥有强大的师资和就业团队，一流的开发和更新能力，是课工场课程的首批教学试点和示范中心，16年来专注IT就业服务质量的提升，为数千名企输送IT高薪人才。</p>
                            <p>中心地址：北京市-海淀区-中关村大街49号-大华科技商厦3层C座(中国人民大学东门北侧300米)电话：010-82501022  </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●长安街 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 北美大数据 互联网架构师 Java全栈工程师</p>
                            <p>中心介绍：北京长安街线下服务中心，培养就业学员过万；北大毕业孙鹏老师亲自授课，所有讲师均有5年以上大型项目经验及教学经验，均持有1-2个国际顶级认证；与5000多家企业合作，特推出“终生推荐就业”让你后顾无忧</p>
                            <p>中心地址：北京市海淀区莲花桥悦邻广场二层   </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●沙河 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 互联网架构师 Java全栈工程师</p>
                            <p>中心介绍：北京沙河校区，坐落于北京昌平沙河地铁站旁。15年来专注IT教育，拥有强大的师资团队，丰富的就业资源，完善的教学设备。正因十五年来的品质保证，我们积累了丰富企业资源，特推出“终生推荐就业”让你后顾无忧</p>
                            <p>中心地址：北京科技经营管理学院沙河新校区教学主楼   </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●阜成门 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 互联网营销师 互联网架构师 Java全栈工程师</p>
                            <p>中心介绍：北京阜成门校区，坐落于北京西城区阜成门。15年来专注IT教育，拥有强大的师资团队，丰富的就业资源，完善的教学设备。正是因为十五年来的品质保证，我们积累了丰富企业资源，特推出“终生推荐就业”让你后顾无忧</p>
                            <p>中心地址：北京市-西城区-北礼士路100号（阜成门地铁站附近） </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●五道口 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场五道口中心位于北京大学东成府路28号，五道口地铁站南侧，周边清华、北大、北航高校林立，学习氛围浓厚。15年来专注IT就业培训，师资团队强大，就业资源丰富，教学设备完善，为数千IT名企输送人才。</p>
                            <p>中心地址：北京市-海淀区-五道口地铁B口出南200米北大青鸟楼 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="北京网站建设">
                                <p class="data-name">北京●北资 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：北京北资线下服务中心，坐落于北京市海淀区核心地带，中心以培养综合性技能型人才为目标，以教学质量为核心，以提升操作能力为目的，实现"学历+技能+就业"三足鼎立。</p>
                            <p>中心地址：北京市-海淀区-上庄路117号-北京北大资源研修学院 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>

                    </div>
                </div>
                <div class="branch-map-data" id="company_shanghai" style="display: block; left: 704px; top: 218px;">
                    <div class="branch-map-data-title">
                        <p>上海</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">上海●云登 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场上海云登线下中心，位于历史悠久的华东大都市上海，成立于2015年，累计培养优质大数据、云计算、Web前端等学员逾50000人。中心依托实力雄厚的优越国际，拥有完善的人才培养、研发、就业服务综合体</p>
                            <p>中心地址：上海市黄浦区云南北路59号六合大厦1308室</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="branch-map-data" id="company_hebei">
                    <div class="branch-map-data-title">
                        <p>河北</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="河北网站建设">
                                <p class="data-name">衡水●天泰 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：衡水天泰具有多年教学经验，采取“企业+实训”双模式教学，致力于培养优秀的IT人才。我校是衡水高技能人才培训基地，与知名企业建立长期合作关系，优质高薪就业率达96%</p>
                            <p>中心地址：河北省衡水市桃城区育才南大街356号1栋2-3层 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_shanxi">
                    <div class="branch-map-data-title">
                        <p>山西</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="山西网站建设">
                                <p class="data-name">太原●多元 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：山西太原线下服务中心，位于太原市小店区平阳路华康大厦，环境优雅，交通便利。中心采取“校园+企业”双模式教学，企业实训基地与教学中心相辅相成。专注IT教育11年，拥有强大的师资力量与丰富的企业资源</p>
                            <p>中心地址：太原市平阳路96号华康大厦15层</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>

                <div class="branch-map-data" id="company_anhui">
                    <div class="branch-map-data-title">
                        <p>安徽</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="安徽网站建设">
                                <p class="data-name">合肥●协同 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场全国首批线下服务中心，面向大学生群体提供IT高端培训和就业服务，双师课堂，拥有强大规格的师资和就业团队，丰富的校企合作经验，推出“终身就业服务”，连续多年荣获全国高薪就业大奖。</p>
                            <p>中心地址：合肥市长江西路130安农大科技长廊5楼 电话：0551-62832238 </p>
                            <p>全国统一热线：400-007-3888  </p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="安徽网站建设">
                                <p class="data-name">蚌埠●一元 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：蚌埠线下服务中心，主要面向蚌埠及周边滁州、宿州、淮北等地的高校及大学生群体提供IT高端培训和就业服务。 校区有着一流的师资团队，时尚感十足的软硬件环境，是皖东北地区规模较大的IT培训机构。</p>
                            <p>中心地址：安徽省蚌埠市东海万达广场  </p>
                            <p>全国统一热线：400-007-3888   </p>
                            <p>
                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="安徽网站建设">
                                <p class="data-name">合肥●科海 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：合肥科海线下服务，主要面向安徽省高校大学生群体提供IT高端培训和就业服务。校区有着一流的师资团队和办学模式，时尚感爆棚的软硬件环境，是安徽省就业模范IT培训机构。</p>
                            <p>中心地址：合肥市包河区屯溪路193号合工大产业楼2楼  </p>
                            <p>全国统一热线：400-007-3888   </p>
                            <p>
                            </p>
                        </div>

                    </div>
                </div>

                <div class="branch-map-data" id="company_fujian">
                    <div class="branch-map-data-title">
                        <p>福建</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="福建网站建设">
                                <p class="data-name">福州●华大 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：福州华大--福州东尔创软件有限公司（北大课工场）校区位于福州市仓山区北园路122号。一直专注于IT就业实训，与过千家IT名企建立人才培养计划。现正在推行“万人IT培养计划”，入学即签订就业合同，就业有</p>
                            <p>中心地址：福建省福州市仓山区北园路122号</p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>
                        <div class="data-branch">
                            <a href="#" target="_blank" title="福建网站建设">
                                <p class="data-name">厦门●华大 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：厦门软件园校区位于IT氛围浓厚的思明区软件园二期48号。独享丰厚的IT资源。一直专注于IT就业培训，与过千家IT名企建立人才培养计划。入学即签订就业合同，就业有保障。</p>
                            <p>中心地址：福建省厦门市思明区软件园二期观日路48号三楼303号 </p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_shanxi1">
                    <div class="branch-map-data-title">
                        <p>陕西</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="陕西网站建设">
                                <p class="data-name">西安●嘉辰 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：西安嘉辰线下服务中心是经陕西省西安市碑林区教育局审批。现有教职员工100余名，设有2大校区，省内外4大就业服务点，目前已为社会输送了50000余名优秀IT人才，是一家专注于高素质IT人才培养基地</p>
                            <p>中心地址：陕西省西安市长安北路14号陕西省图书馆</p>
                            <p>全国统一热线：400-007-3888</p>
                            <p>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="branch-map-data" id="company_guizhou">
                    <div class="branch-map-data-title">
                        <p>贵州</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="贵州网站建设">
                                <p class="data-name">贵阳●优越 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：课工场洛阳校区是由北京大学优秀校办产业北大青鸟集团全资建设的互联网教育平台，在洛阳已12年的发展，现有千余人的规模。是一家集开发，培养，及就业为一体的高端IT技术性企业。</p>
                            <p>中心地址：洛阳市洛龙区市洛阳师范学院（安乐校区）东区D栋 </p>
                            <p>全国统一热线：400-007-38880</p>

                            <p>

                            </p>
                        </div>
                    </div>
                </div>

                <div class="branch-map-data" id="company_henan">
                    <div class="branch-map-data-title">
                        <p>河南</p>
                    </div>
                    <div class="branch-map-data-info">
                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">郑州●兰德 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 WEB全栈工程师 云计算工程师 电子商务营销师 互联网营销师 北美大数据 互联网架构师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：郑州·兰德线下服务中心是由国内顶级教育集团宏鹏集团旗下全资校区，依托十几年在IT教育行业深耕，聚集了一批来自阿里、腾讯、百度行业专家级讲师团队，为行业输送十数万高级IT人才。</p>
                            <p>中心地址：河南省郑州市金水区花园路31号兰德中心14层  </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">洛阳●融科 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 电子商务营销师 互联网营销师 Python+AI全栈工程师 人工智能 Java全栈工程师 全能UI/UE设计师</p>
                            <p>中心介绍：郑州·兰德线下服务中心是由国内顶级教育集团宏鹏集团旗下全资校区，依托十几年在IT教育行业深耕，聚集了一批来自阿里、腾讯、百度行业专家级讲师团队，为行业输送十数万高级IT人才。</p>
                            <p>中心地址：河南省郑州市金水区花园路31号兰德中心14层  </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>

                        <div class="data-branch">
                            <a href="#" target="_blank" title="">
                                <p class="data-name">郑州●翔天信鸽 - 线下服务中心</p>
                            </a>
                            <p>产品授权： 互联网UI/UE设计师 云计算工程师 Java全栈工程师</p>
                            <p>中心介绍：郑州翔天信鸽借助于大学校园的环境优势，聘请了众多曾在微软、谷歌、联想等公司工作数年的资深软件设计科研人才到中心任教，使得本中心学员一开始就与软件业的大牛同行!从而获得广阔的人脉，拥有更高的起点!为给学</p>
                            <p>中心地址：郑州市金水区文化路90号财经政法大学文南校区1号楼   </p>
                            <p>全国统一热线：400-007-3888 </p>
                            <p>

                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <div id="top"></div>



        <center><a id="xianshi" href="#liu" style="font-size: 22px;text-decoration: none;position: relative;left: 20px;">显示地图</a></center>



        <div id="liu" >

            <div class="content">
                <!-- 地图 -->
                <div class="form-item">
                    <div style="width:790px">
                        <div id="myMap" style="width:100%;height:400px;"></div>
                    </div>
                </div>
                <input type="hidden" class="store_Lng" />
                <input type="hidden" class="store_Lat" />
            </div>

            <script src="https://api.map.baidu.com/api?v=2.0&ak=RZZ2gObry82Y2BSzZ1xzMhfm&callback=mapinit"></script>
            <script src="/static/js/jquery.min.js"></script>
            <script src="/static/js/index.js"></script>

            <div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
            </div>
        </div>

        <script type="text/javascript">
            $("#liu").hide();
            var flag=false;
            $("#xianshi").click(function(){
                if(flag==false){
                    $(this).text("关闭地图");
                    $("#liu").show();
                    flag=true;
                }else if(flag==true){
                    $(this).text("打开地图");
                    $("#liu").hide();
                    flag=false;
                }

            })
        </script>






        <script type="text/javascript">
            $(function() {
                if ($(".map-branch")) {
                    //默认显示上海
                    $(".map-dot.shanghai").addClass("cur");
                    $("#company_shanghai").show().css({
                        "left": $(".map-dot.shanghai").position().left + 36,
                        "top": $(".map-dot.shanghai").position().top - $("#company_shanghai").height() / 2 + 8
                    });
                    $(".map-dot").on("mouseover", function() {
                        $(this).addClass("cur").siblings(".map-dot").removeClass("cur");
                    });
                    $(".map-dot").on("click", function() {
                        $(this).addClass("cur").siblings(".map-dot").removeClass("cur");
                        var dataid = $(this).attr("data-id")
                            , comp = $("#company_" + dataid)
                            , otherComp = $("#company_" + dataid).siblings(".branch-map-data");
                        comp.fadeIn("fast").css({
                            "left": $(this).position().left + 36,
                            "top": $(this).position().top - comp.height() / 2 + 8
                        });
                        otherComp.hide();
                    });
                    $(".branch-map-data").on("mouseleave", function() {
                        $(this).hide();
                        $(".map-dot").removeClass("cur");
                    });
                }
            });

        </script>

</body>
</html>
