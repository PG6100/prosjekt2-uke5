
package no.nith.pg6100;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.List;

@Stateless
@LocalBean
public class MovieEJB implements MovieEJBRemote {
    @PersistenceContext(unitName = "PG6100")
    private EntityManager em;

    public List<Movie> findMovies() {
        TypedQuery<Movie> query = em.createNamedQuery("findAllMovies", Movie.class);
        return query.getResultList();
    }

    public Movie findMovieById(Long id) {
        return em.find(Movie.class, id);
    }

    public Movie createMovie(Movie movie) {
        em.persist(movie);
        return movie;
    }

    public void deleteMovie(Movie movie) {
        em.remove(movie);
    }

    public Movie updateMovie(Movie movie) {
        return em.merge(movie);
    }
}