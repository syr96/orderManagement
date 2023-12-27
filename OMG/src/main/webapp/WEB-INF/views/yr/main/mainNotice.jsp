<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">
	// 공지사항 상세 페이지 이동
	function moveQnADetail(brd_id) {
		location.href 	= '/notice/get?brd_id=' +brd_id;
	}
</script>
<style>
	.textBlack {
		color: black;
	}
</style>
<div class="card h-100">
	<div class="card-header d-flex align-items-center justify-content-between">
		<h5 class="card-title m-0 me-2"><a href="/notice/list" class="textBlack">공지사항</a></h5>
	</div>
	<div class="table-responsive text-nowrap">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>제목</th>
					<th class="text-end">날짜</th>
	
				</tr>
			</thead>
			<tbody class="table-border-bottom-0">
				<c:forEach var="notice" items="${noticeList }">
					<tr onclick="moveQnADetail(${notice.brd_id})" style="cursor: pointer;">
						<td>
							<i class="fab fa-angular fa-lg text-danger me-3"></i>
							<c:out value="${notice.title }"/>
						</td>
						<td class="text-end">
							<c:set var="date" value="${notice.reg_date }" />
							${fn:substring(date,0,10) }
						</td>
					</tr>
				</c:forEach>				
			</tbody>
		</table>
	</div>
</div>