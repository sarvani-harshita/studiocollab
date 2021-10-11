function getClaimById(){
	var queryStr = "Select * from public.\"Claims\" where public.\"Claims\".\"claimid\"=?";
	try{
		$s.query("ExpenseData", queryStr);
		$s.setLong(1, "claimid");
$s.setLong(2, "limit");
$s.setLong(3, "offset");
		results = $s.queryDb();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
getClaimById();
