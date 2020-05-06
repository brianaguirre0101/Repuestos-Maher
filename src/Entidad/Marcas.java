package Entidad;

public class Marcas {

	private int id;
	private String nombre;
	private String estado;
	
	public Marcas() {}
	
	public Marcas(int id, String nombre, String estado) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.estado = estado;
	}
	
	public Marcas(int id) {
		super();
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	@Override
	public String toString() {
		return "Marcas [id=" + id + ", nombre=" + nombre + ", estado=" + estado + "]";
	}
	
}
