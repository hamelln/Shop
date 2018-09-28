<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../layout/top.jsp" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bbs.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="../js/bbs.js"></script>
<script type="text/javascript">
	function onClick() {
		$("#view_list").show();
	}
	function onClick2() {
		$("#view_list").hide();
	}
	document.getElementById('list_button').addEventListener('click', onClick);
	document.getElementById('list_remove').addEventListener('click', onClick2); // 또 하나의 이벤트 연결
</script>

<div class="btn-group btn-group-justified" role="group">
	<center>
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-default" onclick="onClick2()">
				<a id="list_remove" onclick="onClick2()">공지사항</a>
			</button>
		</div>
		<div class="btn-group" role="group" id="in-btn">
			<button type="button" class="btn btn-default">
				<a href="getList.do">리스트</a>
			</button>
		</div>
		<div class="btn-group" role="group" id="in-btn">
			<button type="button" class="btn btn-default">
				<a data-toggle="modal" data-target="#myModal" id="quest-cursor">1:1문의</a>
			</button>
		</div>
	</center>
</div>

<div class="container">
 <ul class="list-group">
 
 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        <span class="label label-danger">new</span>
         <li class="list-group-item">  
         <span class="badge" id="badge">답변완료</span>
         <span class="badge" id="badge">2018.9.10</span>
         <span class="badge" id="badge">vuas***님</span>
 <div id="pre-post">
 배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
      </div>
      <div class="well">
    <span class="glyphicon glyphicon-comment" aria-hidden="true"> </span>
    질문 감사합니다. 저희 일조는 언제나 최고품질의 상품만을 제공해드리도록 노력하고 있습니다. 건의해주신 점을 개선하도록 전달하겠습니다.
  </div>
    </div>
  </div>


  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <span class="label label-danger">new</span>
         <li class="list-group-item"> 
          <span class="badge" id="badge">답변완료</span>
          <span class="badge" id="badge" >2018.9.10</span>
          <span class="badge" id="badge" >vuas***님</span>
 <div id="pre-post">
 배송이dd ddddd늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
        배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
             </div>
      <div class="well">
    <span class="glyphicon glyphicon-comment" aria-hidden="true" style="margin: 1 auto;"> </span>
    질문 감사합니다. 저희 일조는 언제나 최고품질의 상품만을 제공해드리도록 노력하고 있습니다. 건의해주신 점을 개선하도록 전달하겠습니다.
  </div>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree" style="background-color: white; background-image: none;">
      <h4 class="panel-title">
        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         <li class="list-group-item">  
         <span class="badge" id="badge-wait">답변대기중</span>
          <span class="badge" id="badge">2018.9.10</span>
          <span class="badge" id="badge">vuas***님</span>
           <div id="pre-post">
 배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
  </div>
  </li>        
  </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
        배송이 늦어요 배송이 늦고있어요 맨날 늦는 배송 언제나 늦는 배송 나무늘보 배송 총이 없는 총알배송 배송이 느립니다. 배송이 늦는 것 같읍니다. 배송이 늦는 것으로 추정이 됩니다. 배송이 늦어요.
             </div>
    </div>
  </div>
</div>

<form action="quest.do" method="post">
<div class="modal fade" name="myModal" id="myModal" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">상품 문의 작성하기</h4>
        
        <h4 class="modal-title">
        <div class="row">
  <div class="col-lg-6">
    <div class="input-group" style="margin-top: 5px;">
      <input type="text" class="form-control" placeholder="체크하시면 본문 내용으로 대체됩니다." style="width: 530px;" name="board_title">
      <span class="input-group-addon">
        <input type="checkbox">
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
      </div>
</h4></div>  

      <div class="modal-body">
      <textarea class="form-control" rows="6" placeholder="문의하실 내용을 작성하세요." name="board_content"></textarea>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">등록</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</form>

<center>
<nav class="thre-page">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
     <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</center>
</div>
<jsp:include page="../layout/footer.jsp" />