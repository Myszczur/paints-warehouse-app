package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.Projects;
import pl.urbanik.model.PzPaint;

import java.util.List;

@Repository
public interface ProjectsRepository extends JpaRepository<Projects, Long> {

    @Query(value = "select * from projects  order by ends_date Limit 5", nativeQuery = true)
    List<Projects> findProjectByEnd();
}
