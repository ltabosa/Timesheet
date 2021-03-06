﻿/**Query to shows all projects*/
$(document).ready(function () {
    SP.SOD.executeFunc('sp.js', 'SP.ClientContext', retrieve);
    SP.SOD.executeFunc('sp.js', 'SP.ClientContext', test);
});
/**
 * Retrieves the DGD project.
 */
function retrieve() {
    var context = new SP.ClientContext.get_current();
    var oList = context.get_web().get_lists().getByTitle('MyTimesheet');
    var camlQuery = new SP.CamlQuery();
    camlQuery.set_viewXml('<View><Query><OrderBy><FieldRef Name=\'Title\' ' + 'Ascending=\'TRUE\' /></OrderBy></Query><ViewFields><FieldRef Name=\'Id\' /><FieldRef Name=\'Title\' /><FieldRef Name=\'Year\' /><FieldRef Name=\'Total\' /><FieldRef Name=\'Status\' /></ViewFields></View>');
    window.collListItem = oList.getItems(camlQuery);
    context.load(collListItem, 'Include(Id, Title, Year, Total, Status)');
    context.executeQueryAsync(Function.createDelegate(this, window.onQuerySucceeded),
    Function.createDelegate(this, window.onQueryFailed));
}
/**
 * On the query succeeded. Lists all the projects
 * @param {type} sender - The sender.
 * @param {type} args - The arguments.
 */
function onQuerySucceeded(sender, args) {
    var listEnumerator = collListItem.getEnumerator();
    var listInfo =
        "<table class='table table-striped'>" +
            "<tr>" +
                "<th class='col-md-1'></th>" +
                "<th>Month</th>" +
                "<th>Year</th>" +
                "<th>Total</th>" +
                "<th>Status</th>" +
            "</tr>";
    while (listEnumerator.moveNext()) {
        var oListItem = listEnumerator.get_current();
       
        listInfo +=
        "<tr>" +
           "<td class='col-md-1'><a href='#' onclick='ShowDialog(" + oListItem.get_id() + ")'><img src='../Images/EditIcon.png' /></a></td>" +
           "<td>" + oListItem.get_item('Title') + "</td>" +
           "<td>" + oListItem.get_item('Year') + "</td>" +
           "<td>" + oListItem.get_item('Total') + "</td>" +
           "<td>" + oListItem.get_item('Status') + "</td>" +
        "</tr>";
    }
    listInfo += "</table>";
    $("#results").html(listInfo);
}
/**
 * Shows the dialog.
 * @param {number} ID - The project identifier.
 * @returns {boolean} 
 */
function ShowDialog(ID) {
    var options = {
        url: "..Lists/MyTimesheet/EditForm.aspx?ID=" + ID,
        allowMaximize: true,
        title: "Edit Timesheet",
        dialogReturnValueCallback: scallback
    };
    SP.SOD.execute('sp.ui.dialog.js', 'SP.UI.ModalDialog.showModalDialog', options);
    return false;
}


function test() {
    $('#txtMonth').datepicker({
        changeMonth: true,
        changeYear: true,
        //showButtonPanel: true,
        dateFormat: 'MM',
        onClose: function (dateText, inst) {
            var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
            $(this).datepicker('setDate', new Date(year, month, 1));
        }
    });
    $("#txtMonth").focus(function () {
        $(".ui-datepicker-year").hide();
    });
    $('#txtYear').datepicker({
        changeYear: true,
        //showButtonPanel: true,
        dateFormat: 'yy',
        onClose: function (dateText, inst) {
            var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
            $(this).datepicker('setDate', new Date(year, 1));
        }
    });
    $("#txtYear").focus(function () {
        $(".ui-datepicker-month").hide();
    });
    var d = new Date();
    var n = d.getFullYear();
    document.getElementById('txtYear').value = n;
    var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    document.getElementById('txtMonth').value = monthNames[d.getMonth()];
};

