function initDataModals(currentUrl) {
    $("#AddButton").click(function (e) {
        $.ajax({
            type: "POST",
            url: currentUrl + "/Add",
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                $("#modalData").html(result)
            },
            error: function (xhr, status, error) {
                alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
            }
        });
    });
    $("#SaveButton").click(function (e) {
        $.ajax({
            type: "POST",
            url: currentUrl + "/Save",
            contentType: "application/json; charset=utf-8",
            data: $("#modalData").serialize(),
            success: function (result, status, xhr) {
            },
            error: function (xhr, status, error) {
                alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
            }
        });
    });
}