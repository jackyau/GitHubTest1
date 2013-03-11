global class MyWebSerive {

    global class AccountInfo {
        webService String AcctName;
        webService Integer AcctNumber;
    }
    
    webService static Account createAccount (AccountInfo info) {
        Account acct = new Account();
        acct.Name = info.AcctName;
        acct.AccountNumber = String.valueOf (info.AcctNumber);
        insert acct;
        return acct;    
    }
}