<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>Document</title> -->
    <title>Things to do</title>
        <!-- <style>.gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}
        </style> -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link href="save_page.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/9588789e92.js" crossorigin="anonymous"></script>
</head>
<body id="">
        
    <!-- 헤더시작 -->
    <header class="" id="header">

        <!-- 삼선클릭시 왼쪽 사이드바 생성+슬라이딩 -->
        <!-- <div class="">
            <div class="gb_Ic gb_Fc gb_Mc" ng-non-bindable="" role="navigation">
                <div class="gb_Rc">
                    <div class="gb_sc">
                        <div class="gb_tc">
                            <a class="gb_we gb_uc" aria-label="Google" href="/">
                                <span class="gb_va gb_te" aria-hidden="true"></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="gb_Nc">
                    <div class="fFqfw" jsname="U0exHf" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQxqwEegQIABAC" jsowner="ow3">
                        <div class="RCfRZd">
                            <div class="OXZ8S " data-tab="12" jsaction="click:Gux73b" role="link" aria-label="Trips" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAD">
                                <div class="kvOb8">
                                    <span class="DPvwYc KJackd" aria-hidden="true">
                                        <svg width="24" height="24" viewBox="0 0 24 24">
                                            <path d="M13.97 5.34c.01-.11.03-.22.03-.34 0-1.1-.9-2-2-2s-2 .9-2 2c0 .12.02.23.03.34A5.997 5.997 0 0 0 6 11v8c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-8c0-2.62-1.69-4.85-4.03-5.66zM12 4c.55 0 1 .45 1 1 0 .03-.01.06-.02.09-.32-.06-.64-.09-.98-.09s-.66.03-.98.09C11.01 5.06 11 5.03 11 5c0-.55.45-1 1-1zm3 14H9v-1.5h6V18zm-2.06-6.06L12 14l-.94-2.06L9 11l2.06-.94L12 8l.94 2.06L15 11l-2.06.94z">
                                            </path>
                                        </svg>
                                    </span>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Trips
                                </div>
                            </div>
                            <div class="OXZ8S qs41qe" data-tab="15" jsaction="click:Gux73b" role="link" aria-label="Selected tab: Things to do" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAE">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        camera_alt
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Things to do
                                </div>
                            </div>
                            <div class="OXZ8S " data-tab="7" jsaction="click:Gux73b" role="link" aria-label="Flights" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAF">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        flight
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Flights
                                </div>
                            </div>
                            <div class="OXZ8S " data-tab="8" jsaction="click:Gux73b" role="link" aria-label="Hotels" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAG">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        hotel
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Hotels
                                </div>
                            </div>
                            <div class="OXZ8S " data-tab="14" jsaction="click:Gux73b" role="link" aria-label="Holiday homes" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAH">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        house
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Holiday homes
                                </div>
                            </div>
                            <div class="JQSOic">
                                <div class="OXZ8S " data-id="2-hmit" jsaction="click:Y0OMn" role="link" aria-label="Tracked flight prices" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAI">
                                    <div class="kvOb8">
                                        <i class="material-icons-extended KJackd" aria-hidden="true">
                                            timeline
                                        </i>
                                    </div>
                                    <div class="T7XnYe pJYzRb">
                                        Tracked flight prices
                                    </div>
                                </div>
                                <div class="OXZ8S eLNT1d" data-id="12-hmit" jsaction="click:Y0OMn" role="link" aria-label="Change language" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAJ">
                                    <div class="kvOb8">
                                        <i class="material-icons-extended KJackd" aria-hidden="true">
                                            language
                                        </i>
                                    </div>
                                    <div class="T7XnYe pJYzRb">
                                        Change language
                                    </div>
                                </div>
                                <div class="OXZ8S eLNT1d" data-id="4-hmit" jsaction="click:Y0OMn" role="link" aria-label="Change currency" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAK">
                                    <div class="kvOb8">
                                        <i class="material-icons-extended KJackd" aria-hidden="true">
                                            attach_money
                                        </i>
                                    </div>
                                    <div class="T7XnYe pJYzRb">
                                        Change currency
                                    </div>
                                </div>
                                <div class="OXZ8S eLNT1d" data-id="11-hmit" jsaction="click:Y0OMn" role="link" aria-label="Change country" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAL">
                                    <div class="kvOb8">
                                        <i class="material-icons-extended KJackd" aria-hidden="true">
                                            edit_location
                                        </i>
                                    </div>
                                    <div class="T7XnYe pJYzRb">
                                        Change country
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="JQSOic CelpRe">
                            <div class="OXZ8S " data-id="6-hmit" jsaction="click:Y0OMn" role="link" aria-label="Feedback" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAM">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        feedback
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Feedback
                                </div>
                            </div>
                            <div class="OXZ8S " data-id="7-hmit" jsaction="click:Y0OMn" role="link" aria-label="Help" tabindex="0" data-ved="2ahUKEwjuyoToot_sAhUI6b0KHU6NAccQ36MCegQIABAN">
                                <div class="kvOb8">
                                    <i class="material-icons-extended KJackd" aria-hidden="true">
                                        help
                                    </i>
                                </div>
                                <div class="T7XnYe pJYzRb">
                                    Help
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <!-- 헤더 내부 박스1 - 좌측(버거메뉴+사이트로고+가운데 빈부분까지) -->
        <div class="hd_b1">
            
            <!-- 버거메뉴 -->
            <div class="hd_c1">
                <svg focusable="false" viewBox="0 0 24 24">
                    <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"></path>
                </svg>
            </div>

            <!-- <div class="gb_yc gb_Cc gb_Fa" aria-label="Close" role="button" tabindex="0">
                <svg viewBox="0 0 24 24">
                    <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>
                </svg>
            </div> -->

            <!-- 사이트로고 -->
            <div class="hd_c2">
                <a class="" href="https://g2project.github.io/main">
                    <p>Top Sights</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- 헤더 오른쪽 그리드메뉴 -->
            <div class="hd_c3">
                <a class="" href="#">
                    <svg class="gb_8e" focusable="false" viewBox="0 0 24 24">
                        <path d="M6,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM16,6c0,1.1 0.9,2 2,2s2,-0.9 2,-2 -0.9,-2 -2,-2 -2,0.9 -2,2zM12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2z"></path>
                    </svg>
                </a>
            </div>

            <!-- 헤더 오른쪽 사용자 이름로고 -->
            <div class="hd_c4">
                <a class="" href="#">
                    <img class="" src="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo" srcset="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo 1x, https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s64-c-mo 2x " alt="" aria-hidden="true" data-noaft="">
                </a>
            </div>
        </div>
        
        <!--계정정보 -->
        <!-- <div>
            <div style="overflow: hidden; position: absolute; top: 0px; visibility: hidden; width: 328px; z-index: 991; height: 0px; margin-top: 57px; right: 0px; margin-right: 4px; transition: height 0.3s ease-in-out 0s;">
                <iframe role="presentation" frameborder="0" scrolling="no" src="https://ogs.google.com/u/0/widget/app?origin=https%3A%2F%2Fwww.google.com&amp;cn=app&amp;pid=269&amp;spid=405&amp;hl=en-GB" style="height: 100%; width: 100%; visibility: hidden;"></iframe>
            </div>

            <div class="gb_5a gb_F gb_l gb_6a" aria-label="Account Information" aria-hidden="true" img-loaded="1">
                <div class="gb_eb">
                    <div class="gb_fb">
                        <img class="gb_Ma gbip gb_jb" src="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s83-c-mo" title="Profile" alt="" aria-hidden="true" srcset="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s83-c-mo 1x, https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s192-c-mo 2x " data-iml="656252.9849999992">
                        <div class="gb_nb gb_jb">
                            <a class="gb_ob gb_dg gb_jb gb_ig" aria-label="Change profile picture." href="https://myaccount.google.com/?utm_source=OGB" target="_blank">
                                <svg class="gb_pb" enable-background="new 0 0 24 24" focusable="false" height="26" viewBox="0 0 24 24" width="18" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="M20 5h-3.17L15 3H9L7.17 5H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V7c0-1.1-.9-2-2-2zm0 14H4V7h16v12zM12 9c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4z"></path>
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gb_gb">
                <div class="gb_qb gb_rb">
                    Junggeun Yi
                </div>
                <div class="gb_sb">
                    mazia6513@gmail.com
                </div>
                <a class="gb_wb gb_eg gbp1 gb_2e gb_8c" href="https://myaccount.google.com/?utm_source=OGB&amp;utm_medium=act" target="_blank">
                    Manage your Google Account
                </a>
            </div>

            <div class="gb_Kb gb_Nb">
                <div class="gb_kg gb_kc gb_Fa">
                    <div class="gb_lc">
                    </div>
                </div>
                <div class="gb_hg gb_Rb" aria-hidden="false">
                    <a class="gb_Qb gb_1b" href="/travel/things-to-do?g2lb=2502548,4258168,4270442,4271060,4306835,4317915,4322823,4328159,4344615,4371335,4401769,4419364,4428793,4433754,4447566,4452530,4458303,4270859,4284970,4291517,4412693&amp;hl=en-KR&amp;gl=kr&amp;un=1&amp;dest_mid=/m/03v6t7&amp;dest_state_type=main&amp;dest_src=ts&amp;sa=X&amp;ved=2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0&amp;authuser=0" target="_blank" rel="noreferrer" aria-hidden="true">
                        <img class="gb_3b gb_jb" src="https://lh3.googleusercontent.com/-9bHSrRt58O8/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucl0JampIw0KOR7XprlfQMJSUebC8g/s48-c/photo.jpg" alt="" aria-hidden="true" data-iml="656408.6399999997">
                        <div class="gb_Tb">
                            <div class="gb_9b">
                                Default
                            </div>
                            <div class="gb_5b">
                                Junggeun Yi
                            </div>
                            <div class="gb_7b" dir="ltr">
                                mazia6513@gmail.com
                            </div>
                        </div>
                    </a>
                    <div class="gb_Qb gb_Ob" tabindex="0" role="group" aria-haspopup="true" aria-expanded="false">
                        <img class="gb_3b gb_jb" src="https://lh3.googleusercontent.com/-ekm9xgupXII/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck64wKv7jSME5VTZavDHtMTOlWRNw/s48-c/photo.jpg" alt="" aria-hidden="true" data-iml="656409.1599999992">
                        <div class="gb_Tb">
                            <div class="gb_9b">
                                Signed out
                            </div>
                            <div class="gb_5b">
                                주식회사지앤씨테크
                            </div>
                            <div class="gb_7b gb_8b" dir="ltr">
                                gnctech1@gmail.com
                            </div>
                            <div class="gb_Db" aria-hidden="true">
                                <svg class="gb_Eb" focusable="false" height="20" viewBox="0 0 20 20" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="M0 0h20v20H0V0z" fill="none"></path>
                                    <path d="M6.18 7L10 10.82 13.82 7 15 8.17l-5 5-5-5z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gb_ac">
                            <a class="gb_Wb gb_Zb gb_Xb" aria-hidden="true" aria-label="Sign in" role="link" href="https://accounts.google.com/AccountChooser?source=ogb&amp;continue=https%3A%2F%2Fwww.google.com%2Ftravel%2Fthings-to-do%3Fg2lb%3D2502548%2C4258168%2C4270442%2C4271060%2C4306835%2C4317915%2C4322823%2C4328159%2C4344615%2C4371335%2C4401769%2C4419364%2C4428793%2C4433754%2C4447566%2C4452530%2C4458303%2C4270859%2C4284970%2C4291517%2C4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D%2Fm%2F03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0%26authuser%3D&amp;Email=gnctech1%40gmail.com" target="_blank" rel="noreferrer">
                                Sign in
                            </a>
                            <button class="gb_Wb gb_0b gb_Xb" aria-hidden="true" aria-label="Remove" role="button">
                                Remove
                            </button>
                        </div>
                    </div>
                    <div class="gb_Qb gb_Ob" tabindex="0" role="group" aria-haspopup="true" aria-expanded="false">
                        <img class="gb_3b gb_jb" src="https://lh3.googleusercontent.com/-flh6epgQ4OM/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucm3Hhxx9TK2LTljm11B3D9QZUXyiQ/s48-c/photo.jpg" alt="" aria-hidden="true" data-iml="656410.5049999999">
                        <div class="gb_Tb">
                            <div class="gb_9b">
                                Signed out
                            </div>
                            <div class="gb_5b">
                                Junggeun Lee
                            </div>
                            <div class="gb_7b gb_8b" dir="ltr">
                                diaskoreacs@gmail.com
                            </div>
                            <div class="gb_Db" aria-hidden="true">
                                <svg class="gb_Eb" focusable="false" height="20" viewBox="0 0 20 20" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="M0 0h20v20H0V0z" fill="none"></path>
                                    <path d="M6.18 7L10 10.82 13.82 7 15 8.17l-5 5-5-5z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gb_ac">
                            <a class="gb_Wb gb_Zb gb_Xb" aria-hidden="true" aria-label="Sign in" role="link" href="https://accounts.google.com/AccountChooser?source=ogb&amp;continue=https%3A%2F%2Fwww.google.com%2Ftravel%2Fthings-to-do%3Fg2lb%3D2502548%2C4258168%2C4270442%2C4271060%2C4306835%2C4317915%2C4322823%2C4328159%2C4344615%2C4371335%2C4401769%2C4419364%2C4428793%2C4433754%2C4447566%2C4452530%2C4458303%2C4270859%2C4284970%2C4291517%2C4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D%2Fm%2F03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0%26authuser%3D&amp;Email=diaskoreacs%40gmail.com" target="_blank" rel="noreferrer">
                                Sign in
                            </a>
                            <button class="gb_Wb gb_0b gb_Xb" aria-hidden="true" aria-label="Remove" role="button">
                                Remove
                            </button>
                        </div>
                    </div>
                    <div class="gb_Qb gb_Ob" tabindex="0" role="group" aria-haspopup="true" aria-expanded="false">
                        <img class="gb_3b gb_jb" src="https://lh3.googleusercontent.com/-RVTOj1gcku8/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnpMH4JkRKQSBlrWR62cld11l9S2w/s48-c/photo.jpg" alt="" aria-hidden="true" data-iml="656410.5799999997">
                        <div class="gb_Tb">
                            <div class="gb_9b">
                                Signed out
                            </div>
                            <div class="gb_5b">
                                JK Y
                            </div>
                            <div class="gb_7b gb_8b" dir="ltr">
                                2joongkeun@gmail.com
                            </div>
                            <div class="gb_Db" aria-hidden="true">
                                <svg class="gb_Eb" focusable="false" height="20" viewBox="0 0 20 20" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="M0 0h20v20H0V0z" fill="none"></path>
                                    <path d="M6.18 7L10 10.82 13.82 7 15 8.17l-5 5-5-5z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gb_ac">
                            <a class="gb_Wb gb_Zb gb_Xb" aria-hidden="true" aria-label="Sign in" role="link" href="https://accounts.google.com/AccountChooser?source=ogb&amp;continue=https%3A%2F%2Fwww.google.com%2Ftravel%2Fthings-to-do%3Fg2lb%3D2502548%2C4258168%2C4270442%2C4271060%2C4306835%2C4317915%2C4322823%2C4328159%2C4344615%2C4371335%2C4401769%2C4419364%2C4428793%2C4433754%2C4447566%2C4452530%2C4458303%2C4270859%2C4284970%2C4291517%2C4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D%2Fm%2F03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0%26authuser%3D&amp;Email=2joongkeun%40gmail.com" target="_blank" rel="noreferrer">
                                Sign in
                            </a>
                            <button class="gb_Wb gb_0b gb_Xb" aria-hidden="true" aria-label="Remove" role="button">
                                Remove
                            </button>
                        </div>
                    </div>
                    <div class="gb_Qb gb_Ob" tabindex="0" role="group" aria-haspopup="true" aria-expanded="false">
                        <img class="gb_3b gb_jb" src="https://lh3.googleusercontent.com/-YoW8mvXN4_w/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmEnuWW_o-DDVwC6ABaVTtYeGHyiQ/s48-c/photo.jpg" alt="" aria-hidden="true" data-iml="656410.6300000004">
                        <div class="gb_Tb">
                            <div class="gb_9b">
                                Signed out
                            </div>
                            <div class="gb_5b">
                                Junggeun Lee
                            </div>
                            <div class="gb_7b gb_8b" dir="ltr">
                                likessonsal@gmail.com
                            </div>
                            <div class="gb_Db" aria-hidden="true">
                                <svg class="gb_Eb" focusable="false" height="20" viewBox="0 0 20 20" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <path d="M0 0h20v20H0V0z" fill="none"></path>
                                    <path d="M6.18 7L10 10.82 13.82 7 15 8.17l-5 5-5-5z"></path>
                                </svg>
                            </div>
                        </div>
                        <div class="gb_ac">
                            <a class="gb_Wb gb_Zb gb_Xb" aria-hidden="true" aria-label="Sign in" role="link" href="https://accounts.google.com/AccountChooser?source=ogb&amp;continue=https%3A%2F%2Fwww.google.com%2Ftravel%2Fthings-to-do%3Fg2lb%3D2502548%2C4258168%2C4270442%2C4271060%2C4306835%2C4317915%2C4322823%2C4328159%2C4344615%2C4371335%2C4401769%2C4419364%2C4428793%2C4433754%2C4447566%2C4452530%2C4458303%2C4270859%2C4284970%2C4291517%2C4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D%2Fm%2F03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0%26authuser%3D&amp;Email=likessonsal%40gmail.com" target="_blank" rel="noreferrer">
                                Sign in
                            </a>
                            <button class="gb_Wb gb_0b gb_Xb" aria-hidden="true" aria-label="Remove" role="button">
                                Remove
                            </button>
                        </div>
                    </div>
                </div>
                <div class="gb_Db" aria-hidden="true">
                    <svg class="gb_Eb" focusable="false" height="20" viewBox="0 0 20 20" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path d="M0 0h20v20H0V0z" fill="none"></path>
                        <path d="M6.18 7L10 10.82 13.82 7 15 8.17l-5 5-5-5z"></path>
                    </svg>
                </div>
                <a class="gb_bc gb_Fa gb_Ub" href="https://myaccount.google.com/brandaccounts?authuser=0&amp;continue=https://www.google.com/travel/things-to-do%3Fg2lb%3D2502548,4258168,4270442,4271060,4306835,4317915,4322823,4328159,4344615,4371335,4401769,4419364,4428793,4433754,4447566,4452530,4458303,4270859,4284970,4291517,4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D/m/03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0&amp;service=/travel/things-to-do%3Fg2lb%3D2502548,4258168,4270442,4271060,4306835,4317915,4322823,4328159,4344615,4371335,4401769,4419364,4428793,4433754,4447566,4452530,4458303,4270859,4284970,4291517,4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D/m/03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0%26authuser%3D%24authuser" aria-hidden="true">
                    <div class="gb_cc">
                        <svg focusable="false" height="20" viewBox="0 0 24 24" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <path d="M19 3H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 2v10.79C16.52 14.37 13.23 14 12 14s-4.52.37-7 1.79V5h14zM5 19v-.77C6.74 16.66 10.32 16 12 16s5.26.66 7 2.23V19H5zm7-6c1.94 0 3.5-1.56 3.5-3.5S13.94 6 12 6 8.5 7.56 8.5 9.5 10.06 13 12 13zm0-5c.83 0 1.5.67 1.5 1.5S12.83 11 12 11s-1.5-.67-1.5-1.5S11.17 8 12 8z" fill="#5F6368"></path>
                            <path d="M0 0h24v24H0V0z" fill="none"></path>
                        </svg>
                    </div>
                    <div class="gb_ec gb_fc">
                        All Brand accounts
                    </div>
                    <svg class="gb_gc" focusable="false" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z" fill="#5F6368"></path>
                        <path d="M0 0h24v24H0z" fill="none"></path>
                    </svg>
                </a>
            </div>
            <div class="gb_Vb" tabindex="-1">
                <a class="gb_Ab gb_ag" href="https://accounts.google.com/AddSession?service=searchandassistant&amp;continue=https://www.google.com/travel/things-to-do?g2lb%3D2502548,4258168,4270442,4271060,4306835,4317915,4322823,4328159,4344615,4371335,4401769,4419364,4428793,4433754,4447566,4452530,4458303,4270859,4284970,4291517,4412693%26hl%3Den-KR%26gl%3Dkr%26un%3D1%26dest_mid%3D/m/03v6t7%26dest_state_type%3Dmain%26dest_src%3Dts%26sa%3DX%26ved%3D2ahUKEwjikO_Mot_sAhVXPnAKHXI_CjkQuL0BMAB6BAgSEC0&amp;hl=en-KR" target="_blank">
                    <div class="gb_Bb">
                        <svg class="gb_Cb" enable-background="new 0 0 24 24" focusable="false" height="20" viewBox="0 0 24 24" width="20" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <path d="M9 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0-6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2zm0 7c-2.67 0-8 1.34-8 4v3h16v-3c0-2.66-5.33-4-8-4zm6 5H3v-.99C3.2 16.29 6.3 15 9 15s5.8 1.29 6 2v1zm3-4v-3h-3V9h3V6h2v3h3v2h-3v3h-2z"></path>
                        </svg>
                    </div>
                    <div class="gb_Fb">
                        Add another account
                    </div>
                </a>
            </div>
            <div class="gb_bg gb_Hb">
                <a class="gb_Ib gb_fg gb_ng gb_2e gb_8c" id="gb_71" href="https://accounts.google.com/Logout?hl=en-KR" target="_top">
                    Sign out
                </a>
            </div>
            <div class="gb_cg gb_xb">
                <a class="gb_yb gb_Mb" href="https://policies.google.com/privacy?hl=en-GB" target="_blank">
                    Privacy Policy
                </a>
                <span class="gb_Ta" aria-hidden="true">•</span>
                <a class="gb_yb gb_Lb" href="https://myaccount.google.com/termsofservice?hl=en-GB" target="_blank">
                    Terms of Service
                </a>
            </div>
            <div class="gb_6d gb_fe"></div>
        </div> -->
    </header>

    <!-- <div class="wrapper"> -->
        <!-- 왼쪽사이드바 프레임 -->
        <div id="sb">
            <!-- 왼쪽사이드바 로고5개 프레임 -->
            <nav class="">

                <!-- 왼쪽사이드바 로고5개 중 1번 여행 -->
                <div>
                    <a class="sb_it sb_i1" href="https://g2project.github.io/main/trip/trip.html">
                        <button class="sb_btn" >
                            <div class=""></div>
                            <span class="">
                                <!-- 왼쪽사이드바 로고5개 중 1번 여행 아이콘 -->
                                <svg viewBox="0 0 24 24" class="sb_svg">
                                    <path d="M13.97 5.34c.01-.11.03-.22.03-.34 0-1.1-.9-2-2-2s-2 .9-2 2c0 .12.02.23.03.34A5.997 5.997 0 0 0 6 11v8c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-8c0-2.62-1.69-4.85-4.03-5.66zM12 4c.55 0 1 .45 1 1 0 .03-.01.06-.02.09-.32-.06-.64-.09-.98-.09s-.66.03-.98.09C11.01 5.06 11 5.03 11 5c0-.55.45-1 1-1zm3 14H9v-1.5h6V18zm-2.06-6.06L12 14l-.94-2.06L9 11l2.06-.94L12 8l.94 2.06L15 11l-2.06.94z"></path>
                                </svg>
                                <!-- 왼쪽사이드바 로고5개 중 1번 여행 아이콘 밑 제목 Trips -->
                            </span>
                            <div class="">
                                <span>
                                    여행
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 2번 Things to do -->
                <div>
                    <a class="sb_it sb_i2" href="https://g2project.github.io/main/sights/sights.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 2번 Things to do 아이콘 -->
                            <svg viewBox="0 0 612 612" class="sb_svg">
                                <circle cx="256" cy="277.333" r="106.667"/>
                                <path d="M469.333,106.667h-67.656c-8.552,0-16.583-3.333-22.635-9.375l-39-39c-10.073-10.073-23.469-15.625-37.719-15.625     h-92.646c-14.25,0-27.646,5.552-37.719,15.625l-39,39c-6.052,6.042-14.083,9.375-22.635,9.375H42.667     C19.135,106.667,0,125.802,0,149.333v277.333c0,23.531,19.135,42.667,42.667,42.667h426.667     c23.531,0,42.667-19.135,42.667-42.667V149.333C512,125.802,492.865,106.667,469.333,106.667z M256,405.333     c-70.583,0-128-57.417-128-128s57.417-128,128-128s128,57.417,128,128S326.583,405.333,256,405.333z M426.667,213.333     c-11.76,0-21.333-9.573-21.333-21.333s9.573-21.333,21.333-21.333S448,180.24,448,192S438.427,213.333,426.667,213.333z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 2번 아이콘 밑 제목 Things to do -->
                            <div class="">
                                <span>
                                    할 것
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 3번 Flights -->
                <div>
                    <a class="sb_it sb_i3" href="https://g2project.github.io/main/safetrip/safetrip.html">
                        <button class="sb_btn">


                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 3번 Flights 아이콘 -->
                            <svg viewBox="0 0 512 512" class="sb_svg">
                                <path d="M373.032,223.322h-24.21V34.133h16.212c9.425,0,17.067-7.641,17.067-17.067S374.46,0,365.034,0H146.966
                                c-9.425,0-17.067,7.641-17.067,17.067s7.641,17.067,17.067,17.067h16.212v189.189h-24.21c-21.958,0-39.822,17.864-39.822,39.822
                                v177.812c0,21.958,17.864,39.822,39.822,39.822h10.812v14.155c0,9.425,7.641,17.067,17.067,17.067s17.067-7.641,17.067-17.067
                                v-14.155h144.172v14.155c0,9.425,7.641,17.067,17.067,17.067s17.067-7.641,17.067-17.067v-14.155h10.812
                                c21.958,0,39.822-17.864,39.822-39.822V263.144C412.854,241.186,394.99,223.322,373.032,223.322z M197.311,34.133h117.378v189.189
                                H197.311V34.133z M331.756,400.548H180.244c-9.425,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h151.511
                                c9.425,0,17.067,7.641,17.067,17.067S341.181,400.548,331.756,400.548z M331.756,337.686H180.244
                                c-9.425,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h151.511c9.425,0,17.067,7.641,17.067,17.067
                                S341.181,337.686,331.756,337.686z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    여행가이드
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 4번 Hotels -->
                <div>
                    <a class="sb_it sb_i4" href="#">
                        <button class="sb_btn">
                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 4번 아이콘 -->
                            <svg viewBox="0 0 24 24" class="sb_svg">
                                <path d="M12.0224 13.9993C11.3753 15.0098 11.0001 16.2111 11.0001 17.5C11.0001 19.1303 11.6003 20.6205 12.5919 21.7615C11.7963 
                                21.9216 10.9314 22.0011 10.0001 22.0011C6.57915 22.0011 4.05619 20.9289 2.51403 18.7646C2.18207 18.2987 2.00366 17.7409 2.00366 
                                17.1688V16.2488C2.00366 15.0068 3.01052 13.9999 4.25254 13.9999L12.0224 13.9993ZM17.5001 12C20.5377 12 23.0001 14.4624 23.0001 
                                17.5C23.0001 20.5376 20.5377 23 17.5001 23C14.4626 23 12.0001 20.5376 12.0001 17.5C12.0001 14.4624 14.4626 12 17.5001 12ZM17.5001 
                                19.751C17.1552 19.751 16.8756 20.0306 16.8756 20.3755C16.8756 20.7204 17.1552 21 17.5001 21C17.845 21 18.1246 20.7204 18.1246 
                                20.3755C18.1246 20.0306 17.845 19.751 17.5001 19.751ZM17.5002 13.8741C16.4522 13.8741 15.6359 14.6915 15.6468 15.8284C15.6494 
                                16.1045 15.8754 16.3262 16.1516 16.3236C16.4277 16.3209 16.6494 16.0949 16.6467 15.8188C16.6412 15.2398 17.0064 14.8741 17.5002 
                                14.8741C17.9725 14.8741 18.3536 15.266 18.3536 15.8236C18.3536 16.0158 18.2983 16.1659 18.1296 16.3851L18.0356 16.501L17.9366 
                                16.6142L17.6712 16.9043L17.5348 17.0615C17.1515 17.5182 17.0002 17.854 17.0002 18.3716C17.0002 18.6477 17.224 18.8716 17.5002 
                                18.8716C17.7763 18.8716 18.0002 18.6477 18.0002 18.3716C18.0002 18.1684 18.0587 18.0126 18.239 17.7813L18.3239 17.6772L18.4249 
                                17.5618L18.6906 17.2713L18.8252 17.1162C19.2035 16.6654 19.3536 16.333 19.3536 15.8236C19.3536 14.7199 18.5312 13.8741 17.5002 
                                13.8741ZM10.0001 2.00464C12.7615 2.00464 15.0001 4.24321 15.0001 7.00464C15.0001 9.76606 12.7615 12.0046 10.0001 12.0046C7.2387 
                                12.0046 5.00012 9.76606 5.00012 7.00464C5.00012 4.24321 7.2387 2.00464 10.0001 2.00464Z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    Q&A
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 5번 Holiday homes -->
                <!-- <div>
                    <a class="sb_it sb_i5" href="https://g2project.github.io/main/Holidays/HolidayHomes.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <svg viewBox="0 0 30 30" class="sb_svg">
                                <path d="M3.674,24.876c0,0-0.024,0.604,0.566,0.604c0.734,0,6.811-0.008,6.811-0.008l0.01-5.581   c0,0-0.096-0.92,0.797-0.92h2.826c1.056,0,0.991,0.92,0.991,0.92l-0.012,5.563c0,0,5.762,0,6.667,0   c0.749,0,0.715-0.752,0.715-0.752V14.413l-9.396-8.358l-9.975,8.358C3.674,14.413,3.674,24.876,3.674,24.876z"/>
                                <path d="M0,13.635c0,0,0.847,1.561,2.694,0l11.038-9.338l10.349,9.28c2.138,1.542,2.939,0,2.939,0   L13.732,1.54L0,13.635z"/>
                                <polygon points="23.83,4.275 21.168,4.275 21.179,7.503 23.83,9.752  "/>
                            </svg>
                            <div class="">
                                <span jsname="iSelEd">
                                    Holiday homes
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div> -->
            </nav>
        </div>
        <!-- 왼쪽사이드바 로고 5개 끝 -->

        <!-- 가운데 전체 프레임 -->
        <div id="center">

            <!-- 검색창+세이브드 프레임 -->
            <div class="ct_ss">
                <div class="ct_dv ct_sc">
                    <!-- 검색창 입력부분 -->
                    <input type="text" value="Seoul" class="" autocomplete="off">
                    <!-- /검색창 입력창 틀 -->
                    <!-- 검색창 로고 -->
                    <div class="ct_pn">
                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                            <circle cx="12" cy="9" r="2.5"></circle>
                        </svg>
                    </div>
                </div>

                <!-- saved파트 -->
                <div class="ct_dv ct_sv">
                    <button class="">
                        <!-- 세이브드 둥근 테두리 실제 -->
                                <span>
                                    <!-- 세이브드 로고 -->
                                    <svg class="" viewBox="0 0 30 30">
                                        <path d="M15 7v12.97l-4.21-1.81-.79-.34-.79.34L5 19.97V7h10m0-2H5c-1.1 0-2 .9-2 2v16l7-3 7 3V7c0-1.1-.9-2-2-2zm4 15h2V3c0-1.1-.9-2-2-2H6v2h13v17z"></path>
                                        <!-- <path d="M0 0h24v24H0V0z" fill="none"></path> -->
                                    </svg>
                                </span>
                                <!-- 세이브드 텍스트 -->
                                <span class="">
                                    Saved
                                </span>
                    </button>
                </div>
            </div>

            <!-- 저장된 장소 -->
            <div class="ct_p1">
                <!-- Top sights -->
                
                <ol class="uismyc">
                    <li class="">
                        <div class="sp_n">서귀포시</div>
                    </li>
                    <li class="" aria-hidden="true"><span class="" aria-hidden="true"></span></li>
                    <li class="">
                        <div class="ogfYpf" data-ved="0CAMQrJsEahcKEwjAp8qc2uvsAhUAAAAAHQAAAAAQCQ" aria-current="page">저장됨</div>
                    </li>
                </ol>
                <div class="sp">
                    <h1>
                        저장된 장소
                    </h1>
                </div>


            </div>
            
            
            <!-- Top sights 상품 -->
            <div class="ts_wp">
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_01.jpg?raw=true" data-iml="2090407.6650000007">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            테디베어박물관
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span class=""></span>
                                            <span class="">
                                                <span class="">3.9</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (1,957)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        테디베어 전시 박물관
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_02.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            쇠소깍
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span class=""></span>
                                            <span class="">
                                                <span class="">4.1</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 82.82609000000001%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (8,722)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        폭포 및 해변 
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_03.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            섭지코지
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.3 stars from 4224 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.3</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 87.98769%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (9,582)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        등대가 있는 아름다운 해안 지역
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_04.jpg?raw=true" >
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            서귀포매일올레시장
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.0  stars from 4 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.0</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 85%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (16,425)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        시장
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_05.JPG?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            대포 주상절리대
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4 stars from 1880 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.5</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 79.76595999999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (58)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        절벽,폭포 자연 및 화산 
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_06.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            성산 일출봉 
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.2 stars from 218 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.6</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 83.30276%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (863)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        화산 분화로 형성된 분화구 봉우리
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                        </span>
                                            <span style="display: none;" class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_07.jpg?raw=true" data-iml="2090552.3950000007">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                        천제연폭포
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.5 stars from 82 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.3</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 90.24390000000001%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (3,222)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        3단계로 이루어진 그림같은 폭포 
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_08.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Camelli Hill
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="3.8 stars from 199 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.1</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 76.984926%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (9,004)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        일 년 내내 운영되는 유서깊은 식물원 
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg  width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/save_page/img/sb_ts_09.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            용눈이오름 
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.6 stars from 199 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.6</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                    <span class="EIYoWe r4c0Ae" style="width: 76.984926%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span>
                                                </div>
                                                <span class=""> (199)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        산봉우리
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg  width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
            </div>

            <!-- 푸터 프레임 -->
            <footer class="ft_wp">
                <!-- 푸터 내부 첫째줄 프레임 -->
                <div class="ft_lf">
                    <!-- 푸터 내부 첫째줄 항목1 -->
                    <a class="" href="#" target="_blank">About</a>
                    <!-- 푸터 내부 첫째줄 항목2 -->
                    <a class="" href="#" target="_blank">Privacy</a>
                    <!-- 푸터 내부 첫째줄 항목3 -->
                    <a class="" href="#" target="_blank">Terms</a>
                    <!-- 푸터 내부 첫째줄 항목4 -->
                    <a class="" href="#" target="_blank">Join user studies</a>
                    <!-- 푸터 내부 첫째줄 항목5 -->
                    <span class="" >Feedback</span>
                    <!-- 푸터 내부 첫째줄 항목6 -->
                    <a class="" href="#" target="_blank">Help Centre</a>
                </div>
                
                <!-- 푸터 내부 둘째줄 -->
                <div class="ft_ls">
                    <p class="">Content written by Google unless otherwise noted</p>
                </div>
            </footer>
        </div>                          
                            
        <!-- 지도 프레임 -->
        <div id="mp_wp">
            <!-- <div> -->
                <div id="map">
                    <!-- 지도정보 표시 부분-->map information
                </div>
            <!-- </div> -->
        </div>
    <!-- </div> -->

    <script>
        let map;
    
        function initMap() {
    
            var styleArray = [
                {
                    featureType: 'all',
                    stylers:[
                        {saturation: -80}
                    ]
                },
                {
                    featureType: 'foad.arterial',
                    elementType: 'gemetry',
                    stylers:[
                        {hue: '#00ffee'},
                        {saturation: -50}
                    ]
                },
                {
                    featureType: 'poi.business',
                    elementType: 'labels',
                    stylers:[
                        {visibility: 'off'}
                    ]
                }
            ];

        var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 14,
        center: new google.maps.LatLng( 37.568813, 126.987211),
        mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var infowindow = new google.maps.InfoWindow();

        var marker, i;

        for (i = 0; i < locations.length; i++) {  
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
            map: map
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
            infowindow.setContent(locations[i].place);
            infowindow.open(map, marker);
            }
        })(marker, i));
        }

        }

        const locations = [
        { pln: '해운대 해수욕장', lat: 35.1586967, lng: 129.1516294 },
        { pln: '해동용궁사',lat: 35.1883478, lng: 129.2211227 },
        { pln: '광안리해수욕장',lat: 35.1531687, lng: 129.1099112 },
        { pln: '태종대',lat: 35.0551397, lng: 129.0799724 },
        { pln: '자갈치시장',lat: 35.0967055, lng: 129.0282998 },
        { pln: '광안대교',lat: 35.1476738, lng: 129.1278484 },
        { pln: '부산타워',lat: 35.1012187, lng: 129.0301323 },
        { pln: '용두산공원',lat: 35.1006536, lng: 129.0304339 },
        { pln: '범어사',lat: 35.2839899, lng: 129.0665752 },

        ];
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIpqxghuqNb8gdkUV2yupr6PLdcvOEG_k&callback=initMap"></script>


</body>
</html>