<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>
<title>JSP Board</title>
<link href="post.css" rel="stylesheet" type="text/css">
</head>
<body >
    <header class="" id="header">
        <!-- ��� ���� �ڽ�1 - ����(���Ÿ޴�+����Ʈ�ΰ�+��� ��κб���) -->
        <div class="hd_b1">
            
     
            <!-- ����Ʈ�ΰ� -->
            <div class="hd_c2">
                <a class="" href="index_2.jsp">
                    <p>JEJUALOT</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- ��� ������ �α��� -->
           
            <div class="hd_c4">
                <a class="" href="signup/login.jsp">
           
                    �α���
                </a>
            </div>
            <!-- ��� ������ �������� �̹��� -->
            
            <div class="hd_c3">
                <a class="" href="#">
                    
                    <svg id="���̾�_1" data-name="���̾� 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 550 550"><defs><style>.cls-1,.cls-2{fill:none;stroke-miterlimit:10;stroke-width:33px;}.cls-1{stroke:#626567;}.cls-2{stroke:#626567;}</style></defs><circle class="cls-1" cx="246.5" cy="190.5" r="75.94"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><path class="cls-1" d="M93.09,410.91s38.67-69.05,111-69.05c0,0,59.07,22.66,116,0,0,0,57.76-2.21,111,69.05C431,410.91,270.22,582.36,93.09,410.91Z" transform="translate(-15.55 -10.61)"/></svg>
   
                </a>
            </div>
        </div>

    </header>
    <div id="center">
        <div class="qna_bn">
            <img class="qna_bnimg" alt="" src="img/qna.jpg">
            <!-- ū���� ���Ʋ ���� ���ֵ� Ʋ -->
            <div class="qna_bntxt">
                <h1 class="">�۾���</h1>
            </div>
         </div>
        
        <form name="postFrm" method="post" action="boardPost" enctype="multipart/form-data">
        <table class="wt_wp">
            <tr>
                <td >
                <table class="wt_tb">
                
                <!-- sql = "insert tblHelp(name,category,title,content,ref,pos,depth,regdate,"
                            + "pass,count,ip,filename,filesize,rstatus)";
                    sql += "values(?, ?, ?, ?, 0, 0, now(), ?, 0, ?, ?, ?)"; -->
                
                
                    <tr>
                        <td >���̵�</td>
                        <td >
                        <input name="id" size="10" maxlength="8"></td>
                    </tr>
                    <tr>
                        <td>��й�ȣ</td>
                        <td><input type="password" name="pass" size="15" maxlength="15"></td>
                    </tr>
                    <tr>
                        <td>�з�</td>
                        <td><input name="category" size="15" maxlength="15"></td>
                    </tr>
                    <tr>
                        <td>����</td>
                        <td>
                        <input name="title" size="50" maxlength="30"></td>
                    </tr>
                    <tr >
                        <td>����</td>
                        <td class="wt_tx"><textarea name="content" rows="10" cols="50"></textarea></td>
                    </tr>
                    <tr>
                        <td>����ã��</td> 
                        <td><input type="file" name="filename" size="50" maxlength="50"></td>
                    </tr>
                    <tr>
                        <td >����Ÿ��</td>
                        <td class="radioBox">HTML<input type="radio" name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
                        TEXT<input type="radio" name="contentType" value="TEXT" checked>
                        </td>
                    </tr>
                    <tr>
                        <!-- <td colspan="2"><hr/></td> -->
                    </tr>
                    <tr>
                        <td colspan="2" class="wt_bb">
                            <input type="submit" value="���">
                            <input type="reset" value="�ٽþ���">
                            <input type="button" value="����Ʈ" onClick="javascript:location.href='qna.jsp'">
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
        <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
        </form>
    </div>
</body>
</html>