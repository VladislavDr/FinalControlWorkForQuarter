import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.InputMismatchException;
import java.util.Locale;
import java.util.Scanner;

public class AnimalService {
    public static void addAnimal() {
        Integer SumID = AnimalRegistry.ANIMAL_LIST.size() + 1;
        System.out.println("Впишите 1, если хотите поместить в реестр кота. 2, если хотите внести собаку" +
                "3, если хотите выбрать свинку. 4, если хотите выбрать хомяка." +
                "5, если хотите выбрать попугая. 6, если хотите выбрать кролика. 7, если хотите выбрать верблюда." +
                "8, если хотите выбрать осла. 9, если хотите выбрать лошадь. 10, если хотите выбрать мула. ");
        Scanner scanner = new Scanner(System.in);
        Pet petChoosAnimal = null;
        PackAnimal packAnimalChoos = null;
        Integer numAnimal = scanner.nextInt();
        if (numAnimal < 1 || numAnimal > 10) {
            throw new InputMismatchException("Выбраны не верные значения!");
        }
        System.out.println("Введите имя нового животного");
        String name = scanner.next();
        System.out.println("Введите день рождение животного в формате ГГГГ-ММ-ДД");
        try {
            String date = scanner.next();
            LocalDate birthday = LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd"));

            switch (numAnimal) {
                case (1):
                    petChoosAnimal = new Cat(SumID, name, birthday);
                    break;
                case (2):
                    petChoosAnimal = new Dog(SumID, name, birthday);
                    break;
                case (3):
                    petChoosAnimal = new Humster(SumID, name, birthday);
                    break;
                case (4):
                    petChoosAnimal = new Rabbit(SumID, name, birthday);
                    break;
                case (5):
                    petChoosAnimal = new Parrot(SumID, name, birthday);
                    break;
                case (6):
                    petChoosAnimal = new GuineaPig(SumID, name, birthday);
                    break;
                case (7):
                    packAnimalChoos = new Camel(SumID, name, birthday);
                    break;
                case (8):
                    packAnimalChoos = new Horse(SumID, name, birthday);
                    break;
                case (9):
                    packAnimalChoos = new Donkey(SumID, name, birthday);
                    break;
                case (10):
                    packAnimalChoos = new Mule(SumID, name, birthday);
                    break;
            }

            System.out.println("Хотите добавить команды нового животному? Введите yes или no.");
            String mode = scanner.next();
            if (mode.equals("yes")) {
                if (packAnimalChoos != null) {
                    addNewCommand(packAnimalChoos);
                } else if (petChoosAnimal != null) {
                    addNewCommand(petChoosAnimal);
                }
            }

            if (numAnimal <= 6) {
                AnimalRegistry.addAnimal(petChoosAnimal);
            } else AnimalRegistry.addAnimal(packAnimalChoos);

        } catch (DateTimeException e) {
            System.out.println("Не верный формат дня рождения" + e);
        }
    }

    public static void show() {
        System.out.println("Введите 1, если хотите увидеть всех животных. Введите 2, если хотите увидеть \n" +
                "домашних животных. Введите 3, если хотите увидеть вьючных животных.");
        Scanner scanner = new Scanner(System.in);
        Integer choos = scanner.nextInt();
        if (choos > 3 || choos < 1) {
            try {
                throw new IllegalArgumentException();
            } catch (IllegalArgumentException e) {
                System.out.println("Не верный ввод");
            }
        }
        AnimalRegistry.show(choos);
    }

    public static void addMoreCommand() {
        System.out.println("На данный момент есть следующие животные: ");
        AnimalRegistry.ANIMAL_LIST.forEach(System.out::println);
        System.out.println("Введите имя того, кого хотите выбрать");
        Scanner scanner = new Scanner(System.in);
        String searchAnimalForAdd = scanner.next();
        for (Animal animal : AnimalRegistry.ANIMAL_LIST) {
            if (animal.getName().toLowerCase().equals(searchAnimalForAdd.toLowerCase())) {
                if (animal.getAllCommands().isEmpty()) {
                    System.out.println("Команды пока не выучены");
                } else {
                    System.out.println("На данный момент следующие комманды: " +
                            animal.getAllCommands());
                }
                System.out.println("Впишите следующую команду: ");
                String command = scanner.next();
                animal.teachable(command);
            } else System.out.println("Такого животного не найдено");
        }
    }

    public static void listOfCommand() {
        AnimalRegistry.listOfCommand();
    }

    public static void addNewCommand(Animal animal) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Впишите следующую команду: ");
        String command = scanner.next();
        animal.teachable(command);
    }

    public static void birthdaySort(){
        AnimalRegistry.birthdaySort();
    }
}
