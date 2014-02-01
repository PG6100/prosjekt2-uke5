package no.nith.pg6100;

import javax.ejb.Local;
import javax.ejb.Remote;
import java.util.List;

@Remote
public interface MovieEJBRemote {
    List<Movie> findMovies();

    Movie findMovieById(Long id);

    Movie createMovie(Movie movie);

    void deleteMovie(Movie movie);

    Movie updateMovie(Movie movie);
}
