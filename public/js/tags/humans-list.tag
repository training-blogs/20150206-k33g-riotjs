<humans-list>
    <div each="{humans}">
        {id} {firstName} {lastName}
    </div>

    var thatList = this;
    var humansCollection = this.opts.humansServices.humansColl;

    humansCollection.fetch().then(function() {
        thatList.humans = humansCollection.toJSON();
        thatList.update();
    });
</humans-list>