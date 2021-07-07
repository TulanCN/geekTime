<%@tag language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@attribute name="title" type="java.lang.String" required="false" description="模态框标题" %>
<%@attribute name="msg" type="java.lang.String" required="true" description="模态框内容" %>
<%@attribute name="opts" type="java.lang.String" required="false" description="操作类型：info-提示 confirm-确认" %>
<%@attribute name="url" type="java.lang.String" required="false" description="确认后跳转url" %>

<div class="modal fade" id="modal-default" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">${title}</h4>
            </div>
            <div class="modal-body">
                <p>${msg}</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="btnModalOK">确定</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<script>
    $("#btnModalOK").click(function () {
        <c:if test="${opts!='confirm'}">
        $("#modal-default").modal("hide");
        </c:if>
        <c:if test="${opts=='confirm'}">
        console.log(${url});
        </c:if>
    })
</script>