var KickHash = KickHash || {};

KickHash.Student = {

  index: function(callback) {
    $.ajax({
      type: "GET",
      url: "/students.json"
    }).done(callback);
  },

  create: function(studentParams, callback) {
    $.ajax({
      type: "POST",
      url: "/students.json",
      data: studentParams
    }).done(callback);
  }

};

KickHash.initialize = function() {
  console.log("I am ready to see some students. NOW");
  KickHash.listStudents();
  $("#new-Student").on("click", KickHash.createStudentFromForm);
};

$( document ).ready(KickHash.initialize);

KickHash.listStudents = function() {
  $("#students").html("");
  KickHash.Student.index(KickHash.updateStudentsListView);
};

KickHash.updateStudentsListView = function(data) {
  console.log(data);
  for (i=0; i<data.length; i++){
    var catDiv = $("<div>");
    var cat = data[i].name;
    var catP = data[i].pictures;
    var catA = data[i].age;
    catDiv.append(cat);
    catDiv.append(catP);
    catDiv.append(catA);
    $( ".kitties" ).append(catDiv);
  }
};

KickHash.createStudentFromForm = function(e) {
  e.preventDefault();

  console.log("making some students");
  var studentName = $("form").find("input[name='name']").val();
  var studentEmail = $("form").find("input[name='email']").val();
  var studentPic = $("form").find("input[name='img_url']").val();
  var studentParams = {
    student: {
      name: studentName,
      age: studentEmail,
      img_url: studentPic,
    }
  };

  KickHash.Student.create(studentParams, KickHash.listStudents);
};