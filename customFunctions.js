window.alert = function (message) {
    ModalAlertShow(message);
    defaultAnnouncement();
};

const ModalLoaderShow = () => {
    const btnLoading = document.createElement("button");
    btnLoading.id = "btnLoading";
    btnLoading.type = "button";
    btnLoading.classList.add("btn");
    btnLoading.classList.add("btn-success");
    btnLoading.classList.add("btn-lg");
    btnLoading.classList.add("dvNotVisible");
    btnLoading.setAttribute("data-toggle", "modal");
    btnLoading.setAttribute("data-target", "#modalLoading");

    $("body").append(btnLoading);

    const modalLoading = this.document.createElement("div");
    modalLoading.id = "modalLoading";
    modalLoading.classList.add("modal");
    modalLoading.setAttribute("role", "dialog");
    modalLoading.setAttribute("data-backdrop", "static");
    modalLoading.setAttribute("data-keyboard", "false");

    const modalDialog = this.document.createElement("div");
    modalDialog.classList.add("modal-dialog");
    modalDialog.id = "modalDialog";

    modalLoading.appendChild(modalDialog);

    const modalContent = this.document.createElement("div");
    modalContent.id = "modalContent";
    modalContent.classList.add("modal-content");
    modalContent.classList.add("cssBodyCustom");

    modalDialog.appendChild(modalContent);

    const modalHeader = this.document.createElement("div");
    modalHeader.id = "modalHeader";
    modalHeader.classList.add("modal-header");

    const titleModal = this.document.createElement("h4");
    titleModal.classList.add("modal-title");
    titleModal.innerText = "Por favor Espere...";

    modalHeader.appendChild(titleModal);
    modalContent.appendChild(modalHeader);

    const modalBody = this.document.createElement("div");
    modalBody.id = "modalBody";
    modalBody.classList.add("modal-body");

    const divLoad = this.document.createElement("div");
    divLoad.classList.add("loader");

    modalBody.appendChild(divLoad);
    modalContent.appendChild(modalBody);

    $("body").append(modalLoading);
    $("#btnLoading").click();
};
const ModalLoaderHidden = () => {
    $("#modalLoading").remove();
    $("#btnLoading").remove();

    $("body").removeClass("modal-open");
    $(".modal-backdrop").remove();
};
const ModalAlertShow = (textMessageValue) => {
    if ($("#btnShowMessage").length > 0)
        $("#btnShowMessage").remove();

    const btnShowMessage = document.createElement("button");
    btnShowMessage.id = "btnShowMessage";
    btnShowMessage.type = "button";
    btnShowMessage.classList.add("btn");
    btnShowMessage.classList.add("btn-success");
    btnShowMessage.classList.add("btn-lg");
    btnShowMessage.classList.add("dvNotVisible");
    btnShowMessage.setAttribute("data-toggle", "modal");
    btnShowMessage.setAttribute("data-target", "#modalAlert");

    $("body").append(btnShowMessage);

    if ($("#modalAlert").length > 0)
        $("#modalAlert").remove();

    const modalAlert = this.document.createElement("div");
    modalAlert.id = "modalAlert";
    modalAlert.classList.add("modal");
    modalAlert.setAttribute("role", "dialog");
    modalAlert.setAttribute("data-backdrop", "static");
    modalAlert.setAttribute("data-keyboard", "false");

    const modalDialog = this.document.createElement("div");
    modalDialog.classList.add("modal-dialog");
    modalDialog.id = "modalDialog";

    modalAlert.appendChild(modalDialog);

    const modalContent = this.document.createElement("div");
    modalContent.id = "modalContent";
    modalContent.classList.add("modal-content");
    modalContent.classList.add("cssBodyCustom");

    modalDialog.appendChild(modalContent);

    const modalHeader = this.document.createElement("div");
    modalHeader.id = "modalHeader";
    modalHeader.classList.add("modal-header");

    const btnCloseMessage = document.createElement("button");
    btnCloseMessage.id = "btnCloseMessage";
    btnCloseMessage.type = "button";
    btnCloseMessage.classList.add("close");
    btnCloseMessage.setAttribute("data-dismiss", "modal");
    btnCloseMessage.innerText = "X";

    modalHeader.appendChild(btnCloseMessage);

    const titleModal = this.document.createElement("h4");
    titleModal.classList.add("modal-title");
    titleModal.innerText = "Mensaje del Sistema";

    modalHeader.appendChild(titleModal);

    modalContent.appendChild(modalHeader);

    const modalBody = this.document.createElement("div");
    modalBody.id = "modalBody";
    modalBody.classList.add("modal-body");

    const textMessage = this.document.createElement("p");
    textMessage.innerText = textMessageValue;

    modalBody.appendChild(textMessage);
    modalContent.appendChild(modalBody);

    const modalFooter = this.document.createElement("div");
    modalFooter.id = "modalFooter";
    modalFooter.classList.add("modal-footer");

    const btnAceppt = document.createElement("button");
    btnAceppt.id = "btnAceppt";
    btnAceppt.type = "button";
    btnAceppt.classList.add("btn");
    btnAceppt.classList.add("btn-success");
    btnAceppt.setAttribute("data-dismiss", "modal");
    btnAceppt.innerText = "Aceptar";

    modalFooter.appendChild(btnAceppt);

    modalContent.appendChild(modalFooter);

    $("body").append(modalAlert);
    $("#btnShowMessage").click();
};
$.fn.pageMe = function (opts) {
    var $this = this,
        defaults = {
            perPage: 3,
            showPrevNext: false,
            hidePageNumbers: false
        },
        settings = $.extend(defaults, opts);

    var listElement = $this;
    var perPage = settings.perPage;
    var children = listElement.children();
    var pager = $('.pager');

    if (typeof settings.childSelector != "undefined") {
        children = listElement.find(settings.childSelector);
    }

    if (typeof settings.pagerSelector != "undefined") {
        pager = $(settings.pagerSelector);
    }

    var numItems = children.length;
    var numPages = Math.ceil(numItems / perPage);

    pager.data("curr", 0);

    if (settings.showPrevNext) {
        $('<li><a href="#" class="prev_link">«</a></li>').appendTo(pager);
    }

    var curr = 0;
    while (numPages > curr && (settings.hidePageNumbers == false)) {
        $('<li><a href="#" class="page_link">' + (curr + 1) + '</a></li>').appendTo(pager);
        curr++;
    }

    if (settings.showPrevNext) {
        $('<li><a href="#" class="next_link">»</a></li>').appendTo(pager);
    }

    pager.find('.page_link:first').addClass('active');
    pager.find('.prev_link').hide();
    if (numPages <= 1) {
        pager.find('.next_link').hide();
    }
    pager.children().eq(1).addClass("active");

    children.hide();
    children.slice(0, perPage).show();

    pager.find('li .page_link').click(function () {
        var clickedPage = $(this).html().valueOf() - 1;
        goTo(clickedPage, perPage);
        return false;
    });
    pager.find('li .prev_link').click(function () {
        previous();
        return false;
    });
    pager.find('li .next_link').click(function () {
        next();
        return false;
    });

    function previous() {
        var goToPage = parseInt(pager.data("curr")) - 1;
        goTo(goToPage);
    }

    function next() {
        goToPage = parseInt(pager.data("curr")) + 1;
        goTo(goToPage);
    }

    function goTo(page) {
        var startAt = page * perPage,
            endOn = startAt + perPage;

        children.css('display', 'none').slice(startAt, endOn).show();

        if (page >= 1) {
            pager.find('.prev_link').show();
        }
        else {
            pager.find('.prev_link').hide();
        }

        if (page < (numPages - 1)) {
            pager.find('.next_link').show();
        }
        else {
            pager.find('.next_link').hide();
        }

        pager.data("curr", page);
        pager.children().removeClass("active");
        pager.children().eq(page + 1).addClass("active");

    }
};

const ModalShow = (objBody, modalFooter, closeHeader, Title) => {
    if ($("#btnLoadModal").length > 0)
        $("#btnLoadModal").remove();

    const btnLoadModal = document.createElement("button");
    btnLoadModal.id = "btnLoadModal";
    btnLoadModal.type = "button";
    btnLoadModal.classList.add("btn");
    btnLoadModal.classList.add("btn-success");
    btnLoadModal.classList.add("btn-lg");
    btnLoadModal.classList.add("dvNotVisible");
    btnLoadModal.setAttribute("data-toggle", "modal");
    btnLoadModal.setAttribute("data-target", "#modalCustom");

    $("body").append(btnLoadModal);

    if ($("#modalCustom").length > 0)
        $("#modalCustom").remove();

    const modalCustom = this.document.createElement("div");
    modalCustom.id = "modalCustom";
    modalCustom.classList.add("modal");
    modalCustom.setAttribute("role", "dialog");
    modalCustom.setAttribute("data-backdrop", "static");
    modalCustom.setAttribute("data-keyboard", "false");

    const modalDialog = this.document.createElement("div");
    modalDialog.classList.add("modal-dialog");
    modalDialog.id = "modalDialog";
    modalDialog.setAttribute("height", "100px");

    modalCustom.appendChild(modalDialog);

    const modalContent = this.document.createElement("div");
    modalContent.id = "modalContent";
    modalContent.classList.add("modal-content");
    //modalContent.classList.add("cssBodyCustom");

    modalDialog.appendChild(modalContent);

    const modalHeader = this.document.createElement("div");
    modalHeader.id = "modalHeader";
    modalHeader.classList.add("modal-header");

    if (closeHeader) {
        const btnCloseMessage = document.createElement("button");
        btnCloseMessage.id = "btnCloseMessage";
        btnCloseMessage.type = "button";
        btnCloseMessage.classList.add("close");
        btnCloseMessage.setAttribute("data-dismiss", "modal");
        btnCloseMessage.innerText = "X";

        modalHeader.appendChild(btnCloseMessage);
    }

    const titleModal = this.document.createElement("h4");
    titleModal.classList.add("modal-title");
    titleModal.innerText = "Administración " + Title;

    modalHeader.appendChild(titleModal);
    modalContent.appendChild(modalHeader);

    const modalBody = this.document.createElement("div");
    modalBody.id = "modalBody";
    modalBody.classList.add("modal-body");

    modalBody.appendChild(objBody);
    modalContent.appendChild(modalBody);
    modalContent.appendChild(modalFooter);

    $("body").append(modalCustom);
    $("#btnLoadModal").click();
};

function bs_input_file(typeFile) {
    $(".input-file").before(
        function () {
            if (!$(this).prev().hasClass('input-ghost')) {
                var element = $("<input type='file' class='input-ghost' accept = " + typeFile + " style='visibility:hidden; height:0'>");
                element.attr("name", $(this).attr("name"));
                element.change(function () {
                    element.next(element).find('input').val((element.val()).split('\\').pop());
                    Files.push(element[0].files);
                });
                $(this).find("button.btn-choose").click(function () {
                    element.click();
                });
                $(this).find("button.btn-reset").click(function () {
                    element.val(null);
                    $(this).parents(".input-file").find('input').val('');
                });
                $(this).find('input').css("cursor", "pointer");
                $(this).find('input').mousedown(function () {
                    this.value = "";
                    $(this).parents('.input-file').prev().click();
                    return false;
                });
                return element;
            }
        }
    );
}

//Cambio 11/112018

const getOptionFieldDefault = (announcementId) => {
    ModalLoaderShow();
    optioField = {
        Field: {
            FieldId: null
        }
    };

    $.ajax({
        dataType: "json",
        type: "POST",
        url: "http://" + urlServices + "/Field/GetOption/",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(optioField),
        success: function OnSuccess(response) {
            if (response[0].Result.length > 0) {
                lsOption = response[0].Result;
                getFieldsDefault(announcementId);
            }
            else {
                alert("No es posible obtener la lista, por favor intente de nuevo.");
            }
            ModalLoaderHidden();
        },
        failure: function OnError(error) {
            ModalLoaderHidden();
            alert("No es posible obtener la lista, por favor intente de nuevo.");
        }
    });
};

const ModalLoaderPoliticData = () => {
    if ($("#btnLoadModalPoliticData").length > 0)
        $("#btnLoadModalPoliticData").remove();

    const btnLoadModal = document.createElement("button");
    btnLoadModal.id = "btnLoadModalPoliticData";
    btnLoadModal.type = "button";
    btnLoadModal.classList.add("btn");
    btnLoadModal.classList.add("btn-success");
    btnLoadModal.classList.add("btn-lg");
    btnLoadModal.classList.add("dvNotVisible");
    btnLoadModal.setAttribute("data-toggle", "modal");
    btnLoadModal.setAttribute("data-target", "#modalActivePolitic");

    $("body").append(btnLoadModal);

    if ($("#modalActivePolitic").length > 0)
        $("#modalActivePolitic").remove();

    /*Modal Politic */
    const modalPolitic = document.createElement("div");
    modalPolitic.id = "modalActivePolitic";
    modalPolitic.classList.add("modal");
    modalPolitic.setAttribute("role", "dialog");
    modalPolitic.setAttribute("data-backdrop", "static");
    modalPolitic.setAttribute("data-keyboard", "false");

    $("#modalActivePolitic").on('hide.bs.modal', function () {
        $("#acceptPolitic").attr('checked', true);
    });

    const modalDialog = document.createElement("div");
    modalDialog.classList.add("modal-dialog");
    modalDialog.id = "modalDialog";

    modalPolitic.appendChild(modalDialog);

    const modalContent = document.createElement("div");
    modalContent.id = "modalContent";
    modalContent.classList.add("modal-content");
    modalContent.classList.add("cssBodyCustom");

    modalDialog.appendChild(modalContent);

    const modalHeader = document.createElement("div");
    modalHeader.id = "modalHeader";
    modalHeader.classList.add("modal-header");

    const btnCloseMessage = document.createElement("button");
    btnCloseMessage.id = "btnCloseMessage";
    btnCloseMessage.type = "button";
    btnCloseMessage.classList.add("close");
    btnCloseMessage.setAttribute("data-dismiss", "modal");
    btnCloseMessage.innerText = "X";

    modalHeader.appendChild(btnCloseMessage);

    const titleModal = document.createElement("h4");
    titleModal.classList.add("modal-title");
    titleModal.innerText = "Política de tratamiento de datos";

    modalHeader.appendChild(titleModal);
    modalContent.appendChild(modalHeader);

    const modalBody = document.createElement("div");
    modalBody.id = "modalBody";
    modalBody.classList.add("modal-body");

    const textModal = document.createElement("p");
    textModal.id = "textPoliticData";
    textModal.innerText = politicData;

    modalBody.appendChild(textModal);

    modalContent.appendChild(modalBody);

    const btnCancel = document.createElement("button");
    btnCancel.id = "btnCancel";
    btnCancel.type = "button";
    btnCancel.classList.add("btn");
    btnCancel.classList.add("btn-danger");
    btnCancel.setAttribute("data-dismiss", "modal");
    btnCancel.innerText = "Cerrar";

    const modalFooter = this.document.createElement("div");
    modalFooter.id = "modalFooter";
    modalFooter.classList.add("modal-footer");

    modalFooter.appendChild(btnCancel);

    modalContent.appendChild(modalFooter);

    /*Modal Politic */

    //$("body").append(modalCaptureData);
    $("body").append(modalPolitic);
}

const activeAnnouncementDefault = (btn) => {
    ////getOptionFieldDefault();
    //const btnCancel = document.createElement("button");
    //btnCancel.id = "btnCancel";
    //btnCancel.type = "button";
    //btnCancel.classList.add("btn");
    //btnCancel.classList.add("btn-danger");
    //btnCancel.setAttribute("data-dismiss", "modal");
    //btnCancel.innerText = "Cancelar";

    //const btnAceppt = document.createElement("button");
    //btnAceppt.id = "btnAceppt";
    //btnAceppt.type = "button";
    //btnAceppt.classList.add("btn");
    //btnAceppt.classList.add("btn-success");
    //btnAceppt.innerText = "Aceptar";
    //btnAceppt.setAttribute("data-dismiss", "modal");
    //btnAceppt.onclick = function (e) {
    //    ModalLoaderShow();
    //    ValueField = [];

    //    $("#divMainAnnouncement :input").each(function (key, input) {
    //        if (input.type === "text" || input.type === "select-one") {

    //            ValueFieldInput = {
    //                ValueFieldValue: input.type === "select-one" ? input.selectedOptions[0].text : input.value,
    //                ValueFieldIdClient: 0,
    //                field: {
    //                    FieldId: input.data.FieldId
    //                }
    //            };

    //            ValueField.push(ValueFieldInput);
    //        }
    //    });

    //    insertValuesField(ValueField);
    //};

    //const modalFooter = this.document.createElement("div");
    //modalFooter.id = "modalFooter";
    //modalFooter.classList.add("modal-footer");

    //modalFooter.appendChild(btnAceppt);
    //modalFooter.appendChild(btnCancel);
    
    //ModalShowDefault($("#divModalCaptureData").val(), modalFooter,true,"Por favor dejanos tus datos");
    ModalLoaderPoliticData();
    $("#btnLoadModalDefault").val(btn.value);
    $("#btnLoadModalDefault").click();
}

const getFieldsDefault = (announcementId) => { 
    Field = {
        Announcement: {
            AnnouncementId: announcementId
        }
    };
    
    $.ajax({
        dataType: "json",
        type: "POST",
        url: "http://" + urlServices + "/Field/GetList/",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(Field),
        success: function OnSuccess(response) {
            if (response[0].Result.length > 0) {

                const divMain = document.createElement("div");
                divMain.id = "divMainAnnouncement";

                $.each(response[0].Result, function (key, value) {
                    if (value.FieldState) {
                        const div = document.createElement("div");
                        div.classList.add("form-group");

                        const lbl = document.createElement("label");
                        lbl.id = "lbl" + value.FieldId;
                        lbl.htmlFor = "lblField";
                        lbl.innerText = value.FieldLabel;

                        if (value.typeField.TypeFieldName === "Texto") {
                            const inputField = document.createElement("input");
                            inputField.id = "inputField" + value.FieldId;
                            inputField.placeholder = value.FieldDescription;
                            inputField.type = "text";
                            inputField.classList.add("form-control");
                            inputField.data = value;
                            div.appendChild(lbl);
                            div.appendChild(inputField);
                        }
                        else if (value.typeField.TypeFieldName === "Selección") {
                            const selectField = document.createElement("select");
                            selectField.classList.add("form-control");
                            selectField.id = "selectField" + value.FieldId;
                            selectField.classList.add("selecttypeField");
                            selectField.data = value;

                            const optionSelect = document.createElement("option");
                            optionSelect.value = 0;
                            optionSelect.innerText = "Seleccione ...";

                            selectField.appendChild(optionSelect);

                            var lsOptionFiltered = $.grep(lsOption, function (option) {
                                return option.field.FieldId === value.FieldId && option.OptionFieldState;
                            });

                            $.each(lsOptionFiltered, function (key, option) {
                                const optionSelect = document.createElement("option");
                                optionSelect.value = option.OptionFieldId;
                                optionSelect.innerText = option.OptionFieldValue;

                                selectField.appendChild(optionSelect);
                            });

                            if (lsOptionFiltered.length > 0) {
                                div.appendChild(lbl);
                                div.appendChild(selectField);
                            }
                        }

                        if (div.children.length > 0)
                            divMain.append(div);
                        else
                            alert("No es posible presentar el formulario de la convocatoria, por favor contacte al administrador.");
                    }
                });


                //if ($("#divMain").length > 0) {
                //    $("#divMain").remove();
                //}

                /*
                const hidden = document.createElement("input");
                hidden.id = "divModalCaptureData";
                hidden.setAttribute("type", "hidden");
                hidden.setAttribute("value", "<div id='" + divMain.id.toString() + "' >" + divMain.innerHTML + "</div>");
                */

                //$("body").append(divMain);

                //getOptionFieldDefault();
                const btnCancel = document.createElement("button");
                btnCancel.id = "btnCancel";
                btnCancel.type = "button";
                btnCancel.classList.add("btn");
                btnCancel.classList.add("btn-danger");
                btnCancel.setAttribute("data-dismiss", "modal");
                btnCancel.innerText = "Cancelar";

                const btnAceppt = document.createElement("button");
                btnAceppt.id = "btnAceppt";
                btnAceppt.type = "button";
                btnAceppt.classList.add("btn");
                btnAceppt.classList.add("btn-success");
                btnAceppt.innerText = "Aceptar";
                btnAceppt.setAttribute("data-dismiss", "modal");
                btnAceppt.onclick = function (e) {
                    ModalLoaderShow();
                    ValueField = [];

                    $("#divMainAnnouncement :input").each(function (key, input) {
                        if (input.type === "text" || input.type === "select-one") {

                            ValueFieldInput = {
                                ValueFieldValue: input.type === "select-one" ? input.selectedOptions[0].text : input.value,
                                ValueFieldIdClient: 0,
                                field: {
                                    FieldId: input.data.FieldId
                                }
                            };

                            ValueField.push(ValueFieldInput);
                        }
                    });

                    insertValuesField(ValueField);
                };

                const modalFooter = document.createElement("div");
                modalFooter.id = "modalFooter";
                modalFooter.classList.add("modal-footer");

                modalFooter.appendChild(btnAceppt);
                modalFooter.appendChild(btnCancel);

                ModalShowDefault(divMain, modalFooter, true, "Por favor dejanos tus datos");

            }
            else {
                alert("No es posible obtener la lista, por favor intente de nuevo.");
            }
        },
        failure: function OnError(error) {
            ModalLoaderHidden();
            alert("No es posible obtener la lista, por favor intente de nuevo.");
        }
    });

}

const ModalShowDefault = (objBody, modalFooter, closeHeader, Title) => {
    if ($("#btnLoadModalDefault").length > 0)
        $("#btnLoadModalDefault").remove();

    /*CheckBox aceptar datos*/
    //<input type="checkbox" id="acceptPolitic" />
    const checkBox = document.createElement("input");
    checkBox.id = "acceptPolitic";
    checkBox.type = "checkbox";

    const btnActiveModalPolitic = document.createElement("button");
    btnActiveModalPolitic.setAttribute("onclick", "activeModalPolitic()");
    btnActiveModalPolitic.setAttribute("data-toggle", "modal");
    btnActiveModalPolitic.setAttribute("data-target", "#modalRegisterDownload");
    btnActiveModalPolitic.classList.add("btn");
    btnActiveModalPolitic.classList.add("btn-primary");
    btnActiveModalPolitic.classList.add("btn-xs");
    btnActiveModalPolitic.classList.add("descargarDocumento");
    btnActiveModalPolitic.classList.add("hrefTerminos");
    btnActiveModalPolitic.innerText = "Acepta terminos y condiciones";

    const divAcceptConditional = document.createElement("div");
    divAcceptConditional.appendChild(checkBox);
    divAcceptConditional.appendChild(btnActiveModalPolitic);
    /*CheckBox aceptar datos*/

    const btnLoadModal = document.createElement("button");
    btnLoadModal.id = "btnLoadModalDefault";
    btnLoadModal.type = "button";
    btnLoadModal.classList.add("btn");
    btnLoadModal.classList.add("btn-success");
    btnLoadModal.classList.add("btn-lg");
    btnLoadModal.classList.add("dvNotVisible");
    btnLoadModal.setAttribute("data-toggle", "modal");
    btnLoadModal.setAttribute("data-target", "#modalCustomDefault");

    $("body").append(btnLoadModal);

    if ($("#modalCustomDefault").length > 0)
        $("#modalCustomDefault").remove();

    const modalCustom = this.document.createElement("div");
    modalCustom.id = "modalCustomDefault";
    modalCustom.classList.add("modal");
    modalCustom.setAttribute("role", "dialog");
    modalCustom.setAttribute("data-backdrop", "static");
    modalCustom.setAttribute("data-keyboard", "false");

    const modalDialog = this.document.createElement("div");
    modalDialog.classList.add("modal-dialog");
    modalDialog.id = "modalDialog";
    modalDialog.setAttribute("height", "100px");

    modalCustom.appendChild(modalDialog);

    const modalContent = this.document.createElement("div");
    modalContent.id = "modalContent";
    modalContent.classList.add("modal-content");
    //modalContent.classList.add("cssBodyCustom");

    modalDialog.appendChild(modalContent);

    const modalHeader = this.document.createElement("div");
    modalHeader.id = "modalHeader";
    modalHeader.classList.add("modal-header");

    if (closeHeader) {
        const btnCloseMessage = document.createElement("button");
        btnCloseMessage.id = "btnCloseMessage";
        btnCloseMessage.type = "button";
        btnCloseMessage.classList.add("close");
        btnCloseMessage.setAttribute("data-dismiss", "modal");
        btnCloseMessage.innerText = "X";

        modalHeader.appendChild(btnCloseMessage);
    }

    const titleModal = this.document.createElement("h4");
    titleModal.classList.add("modal-title");
    titleModal.innerText = Title;

    modalHeader.appendChild(titleModal);
    modalContent.appendChild(modalHeader);

    const modalBody = this.document.createElement("div");
    modalBody.id = "modalBody";
    modalBody.classList.add("modal-body");

    /*-------------------------- */
    modalBody.appendChild(divAcceptConditional);
    /*-------------------------- */

    //var doc = document.createElement("div");
    //doc.innerHTML = objBody;

    //modalBody.appendChild(doc);

    modalBody.appendChild(objBody);

    modalContent.appendChild(modalBody);
    modalContent.appendChild(modalFooter);

    $("body").append(modalCustom);
    //$("#btnLoadModalDefault").click();
};

const defaultAnnouncement = () => {
    var Announcement = idAnnouncementDefault;
    getOptionFieldDefault(Announcement);


};

const activeModalPolitic = () => {
    $("#btnLoadModalPoliticData").click();
};

function downloadFile(link) {
    var file = link;
    var a = document.createElement("a");
    a.target = "_blank";
    a.href = file;
    a.click();
}

const insertValuesField = (lsValuesField) => {
    ModalLoaderShow();

    $.ajax({
        dataType: "json",
        type: "POST",
        url: "http://" + urlServices + "/ValueField/Insert/",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(lsValuesField),
        success: function OnSuccess(response) {
            //UploadFile();
            //downloadFile();
            downloadFile($("#btnLoadModalDefault").val());

            if ($("#modalCustomDefault").length > 0)
                $("#modalCustomDefault").remove();


            defaultAnnouncement();

        },
        failure: function OnError(error) {
            ModalLoaderHidden();
            alert("No es posible obtener la lista, por favor intente de nuevo.");
        }
    });
};

//Cambio 11/112018