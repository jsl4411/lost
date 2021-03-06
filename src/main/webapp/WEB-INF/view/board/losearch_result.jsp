<%--
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row isotope-grid">
			
			  <c:if test="${empty Data.boardlist}">
				  <center>데이터가 하나도 없음</center>
			  </c:if>
				
			  <c:forEach items="${boardlist}" var="boardlist">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					<div class="block2">
						<div class="block2-pic hov-img0">
							<c:if test="${ empty loginuser && empty klogin}">
			           			<a href="../gxsx/login.do"><img src="../images/Lostimgs/${boardlist.category}" alt="IMG-PRODUCT"></a>
			           		</c:if>
			           		<c:if test="${ (!empty loginuser && empty kakaologout_url) || (!empty klogin && !empty kakaologout_url)}">
								<a href="../lostitem/locontent.do?lono=${boardlist.boardSeq}"><img src="../images/Lostimgs/${boardlist.category}" alt="IMG-PRODUCT"></a>
							</c:if>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<span class="m-r-3">
									<c:if test="${ empty loginuser && empty klogin}">
					           			<a href="../gxsx/login.do"><span class="cl5">${boardlist.boardSub}</span></a>
					           		</c:if>
					           		<c:if test="${ (!empty loginuser && empty kakaologout_url) || (!empty klogin && !empty kakaologout_url)}">
										<a href="../lostitem/locontent.do?lono=${boardlist.boardSeq}"><span class="cl5">${boardlist.boardSub}</span></a>
									</c:if>
								</span>
								<a href="product-detail.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"></a>

								<span class="stext-105 cl3">
									<i class="zmdi zmdi-calendar"></i>&nbsp;${boardlist.date}
								</span>
								<span class="cl4"><i class="zmdi zmdi-pin"></i>&nbsp;${boardlist.place}</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
								<c:if test="${boardlist.boardGroup!=0}">
									<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-02.png" alt="ICON">
								</c:if>
								<c:if test="${boardlist.boardGroup==0}">
									<img class="icon-heart1 dis-block trans-04" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="../images/coza/icons/icon-heart-01.png" alt="ICON">
								</c:if>
								</a>
							</div>
							
						</div>						
					</div>
				</div>
			  </c:forEach>
			  
			</div>

			<div class="btn-nextprev">
				<c:if test="${ lostResult.paging.currentPage != 1 }">
					<button class="arrow-slick3 prev-slick3 slick-arrow" style=""
					onclick="searchAction('${lostResult.paging.prevPage}', false);">
					<i class="fa fa-angle-left" aria-hidden="true"></i></button>
				</c:if>
				<c:if test="${ lostResult.paging.currentPage != lostResult.paging.pageCount }">
				<button class="arrow-slick3 next-slick3 slick-arrow" style=""
				onclick="searchAction('${lostResult.paging.nextPage}', false);">
				<i class="fa fa-angle-right" aria-hidden="true"></i></button>
				</c:if>
			</div>

			<!-- Pagination -->
			<div class="flex-c-m flex-w w-full p-t-38" id="paging">
				<c:if test="${ lostResult.paging.startPage != 1 }">
					<p class="flex-c-m how-pagination1 trans-04 m-all-7" onclick="searchAction('${ lostResult.paging.startPage-1 }',false);">&#171;</p>
				</c:if>		
				 
			    <c:forEach begin="${ lostResult.paging.startPage }" end="${ lostResult.paging.endPage }" var="i">
			    	<c:choose>
			    		<c:when test="${ lostResult.paging.currentPage == i }">
			    			<p class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"
			    			onclick="searchAction('${i}', false);">${i}</p>
			    		</c:when>
			    		<c:otherwise>
				    		<p class="flex-c-m how-pagination1 trans-04 m-all-7"
				    		onclick="searchAction('${i}', false);">${i}</p>
			    		</c:otherwise>
			    	</c:choose>
			    </c:forEach>
				
				<c:if test="${ lostResult.paging.endPage != lostResult.paging.pageCount }">
				    <p class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"
				    	onclick="searchAction('${lostResult.paging.endPage+1}', false);">
				      		&#187;</p>
				</c:if>			  
			</div>--%>
