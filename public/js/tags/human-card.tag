<human-card>
    <div>{human.firstName} {human.lastName}</div>

    var thisCard = this;
    this.model = this.opts.model; /* je passe le modèle Backbone en options */
    this.human = this.model.toJSON()

    /* si mon modèle change, je mets à jour l'affichage */
    this.opts.model.on("change", function() {
        thisCard.human = thisCard.model.toJSON()
        thisCard.update();
    });
</human-card>