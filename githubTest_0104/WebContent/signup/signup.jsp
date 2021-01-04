<%@ page contentType="text/html; charset=EUC-KR" %>
<html>
<head>
<title>ȸ������</title>
<link rel="stylesheet" type="text/css" href="signup.css" media="all" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600;1,700&display=swap" rel="stylesheet">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("���̵� �Է��� �ּ���.");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150");
	}

	function zipSearch() {
		url = "zipSearch.jsp?search=n";
		window.open(url, "ZipCodeSearch","width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body>
    <div class="container p-t-130">
        <div  class="form rec-4 p-t-30 p-b-30">
            <div class="logo">
                <span style="color: #4285F4">T</span>
                <span style="color: #EA4335">o</span>
                <span style="color: #FBBC05">p </span>
                <span style="color: #34A853">s</span>
                <span style="color: #4285F4">i</span>
                <span style="color: #EA4335">g</span>
                <span style="color: #FBBC05">h</span>
                <span style="color: #34A853">t</span>
                <span style="color: #4285F4">s</span>
            </div>
            <p class="intro m-b-30">Create your Top sights Account</p>
            <form id="contactform" name="regFrm" method="post" action="memberProc.jsp"> 
                <!-- <p class="contact"><label for="name">Name</label></p>  -->
                <div class="idCheck">
                    <input class="input--style-4" id="id" name="id" placeholder="ID" required="" tabindex="1" type="text">
                    <button class="btn btn--radius-2 btn--blue" type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">Check</button>
                </div>
                <br/>
                    
                <!-- <p class="contact"><label for="email">Email</label></p>  -->
                <input class="input--style-4" id="email" name="email" placeholder="Email Address" required="" type="email">
                <br/><br/>
                
                <!-- <p class="contact"><label for="username">Create a username</label></p>  -->
                <input class="input--style-4" id="username" name="name" placeholder="User name" required="" tabindex="2" type="text">
                <br/><br/>
                
                <!-- <p class="contact"><label for="gender_male">Male</label></p>  -->
                <div>
                    <p class="contact"><label for="gender">Gender</label></p> 
                    Male<input class="input--style-4" id="gender_male" name="gender" required="" value="1" type="radio">
                    Female<input class="input--style-4" id="gender_female" name="gender" required="" value="2" type="radio">
                </div>
                <br/><br/> 
                    
                <!-- <p class="contact"><label for="password">Create a password</label></p>  -->
                <input class="input--style-4" type="password" id="password" name="pwd" placeholder="Password" required=""> 
                <!-- <p class="contact"><label for="repassword">Confirm your password</label></p>  -->
                <input class="input--style-4" type="password" id="repassword" name="repwd" placeholder="Confirm" required=""> 
                <br/><br/>

                <div class="zipcodeCheck">
                    <input class="input--style-4" id="zipcode" name="zipcode" placeholder="zipcode" required="" tabindex="10" type="text">
                    <input class="input--style-4" id="address" name="address" placeholder="Address" required="" tabindex="10" type="text">
                    <button class="btn btn--radius-2 btn--blue" type="button" value="�����ȣã��" onClick="zipSearch()">Please search the address</button>
                </div>
                <br/><br/>

                <!-- <p class="contact"><label for="birthday">Birthday</label></p>  -->
                <input class="input--style-4" type="text" id="birthday" name="birthday" placeholder="Birthday" required=""> 
                <br/><br/>
                
                <div>
                    <p class="contact"><label for="birthday">Hobby</label></p> 
                    Internet<input type="checkbox" name="hobby" value="���ͳ�">
					Travel<input type="checkbox" name="hobby" value="����"> 
                    Game<input type="checkbox" name="hobby" value="����"> 
                    Movie<input type="checkbox" name="hobby" value="��ȭ"> 
                    Sports<input type="checkbox" name="hobby" value="�">
                </div>
                <br/><br/>

                <div>
                    <p class="contact"><label for="birthday">Job</label></p> 
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
                    <button class="btn btn--radius-2 btn--blue" type="button" value="ȸ������" onclick="inputCheck()">Submit</button>
                    <button class="btn btn--radius-2 btn--blue" type="submit">Reset</button>
                    <button class="btn btn--radius-2 btn--blue" type="button" value="�α���" onClick="javascript:location.href='login.jsp'">Log in</button>
                </div>
            </form> 
        </div>      
    </div>
</body>
</html>