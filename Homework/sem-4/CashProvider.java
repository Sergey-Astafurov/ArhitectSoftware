package Homework4;

public class CashProvider {
    private long card;
    private boolean isAuthorization;

    // При покупке билета он становится недоступным
    public  boolean buy(int price) {
        return false;
    }
    // При возврате билета его снова можно приобрести
    public boolean repealTicket(int price){
        return true;
    }

    public void authorization(Customer customer){
        this.isAuthorization = true;
    }
}
