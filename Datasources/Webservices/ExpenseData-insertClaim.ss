function insertClaim(){
	var queryStr = "INSERT INTO \"public\".\"Claims\" (\"managerid\",\"empid\",\"claimamount\",\"claimstatus\",\"claimdescription\") VALUES(?,?,?,?,?)";
	try{
		$s.query("ExpenseData", queryStr);
		$s.setLong(1, "managerid");
		$s.setLong(2, "empid");
		$s.setLong(3, "claimamount");
		$s.setInteger(4, "claimstatus");
		$s.setString(5, "claimdescription");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertClaim();
