# Binding-data-dynamically-with-HTML5-Helpers-in-MVC5-Entity-Framework6 

Step 1. Build a view called DropDown List, ie: DDL.cshtml.

Step 2. Paste this in it:
@model IEnumerable<MVCEmployeeViewModel1.Models.EmployeeViewModel>


@{
    Layout = null;
    ViewBag.Title = "DDL";
}

<h2>Binding the name dynamically with a HTML5 Helper.</h2> 

@Html.DropDownList("Departments", "Select Dept")

//-----------------------------------------


Step 3. 
Put this hyper link in the Layout.cshtml page:

<li>@Html.ActionLink("HTML-Helpers", "DDL", "EmployeeViewModels")</li>

Step 4.
In the Controller type this:
Use the namespace and model like so: using MVCEmployeeViewModel1.Models;

Make the database connection public so that it can be seen by your new class.
public mikeEntities db = new mikeEntities();

Build the view like so:
// GET: DropDown List
        public ActionResult DDL()
        {
            List<EmployeeViewModel> list1 = db.EmployeeViewModels.ToList();

            ViewBag.Departments = new SelectList(list1, "DepartmentID", "DepartmentName");

            return View();
        }
