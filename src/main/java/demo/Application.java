package demo;

import lombok.Generated;

import static java.lang.System.out;

/** Production class for integration test demonstration. */
@Generated // Lie to JaCoCo and PIT
public final class Application {
    /**
     * Main entry point.
     *
     * @param args the command-line arguments
     */
    public static void main(final String... args) {
        out.println(new TheFoo("I AM FOOCUTUS OF BORG"));
    }

    // This is a "utility" class, ie, no instances, only static methods
    private Application() {  }
}
