function getEmpById(){
	var queryStr = "SELECT \"empid\",\"firstname\",\"lastname\",\"email\",\"managerid\" , count(*) OVER() AS full_count FROM \"public\".\"Employee\" WHERE \"empid\"= ?";
	var queryStrWithLimit = "SELECT \"empid\",\"firstname\",\"lastname\",\"email\",\"managerid\" , count(*) OVER() AS full_count FROM \"public\".\"Employee\" WHERE \"empid\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("ExpenseData", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("ExpenseData", queryStr);
		}
	$s.setLong(1, "empid");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
getEmpById();
