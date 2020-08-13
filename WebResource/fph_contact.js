var Handler = {}

Handler.OnLoad = function (ctx) {
    lowContactScoreAlert(ctx)
}

function lowContactScoreAlert(ctx) {
    var contactScore = Xrm.Page.getAttribute("fph_contactscore").getValue()
    if (contactScore < 50) {
        alert("Contact Score is below 50. Please input more contact information!")
    }
}