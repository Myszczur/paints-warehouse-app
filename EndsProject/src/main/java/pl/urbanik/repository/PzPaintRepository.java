package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.Paints;
import pl.urbanik.model.PzPaint;
import pl.urbanik.model.WzPaint;

import java.awt.print.Book;
import java.util.List;

@Repository
public interface PzPaintRepository extends JpaRepository<PzPaint, Long> {

    @Query(value = "select * from pz_paint  order by income_on desc Limit 5", nativeQuery = true)
    List<PzPaint> findPZbyIncome();

    @Query(value = "select sum(quantity) from pz_paint order by income_on desc LIMIT 7", nativeQuery = true)
    Long findWeekIncome();


}
