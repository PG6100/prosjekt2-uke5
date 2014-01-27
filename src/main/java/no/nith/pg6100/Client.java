package no.nith.pg6100;

import java.util.List;

public class Client {

    public static void main(String[] args) {
        if (args != null && args.length>0) {
            if(args[0].equals("-add"))
                addMovie();
            else if(args[0].equals("-list"))
                list();
            else if(args[0].equals("-delete-all"))
                deleteAll();

        }else{
            System.out.println("no arguments, defaulting to listing...");
            list();
        }


    }


    private static void addMovie() {
        Movie movie = new Movie();
        movie.setTitle("Avatar");
        movie.setDefaultTicketPrice(120.0F);
        movie.setDescription("The best movie ever!");
        movie.setDirector("James Cameron");
        movie.setDurationInSeconds(10800);
        movieEJB.createMovie(movie);
        System.out.println("created movie");
        movie.setTitle("Changed title");
        movieEJB.updateMovie(movie);
        System.out.println("updated movie");
        movieEJB.deleteMovie(movie);
        System.out.println("deleted movie");
    }

    private static void deleteAll() {
        System.out.println("deleting all movies");
        List<Movie> movies =null; //hent alle movies
        for (Movie movie : movies) {
            //slett alle movies
        }
    }

    private static void list() {
        List<Movie> movies =null; //hent alle movies
        if(movies.size()==0) System.out.println("Nothing was found!");
        for (Movie movie : movies) {
            System.out.println("found movie:");
            System.out.println(String.format("\t title=%s,author=%s", movie.getTitle(), movie.getDirector()));
        }
    }
}
