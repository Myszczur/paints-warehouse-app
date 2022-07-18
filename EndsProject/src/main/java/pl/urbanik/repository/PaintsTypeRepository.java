package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.PaintsType;

@Repository
public interface PaintsTypeRepository extends JpaRepository<PaintsType, Long> {
}
