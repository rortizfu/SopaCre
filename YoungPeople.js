var GlobalSaveQuery = null;
var cadena = "";


$(function () {
    initPageYoung();

    $("#listJuegos li a ").click(
        function () {
            $("#pnlJuegos").css("display", "inline");
            $("#menuJuegos").css("display", "none");
            var obj = $(this.attributes.href.value)[0].id;
            $("#" + obj).removeClass("displayDiv");
        }
    );

    $("#menuYoungPeople li ").click(
        function () {

            $("#pnlTitulo").empty();
            $("#pnlTitulo").append($(this)[0].innerText); 

            $("#menuYoungPeople li").each(function () {
                $(this).removeClass("active");
            });

            $(this).addClass("active");

            var obj = this.firstElementChild.attributes.href.value;

            $("#1").removeClass("active");
            $("#2").removeClass("active");
            $("#3").removeClass("active");
            $("#4").removeClass("active");

            $(obj).removeClass("fade");
            $(obj).addClass("active");

        }
    );


    $("#listGames li").click(
        function () {
            var obj = this.firstElementChild.attributes.href.value;

            $("#1P").addClass("displayDiv");
            $("#2C").addClass("displayDiv");
            $("#3S").addClass("active");
            
            $(obj).removeClass("displayDiv");
        }
    );


});

const initPageYoung = () => {
    $(function () {
        $("#finalizarJuego").click(function () {
             getSaveGame();
             cadena = "";
        });


        $("#fisnishGame").click(function () {
            finishGame();
            cadena = "";
        });

        getRanking();

        


    });
};



function getSaveGame() {

    if (GlobalSaveQuery == null) {
        GlobalSaveQuery = {
            Player: $("#namePlayer").val(),
            Score: parseInt($(".tipohora").text()),//$("#parones").val(),
            TypeGameId: $("#typeGames").val()
        };
    }

    var requestGenerics = {};
    requestGenerics.appController = "Games";
    requestGenerics.appMethod = "saveScore";
    requestGenerics.JSONmethod = "POST";
    requestGenerics.JSONRequest = GlobalSaveQuery;
    requestGenerics.JSONContentType = "application/json";
    requestGenerics.JSONResponseType = "application/json";

    $.ajax({

        url: "http://localhost:58605/App/MethodGenerics",
        //"http://" + $(location).attr('host') + (($(location).attr('pathname').split("/Page")[0].length === 0) ? "" : (($(location).attr('host').split("/Page") === 0) ? ($(location).attr('host').split("/Page")[0]) : "")) + "/App/MethodGenerics",    
        type: "POST",
        data: JSON.stringify(requestGenerics),

        contentType: "application/json; charset=utf-8",
        dataType: "json",
        processdata: true,
        success: function (response) {
            response = JSON.parse(response);
            if (response[0].Result > 0) { 
                //location.href = "http://" + $(location).attr('host') + (($(location).attr('pathname').split("/Page")[0].length === 0) ? "" : ($(location).attr('pathname').split("/Page")[0]) === 0 ? "" : response.UrlDefault) + "/" + response.UrlDefault + "?Value=" + $.base64.encode(JSON.stringify(response).toString());

                //location.href = "http://" + $(location).attr('host') + (($(location).attr('pathname').split("/Page")[0].length === 0) ? "" : (($(location).attr('host').split("/Page") === 0) ? ($(location).attr('host').split("/Page")[0]) : "")) + "/" + response.UrlDefault + "?Value=" + $.base64.encode(JSON.stringify(response).toString());
                getRanking();
                $("#fisnishGamePuzzle").css("display", "");
                $("#fisnishGameCruci").css("display", "none");
                $("#modalLoadingPuzzle").addClass("show");
            }
            else {
                $("#modalLoadingPuzzle").removeClass("show");
                //alert("Ingresa tu nombre.");
            }
            //$.redirect(response[0].UrlDefault, JSON.stringify(response[0]))

        },
        error: function (msg) {
            $("#modalLoadingPuzzle").removeClass("show"); alert('No fue posible  conectar con los servicios de la solución intente de nuevo. Error: ' + msg.status);
        }

    });
    

}

function finishGame() {
    $("#modalLoadingPuzzle").removeClass("show");
}

function getRanking() {
    var requestGenerics = {};
    requestGenerics.appController = "Games";
    requestGenerics.appMethod = "GetList";
    requestGenerics.JSONmethod = "POST"
    requestGenerics.JSONRequest = "";
    requestGenerics.JSONContentType = "application/json";
    requestGenerics.JSONResponseType = "application/json";

    $.ajax({

        url: "http://localhost:58605/App/MethodGenerics",
        //url: "http://" + $(location).attr('host') + (($(location).attr('pathname').split("/Page")[0].length === 0) ? "/" : $(location).attr('pathname').split("/Page")[0] + "/") + "App/MethodGenerics",
        type: "POST",
        data: JSON.stringify(requestGenerics),

        contentType: "application/json; charset=utf-8",
        dataType: "json",
        processdata: true,
        success: function (response) {
            var cont = 0;
            response = JSON.parse(response);
            if (response.length > 0) {
                $("#pRankingGames")[0].innerText = "";

                $.each(response, function (key, value) {
                    $("#pRankingGames")[0].innerText = $("#pRankingGames")[0].innerText + value.Player + " - " + value.Score + " --- "
                });

                //$("#modalLoading").removeClass("show");
            }
        },
        error: function (msg) {
            $("#modalLoadingPuzzle").removeClass("show"); alert('No fue posible  conectar con los servicios de la solución intente de nuevo. Error: ' + msg.status);
        }

    });
}