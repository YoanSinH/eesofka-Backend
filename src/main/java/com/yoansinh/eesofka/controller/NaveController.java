package com.yoansinh.eesofka.controller;
import com.yoansinh.eesofka.model.Nave;
import com.yoansinh.eesofka.repository.NaveRepository;
import com.yoansinh.eesofka.exeptions.ResourceNotFoundExeption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET,RequestMethod.POST,RequestMethod.DELETE,RequestMethod.PUT})
@RequestMapping("/api/nave")

public class NaveController {
    @Autowired
    private NaveRepository naveRepository;

    @GetMapping
    public List<Nave> getAllNave(){ return naveRepository.findAll();
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @GetMapping("{id}")
    public ResponseEntity<Nave> getNaveById(@PathVariable Long id){
        Nave nave = naveRepository.findById(id)
                .orElseThrow( () -> new ResourceNotFoundExeption("Nave no encontrada con el ID"+id));
        return ResponseEntity.ok(nave);
    }

    @PostMapping
    public Nave createNave(@RequestBody Nave nave){
        return naveRepository.save(nave);
    }

    @PutMapping("{id}")
    public ResponseEntity<Nave> updateNave(@PathVariable Long id, @RequestBody Nave naveDetails){
        Nave updateNave = naveRepository.findById(id)
                .orElseThrow(()-> new ResourceNotFoundExeption("Nave no encontrada con el ID"+id));
        updateNave.setName(naveDetails.getName());
        updateNave.setType(naveDetails.getType());
        updateNave.setEmitter(naveDetails.getEmitter());
        updateNave.setDestination(naveDetails.getDestination());
        updateNave.setMission(naveDetails.getMission());

        naveRepository.save(updateNave);

        return ResponseEntity.ok(updateNave);
    }

    @DeleteMapping("{id}")
    public void deleteNaveById(@PathVariable Long id){
        naveRepository.deleteById(id);
    }

}
