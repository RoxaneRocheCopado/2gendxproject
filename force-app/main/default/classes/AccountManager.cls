public class AccountManager {
    // Method to update the description of an Account
    public static void updateAccountDescription(Id accountId) {
        Account acc = [SELECT Id, Name FROM Account WHERE Id = :accountId];
        acc.Description = 'Updated Description: ' + acc.Name;
        update acc;
    }

    // Method to delete an Account
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        delete acc;
    }
}