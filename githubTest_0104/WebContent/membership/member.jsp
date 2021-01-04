<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
<title>ȸ������</title>
<link href="signup.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap" rel="stylesheet">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="zipSearch_kakao.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("���̵� �Է��� �ּ���.");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150,top=300,left=900");
	}

	/* function zipSearch() {
		url = "zipSearch.jsp?search=n";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	} */
</script>
</head>
<body onLoad="regFrm.id.focus()">
    <div class="container p-t-130">
      <a href="../index_2.jsp" style="text-decoration:none";>
        <div  class="form rec-4 p-t-30 p-b-30">
            <div class="logo">
	        <span style="color: #4285F4">J</span>
	        <span style="color: #EA4335">E</span>
	        <span style="color: #FBBC05">J</span>
	        <span style="color: #34A853">U</span>
	        <span style="color: #4285F4">A</span>
	        <span style="color: #EA4335">L</span>
	        <span style="color: #FBBC05">O</span>
	        <span style="color: #34A853">T</span>
            </div>
        </a>
            <p class=" m-b-30">����� ���־�� ������ ���弼�� !</p>
            <form id="contactform" name="regFrm" method="post" action="memberProc.jsp"> 
                <!-- <p class="contact"><label for="name">Name</label></p>  -->
                <div class="idCheck">
                    <input class="input--style-4" id="id" name="id" placeholder="ID" required="" tabindex="1" type="text">
                    <button class="btn btn--radius-2 btn--blue" type="submit" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">���̵��ߺ�Ȯ��</button>
                </div>
                <br/>
                    
                <!-- <p class="contact"><label for="email">Email</label></p>  -->
                <input class="input--style-4" id="email" name="email" placeholder="Email �ּ�" required="" type="email">
                <br/><br/>
                
                <!-- <p class="contact"><label for="username">Create a username</label></p>  -->
                <input class="input--style-4" id="username" name="name" placeholder="����" required="" tabindex="2" type="text">
                <br/><br/>
                
                <!-- <p class="contact"><label for="gender_male">Male</label></p>  -->
                <div>
                    <p class="contact"><label for="gender">����</label></p> 
                    ����<input class="input--style-4" id="gender_male" name="gender" required="" value="1" type="radio">
                    ����<input class="input--style-4" id="gender_female" name="gender" required="" value="2" type="radio">
                </div>
                <br/><br/> 
                    
                <!-- <p class="contact"><label for="password">Create a password</label></p>  -->
                <input class="input--style-4" type="password" id="password" name="pwd" placeholder="��й�ȣ" required=""> 
                <!-- <p class="contact"><label for="repassword">Confirm your password</label></p>  -->
                <input class="input--style-4" type="password" id="repassword" name="repwd" placeholder="��й�ȣȮ��" required=""> 
                <br/><br/>

                <div class="zipcodeCheck">
                    
                    <input class="input--style-4" id="sample6_postcode" name="zipcode" placeholder="�ּ�" required="" tabindex="10" type="text">
                    <button class="btn btn--radius-2 btn--blue" type="submit" onclick="sample6_execDaumPostcode()">�ּ� �˻�</button>
                    <input class="input--style-4" id="sample6_address" name="address" placeholder="���ּ�" required="" tabindex="10" type="text">
                    
                </div>
                <br/><br/>

                <!-- <p class="contact"><label for="birthday">Birthday</label></p>  -->
                <input class="input--style-4" type="text" id="birthday" name="birthday" placeholder="Birthday" required=""> 
                <br/><br/>
                
                <div>
                    <p class="contact"><label for="birthday">���</label></p> 
                    ���ͳ�<input type="checkbox" name="hobby" value="���ͳ�">
					����<input type="checkbox" name="hobby" value="����"> 
                    ����<input type="checkbox" name="hobby" value="����"> 
                    ��ȭ<input type="checkbox" name="hobby" value="��ȭ"> 
                    ������<input type="checkbox" name="hobby" value="�">
                </div>
                <br/><br/>

                <div>
                    <p class="contact"><label for="birthday">����</label></p> 
                    <select name=job class="select input--style-4">
                        <option value="0" selected>�����ϼ���.
                        <option value="ȸ���">ȸ���
                        <option value="����������">����������
                        <option value="�����л�">�����л�
                        <option value="�Ϲ��ڿ���">�Ϲ��ڿ���
                        <option value="������">������
                        <option value="�Ƿ���">�Ƿ���
                        <option value="������">������
                        <option value="����,���,������">����.���/������
                        <option value="��,��,����,������">��/��/����/������
                        <option value="�ֺ�">�ֺ�
                        <option value="����">����
                        <option value="��Ÿ">��Ÿ
                    </select>
                </div>
                <br/><br/><br/>
                
                <div class="button-line">
                    <button class="btn btn--radius-2 btn--blue" type="submit" onclick="inputCheck()">Submit</button>
                    <button class="btn btn--radius-2 btn--blue" type="reset">Reset</button>
                </div>
            </form> 
        </div>      
    </div>
</body>
</html>