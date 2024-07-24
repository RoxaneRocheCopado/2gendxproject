@isTest
public class AccountManagerTest {
    @isTest static void testUpdateAccountDescription() {
        // Create a test account
        Account testAccount = new Account(Name='Test Account');
        insert testAccount;

        // Call the method under test
        AccountManager.updateAccountDescription(testAccount.Id);

        // Retrieve the updated account
        Account updatedAccount = [SELECT Description FROM Account WHERE Id = :testAccount.Id];
        
        // Assert that the description was updated correctly
        System.assertEquals('Updated Description: Test Account', updatedAccount.Description);
    }
}