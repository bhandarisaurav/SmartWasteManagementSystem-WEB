<style>
#fullName,#email,#phoneNumber{
    font-size: 17px;
}
</style>
<div class="userbox">
    <p class="usertext">
        Username
    </p>
    <input type="text" name="fullName" id="fullName" placeholder="Enter Full Name" value="${userInfo?.fullName}"><br>
</div>


<div class="email">
    <p class="passwordtext">
        Email
    </p>
    <input type="email" name="email" id="email" placeholder="Enter E-mail"  value="${userInfo?.email}">
</div>

<div class="passwordconfirm">
    <p class="passwordtext">
        Phone Number
    </p>
    <input type="text" name="phoneNumber" id="phoneNumber" placeholder="Phone Number"  value="${userInfo?.phoneNumber}">
</div>



