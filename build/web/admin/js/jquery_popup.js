$(document).ready(function() {
$("#onclick").click(function() {
$("#contactdiv").css("display", "block");
});
$("#show").click(function() {
$("#showdiv").css("display", "block");
});
$("#adduser").click(function() {
$("#adduserdiv").css("display", "block");
});
$("#updateuser").click(function() {
$("#updatediv").css("display", "block");
});
$("#deluser").click(function() {
$("#deldiv").css("display", "block");
});
$("#alluser").click(function() {
$("#alldiv").css("display", "block");
});
$("#contact #cancel").click(function() {
$(this).parent().parent().hide();
});
});
