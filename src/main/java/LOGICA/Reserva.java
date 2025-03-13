package LOGICA;

public class Reserva {

    private String username;
    private String fechaReserva;
    private String espacioTrabajo;
    private String horas;

    public Reserva() {
    }

    public Reserva(String username, String fechaReserva, String espacioTrabajo, String horas) {
        this.username = username;
        this.fechaReserva = fechaReserva;
        this.espacioTrabajo = espacioTrabajo;
        this.horas = horas;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(String fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public String getEspacioTrabajo() {
        return espacioTrabajo;
    }

    public void setEspacioTrabajo(String espacioTrabajo) {
        this.espacioTrabajo = espacioTrabajo;
    }

    public String getHoras() {
        return horas;
    }

    public void setHoras(String horas) {
        this.horas = horas;
    }

}
