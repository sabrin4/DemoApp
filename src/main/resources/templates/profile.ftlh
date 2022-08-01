<#import "parts/common.ftl" as c>

<@c.page>
${message?ifExists}
<h5>${username}</h5>
<form method="post">
    <div class="mb-3">
        <label class="form-label">Password:</label>
        <div class="form-text" style="width: 300px;">
            <input type="password" name="password" class="form-control" placeholder="Password"/>
        </div>
    </div>
    <div class="mb-3">
        <label class="form-label">Email:</label>
        <div class="form-text" style="width: 300px;">
            <input type="email" name="email" class="form-control" placeholder="expample@exmpl.com" value="${email!''}"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">Save</button>

<div>
</form>
</@c.page>