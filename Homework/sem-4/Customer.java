package Homework4;

public class Customer {
    private int id;
    private Ticket[] tickets;
    private CashProvider cashProvider;

    // При покупке билета он становится недоступным
    public  boolean buy(Ticket ticket) {
        return false;
    }
    // При возврате билета его снова можно приобрести
    public boolean repealTicket(Ticket ticket){
        return true;
    }
    public Ticket[] searchTicket(int rootNumber){
        return new Ticket[0];
    }

}
