package pl.urbanik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.urbanik.model.Paints;
import pl.urbanik.model.WzPaint;

import java.util.List;

@Repository
public interface WzPaintsRepository extends JpaRepository<WzPaint, Long> {

    @Query(value = "select * from wz_paint  order by release_on desc Limit 5", nativeQuery = true)
    List<WzPaint> findWZbyReleased();

    @Query(value = "select sum(quantity) from wz_paint order by release_on desc LIMIT 7", nativeQuery = true)
    Long findWeekRelease();
}

