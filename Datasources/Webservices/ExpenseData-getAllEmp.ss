function getAllEmp(){
	var queryStr = "SELECT \"empid\",\"firstname\",\"lastname\",\"email\",\"managerid\" , count(*) OVER() AS full_count FROM \"public\".\"Employee\"";
	var queryStrWithLimit = "SELECT \"empid\",\"firstname\",\"lastname\",\"email\",\"managerid\" , count(*) OVER() AS full_count FROM \"public\".\"Employee\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("ExpenseData", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("ExpenseData", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
getAllEmp();
