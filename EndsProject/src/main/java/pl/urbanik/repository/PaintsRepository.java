package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.Paints;

import javax.transaction.Transactional;
import java.awt.*;
import java.awt.print.Book;
import java.util.List;

@Repository
public interface PaintsRepository extends JpaRepository<Paints, Long> {

    @Query(value = "select * from paints  order by quantity Limit 5", nativeQuery = true)
    List<Paints> findPaintsByq();

}
