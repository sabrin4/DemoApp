<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="mb-3">
        <label class="form-label"> User Name:</label>
        <div class="form-text" style="width: 300px;">
            <input type="text" name="username" class="form-control" placeholder="Username"/>
        </div>
    </div>
    <div class="mb-3">
        <label class="form-label"> Password:</label>
        <div class="form-text" style="width: 300px;">
            <input type="password" name="password" class="form-control" placeholder="Password"/>
        </div>
    </div>
    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign in</#if></button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <#if !isRegisterForm><a href="/registration">Registration</a></#if>
    <div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Sign out</button>
</form>
</#macro>