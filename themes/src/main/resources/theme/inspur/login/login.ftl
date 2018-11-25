<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=10; IE=9; IE=8; IE=7; IE=EDGE">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="shortcut icon" href="${url.resourcesPath}/favicon.ico" type="image/x-icon" />
<title>浪潮云平台</title>
<meta content="浪潮云服务，云服务，云主机，云服务器，负载均衡，云存储" name="keywords" />
<meta content="浪潮云服务是中国政务云市场领导者。" name="description" />
<meta name="generator" content="inspur,http://cloud.inspur.com"/>
<link rel="stylesheet" href="${url.resourcesPath}/css/login.min.css" charset="utf-8">
	  
<div class="main">
	<#import "template.ftl" as layout>

	<div id="header">
		<span class="logo"><a href="https://cloud.inspur.com"  target="_blank"><img src="${url.resourcesPath}/img/logo_new.png"/></a></span>
		<span class="home"><a href="https://cloud.inspur.com"  target="_blank">首页</a></span>
	</div>
	<@layout.registrationLayout displayInfo=social.displayInfo; section>
		
	<#if section = "title">
	<#elseif section = "header">
	<#elseif section = "form">
	<div id="login-content">
	
        <#if realm.password>
            <div class="ad">
                <div class="ad-title">
                    <h3>云服务器特惠季</h3>
                    <span>云服务器产品全线8折，1核1G仅需270元每年</span>
                    <!--<h3>浪潮云 无处不在的计算</h3> -->
                    <!-- <span>致力于以云服务的方式，提供安全、可信的计算和数据处理能力，让计算无处不在。</span> -->
                </div>
                <a href="https://cloud.inspur.com/snipet/890.html" target="_blank"><img src="${url.resourcesPath}/img/adbanner.png"/></a>
                <!-- <a href="javascript:void(0);"><img src="/build/newlogin/img/clouldbanner.png"/></a> -->
            </div>
            <div class="login-form">
                <h3>账号登录</h3>		
				<form  class="login-body" id="kc-form-login" role="form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="hr-line"></div>
                    
             		<#if message?has_content>
	                    <span id="login-error" style="display:block;">
	                        <i class="login-error-tip"><img src="${url.resourcesPath}/img/tip.png"></i>
	                        <label id="login-error-label">${message.summary?no_esc}</label>
	                    </span>
                    </#if>
                    <span class="form-group">
						 <#if usernameEditDisabled??>
							<input tabindex="1" id="username" style="width:323px" class='form-control' class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" placeholder='<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>' type="text" disabled />
						 <#else>
							<input tabindex="1" id="username" style="width:323px" class='form-control'  class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" placeholder='<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>' type="text" required autofocus autocomplete="off" />
						 </#if>
                        <!-- <label id="username-error" style="display: none" class="error"></label> -->
                    </span>
                    <span class="form-group">
                        <input tabindex="2" type="password" id="password" style="width:323px" name="password" placeholder="密码" class="form-control" autocomplete="off" required>
                    </span>
                    <!-- <span class="form-group verify-code-div" style="display: none">
                        <span class="verify-code-user">
                          <input type="text" id="verify-code" name="verify_code" placeholder="验证码" class="form-control verify-code-input" minlength="6" required>
                        </span>
                        <span class="verify-code-span">
                            <span  onclick="guid()">
                                <img class="verification-code-img" id="verification-code-img" src="">
                            <i href="#" id="refresh">
                                <img src="${url.resourcesPath}/img/refresh.png"/>
                            </i>
                            </span>
                        </span>
                    </span> -->
                    <span class="form-group">
                        <input type="submit" id="kc-login" style="cursor:pointer" value="${msg("doLogIn")}" class="login-btn" >
                    </span>
                    <span class="form-group login-footer">
						<#if realm.resetPasswordAllowed>
							<span><a target="_blank" href="${properties.loginResetCredentialsUrl!}">${msg("doForgotPassword")}</a></span>
						</#if>
						<#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
							<span class="register"><a href="${properties.registrationUrl!}" target="_blank">${msg("doRegister")}</a></span>
						</#if>
                    </span>
                </form>
            </div>

        </div>
    </#if>
    <#elseif section = "info" >
        <#if realm.password && social.providers??>
	<!--  social login -->
            <div id="kc-social-providers">
                <ul>
                    <#list social.providers as p>
                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
	<div class="foot">
		<footer>
			<span class="copy-right">
				<span>Copyright 2015-2018 by 浪潮云 版权所有</span>
				<span class="ba-link"><a href="http://www.miitbeian.gov.cn"  target="_blank">鲁ICP备05019369号-1</a></span>
			</span>
			<span class="footer-links">
				<span class="product-server"><a href="http://cloud.inspur.com/snipet/534.html"  target="_blank">产品与服务</a></span>
				<span class="custom-application"><a href="https://cloud.inspur.com/area-case"  target="_blank">客户案例</a></span>
				<span class="about-us"><a href="http://cloud.inspur.com/82.news.detail.dhtml?news_id=285"  target="_blank">关于我们</a></span>
				<span class="inspur-qr">
					<label class="inspur-qr"><a href="javascript:void(0)">
						浪潮云微信
						 <i class="qr-img"><img src="${url.resourcesPath}/img/qrcode.png"/></i>
					</a>
					</label>
				</span>
			</span>
		</footer>
	</div>
	
</div>
    <script src="${url.resourcesPath}/js/jquery-1.11.1.js"></script>
    <script src="${url.resourcesPath}/js/jquery.validate.min.js"></script>
    <script src="${url.resourcesPath}/js/messages_zh.min.js"></script>
    <script src="${url.resourcesPath}/js/reqwest.min.js"></script>
    <script language="JavaScript" src="https://cloud.inspur.com/o_code.js"></script>
    <script src="${url.resourcesPath}/js/login.min.js"></script>
