<div class="userbox">
    <p class="usertext">
        Address
    </p>
    <input type="text" name="address" id="address" placeholder="Enter Location" value="${dustbinInstance?.address}" readonly><br>
</div>


<div class="email">
    <p class="passwordtext">
        Latitude
    </p>
    <input type="text" name="latitude" id="latitude" placeholder="Enter Latitude" value="${dustbinInstance?.latitude}" readonly>
</div>

<div class="passwordconfirm">
    <p class="passwordtext">
        Longitude
    </p>
    <input type="text" name="longitude" id="longitude" placeholder="Enter Longitude"
           value="${dustbinInstance?.longitude}" readonly>
</div>

<input type="hidden" name="id" value="${dustbinInstance?.id}"/>



