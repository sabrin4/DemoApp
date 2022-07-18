<#import "parts/common.ftl" as c>
<@c.page>
<div class="input-group mb-3">
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Search by tag">
        <button type="submit" class="btn btn-primary ms-2">Search</button>
    </form>
</div>
<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse" id="collapseExample">
    <div class="input-group mb-5">
    <form method="post" enctype="multipart/form-data">
        <div class="input-group mb-2">
            <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
        </div>
        <div class="input-group mb-2">
            <input type="text" class="form-control" name="text" placeholder="Enter your text" />
        </div>
        <div class="input-group mb-2">
            <input type="text" class="form-control" name = "tag" placeholder="Tag your text" >
        </div>
        <div class="input-group mb-2">
            <input type="file" class="form-control" name="file" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
        </div>
        <button type="submit" class="btn btn-outline-secondary" id="inputGroupFileAddon04">Add</button>
    </form>
    </div>
</div>
<div class="container">
    <div class="row align-items-start">
        <#list messages as message>
        <div class="card msb-3">
            <div>
                <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
        </div>
        <div class="m-2">
            <span>${message.text}</span>
            <b>${message.tag}</b>
        </div>

        <div class="card-footer">
            ${message.authorName}
        </div>

    </div>
    <#else>
    No messages
</#list>
    </div>

</div>

</@c.page>