require("datatables.net-bs4");
$(document).ready(function(){  
  $('#projects-datatable').DataTable({});
  $('#assigned-tasks-datatable').DataTable({});
  $('#watching-tasks-datatable').DataTable({});
  $('#reviewing-tasks-datatable').DataTable({});
  $('#created-tasks-datatable').DataTable({});
  $('#created-teams-datatable').DataTable({});
  $('#leading-teams-datatable').DataTable({});
});