function updateClaimStatus(){
	var queryStr = "UPDATE \"public\".\"Claims\" SET \"claimstatus\"=? WHERE \"claimid\"= ?";
	try{
		$s.query("ExpenseData", queryStr);
	$s.setInteger(1, "claimstatus");
	$s.setLong(2, "claimid");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateClaimStatus();
