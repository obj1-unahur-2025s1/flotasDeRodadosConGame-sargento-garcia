import rodados.*

class Dependencia{
    const property flota = []
    var property empleados 

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota() = flota.sum{r => r.peso()}
    method estaBienEquipada() = self.tieneAlMenosRodados(3) and self.todosVanAlMenosAKm(100)

    method tieneAlMenosRodados(cantidad) = flota.size() >= cantidad
    method todosVanAlMenosAKm(km) =  flota.all({r => r.velocidadMaxima() >= km})

    method capacidadTotalEnColor(color) = self.rodadosDelColor(color).sum({r => r.capacidad()})
    method rodadosDelColor(color) = flota.filter{r => r.color() == color} 
    method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
    method rodadoMasRapido() = flota.max({r => r.velocidadMaxima()})
    method capacidadFaltante() = 0.max(empleados - self.capacidadFlota())
    method capacidadFlota() = flota.sum({r => r.capacidad()})
    method esGrande() = empleados >= 40 and self.tieneAlMenosRodados(5)
    
}