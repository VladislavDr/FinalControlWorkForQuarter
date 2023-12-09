import java.rmi.registry.LocateRegistry;
import java.time.LocalDate;
import java.util.*;

public class AnimalRegistry {
    public static List<Animal> ANIMAL_LIST = new ArrayList<>();

    public static List<Animal> animalRegistry() {
        Animal cat = new Cat(1, "Kyza", LocalDate.of(2019, 10, 10));
        Animal dog = new Dog(2, "Barbosa", LocalDate.of(2019, 10, 10));
        Animal humster = new Humster(3, "Belyak", LocalDate.of(2019, 9, 9));
        Animal guineaPig = new GuineaPig(4, "Pig", LocalDate.of(2021, 01, 01));
        Animal parrot = new Parrot(5, "Petrusha", LocalDate.of(2017, 8, 8));
        Animal rabbit = new Rabbit(6, "Banni", LocalDate.of(2016, 6, 13));
        Animal camel = new Camel(7, "Lancelot", LocalDate.of(2010, 10, 10));
        Animal donkey = new Donkey(8, "Ishak", LocalDate.of(2013, 1, 15));
        Animal horse = new Horse(9, "Kazbek", LocalDate.of(2015, 8, 30));
        Animal mule = new Mule(10, "Grambler", LocalDate.of(2016, 4, 3));

        cat.teachable("Purr");
        cat.teachable("Go to the toilet");
        dog.teachable("Voice");
        dog.teachable("Serve");
        dog.teachable("Take");
        humster.teachable("Running in a wheelchair");
        humster.teachable("Go to the toilet");
        guineaPig.teachable("Serve");
        parrot.teachable("Voice: Petrusha is a handsome boy");
        parrot.teachable("Voice: I want to eat");
        parrot.teachable("Voice: Petrusha loves seeds");
        rabbit.teachable("Stand on your hind legs");
        rabbit.teachable("Jump on your hands");
        camel.teachable("Cargo transportation");
        camel.teachable("Wallking");
        camel.teachable("Running");
        donkey.teachable("Cargo transportation");
        donkey.teachable("Wallking");
        donkey.teachable("Running");
        horse.teachable("Cargo transportation");
        horse.teachable("Wallking");
        horse.teachable("Running");
        horse.teachable("Jogging");
        horse.teachable("Stand on your hind legs");
        horse.teachable("Sit down");
        mule.teachable("Wallking");
        mule.teachable("Running");
        mule.teachable("Jogging");

        Collections.addAll(ANIMAL_LIST, cat, dog, humster, guineaPig, parrot, rabbit, camel, donkey, horse, mule);
        return ANIMAL_LIST;
    }

    public static List<Animal> addAnimal(Animal animal) {
        ANIMAL_LIST.add(animal);
        return ANIMAL_LIST;
    }

    public static void show(Integer choos) {
        if (ANIMAL_LIST.isEmpty()) {
            System.out.println("Нечего выводить, реестр животных пуст.");
        } else {
            if (choos == 1) {
                ANIMAL_LIST.forEach(System.out::println);
            } else if (choos == 2) {
                ANIMAL_LIST.stream().filter(animal -> animal instanceof Pet).forEach(System.out::println);
            } else if (choos == 3) {
                ANIMAL_LIST.stream().filter(animal -> animal instanceof PackAnimal).forEach(System.out::println);
            }
        }
    }

    public static void listOfCommand() {
        for (Animal animal : ANIMAL_LIST) {
            if (animal.getAllCommands().isEmpty()) {
                System.out.println(animal + " - Это животное пока ничего не умеет");
            } else System.out.println(animal + " " + animal.getAllCommands());
        }
    }

    public static void birthdaySort() {
//        Collections.sort(ANIMAL_LIST, (a1, a2) -> a1.getBirthday() - a2.getBirthday());
//
//        Collections.sort(ANIMAL_LIST, (a1, a2) -> a1.getBirthday() - a2.getBirthday());

        Comparator<Animal> comparatorDesc = (prod1, prod2) -> prod2.getBirthday()
                .compareTo(prod1.getBirthday());

        Collections.sort(ANIMAL_LIST, comparatorDesc);
        ANIMAL_LIST.forEach(animal -> System.out.println(animal));
    }
}

