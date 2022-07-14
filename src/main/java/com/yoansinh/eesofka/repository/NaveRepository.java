package com.yoansinh.eesofka.repository;
import com.yoansinh.eesofka.model.Nave;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NaveRepository extends JpaRepository<Nave, Long> {
    Iterable<Nave> findByName(final String name);
    Iterable<Nave> findByType(final String type);
    Iterable<Nave> findByEmitter(final String emitter);
    Iterable<Nave> findByDestination(final String destination);
    Iterable<Nave> findByMission(final String mission);
}
