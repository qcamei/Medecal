<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/views/common/meta_info.htm"%>
<%@ include file="/views/common/common_css.htm"%>
<link rel="stylesheet" type="text/css" href="/css/front/style.css" title="v" />
</head>
<body>
	<%@ include file="/views/front/common/hospital/top.htm"%>
	<div class="pz_main">
		<%@ include file="/views/front/common/hospital/hospitalTop.htm"%>
		<!-- 顶部菜单栏 -->
		<div class="w_1000">
			<%@ include file="/views/front/common/hospital/hospitalLeft.htm"%><!-- 左边菜单栏 -->
			<div class="w_851">
				<div class="c_851">
					<div class="t_851_2">检测报告详情</div>
					<div class="l_849">
						<table cellpadding="0" cellspacing="0" border="0" width="773" id="baseInformation">
							<tr height="40" valign="bottom">
								<td><strong>基本信息</strong></td>
							</tr>
							<tr height="40" valign="bottom">
								<td width="67" style="line-height: 30px;">患者姓名</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.patientName}" /></td>
								<td width="67" style="line-height: 30px;">条形码</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.adiconBarcode}" /></td>
							</tr>
							<tr height="40" valign="bottom">
								<td width="67" style="line-height: 30px;">年龄</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.age}${patientReport.ageType}" /></td>
								<td width="67" style="line-height: 30px;">性别</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.sex}" /></td>
							</tr>
							<tr height="40" valign="bottom">
								<td width="67" style="line-height: 30px;">样本种类</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.sampleType}" /></td>
								<td width="67" style="line-height: 30px;">标本形状</td>
								<td width="329"><input type="text" class="input14" readonly="readonly" value="${patientReport.sampleChar}" /></td>
							</tr>
							<tr height="40" valign="bottom">
								<td><strong>数据报告</strong></td>
							</tr>
						</table>
						<table cellpadding="0" cellspacing="0" border="0" width="773" id="baseInformation">
							<tr height="40" valign="bottom" style="border-bottom: 1px solid; font-weight: bolder;">
								<td width="80" style="line-height: 30px;">简称</td>
								<td width="120" style="line-height: 30px;">项目</td>
								<td width="80" style="line-height: 30px;">结果</td>
								<td width="80" style="line-height: 30px;">提示</td>
								<td width="80" style="line-height: 30px;">参考值</td>
								<td width="80" style="line-height: 30px;">单位</td>
							</tr>

							<c:forEach items="${prdList}" var="prd">
								<tr height="40" valign="bottom">
									<td width="80">${prd.itemName_EN}</td>
									<td width="120">${prd.itemName_CN}</td>
									<td width="80">${prd.result}</td>
									<td width="80"><c:if test="${prd.resultHint == 'z'}">正常</c:if> <c:if test="${prd.resultHint == 'd'}">低↓</c:if> <c:if
											test="${prd.resultHint == 'g'}">高↑</c:if></td>
									<td width="80">${prd.resultReference}</td>
									<td width="80">${prd.resultUnit}</td>
								</tr>
							</c:forEach>
						</table>
						<table cellpadding="0" cellspacing="0" border="0" width="773" id="baseInformation">
							<tr height="40" valign="bottom">
								<td><strong>其他信息</strong></td>
							</tr>
							<tr height="40" valign="bottom">
								<td width="67" style="line-height: 30px;">检测诊所</td>
								<td width="329"><input type="text" class="input14" style="width: 660px;" readonly="readonly" value="${patientReport.hospitalName}" /></td>
							</tr>
							<tr height="10" valign="bottom">
							</tr>
							<tr height="40" valign="bottom">
								<td width="67" style="line-height: 30px;">检测结果</td>
								<td width="329"><textarea style="border: 1px solid #e4e4e3; width: 660px; height: 200px;" readonly="readonly">${patientReport.doctorResult}</textarea>
								</td>
							</tr>

							<tr height="92" valign="bottom" align="left">
								<td width="67">&nbsp;</td>
								<td colspan="3" width="706" style="text-align: center;">
									<button style="margin-right: 80px;" type="button" onclick="lh.back();" class="btn btn-success">返回</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="pz_down">
		<%@ include file="/views/front/common/bottom.htm"%><!-- 底部栏 -->
	</div>
	<%@ include file="/views/common/common_js.htm"%>
	<%@ include file="/views/common/common_front_js.htm"%>
	<script type="text/javascript" src="/js/front/domain/hospital/hospitalCommon.js" title="v"></script>
</body>
</html>
