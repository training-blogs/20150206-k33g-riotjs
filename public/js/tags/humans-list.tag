<humans-list>
    <div each="{model, index in humans}">
        <human-card model={model}></human-card>
    </div>

    var thatList = this;
    var humansCollection = this.opts.humansServices.humansColl;

    humansCollection.fetch().then(function() {
        thatList.humans = humansCollection.models;
        thatList.update();
    });
</humans-list>