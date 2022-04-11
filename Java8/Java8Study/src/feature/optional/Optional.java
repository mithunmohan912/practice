package feature.optional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Collectors.*;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Optional {
	
	List a = new ArrayList<>();
	
	public static void main(String[] args) {
		Computer cmp = new Computer();
		java.util.Optional<SoundCard> soundCard =  java.util.Optional.ofNullable(new SoundCard());
		cmp.setSoundCard(soundCard);		
		cmp.getSoundCard().get().setUsb(java.util.Optional.ofNullable(new USB()));
		java.util.Optional<Computer> computer = java.util.Optional.ofNullable(cmp);

		String version = computer.flatMap(Computer::getSoundCard).flatMap(SoundCard::getUsb).map(USB::getUsbVersion).orElse("unknown");
		System.out.println(">> "+version);
		
		USB u =new USB();
		u.setUsbVersion("1");
		USB u2 =new USB();
		u2.setUsbVersion("11");
		USB u3 =new USB();
		u3.setUsbVersion("111");
		List<USB> arr = new ArrayList<USB>();
		arr.add(u);
		arr.add(u2);
		arr.add(u3);
		Stream usbVersio1n = Stream.of(u,u2,u3).parallel().map(d ->d.getUsbVersion());
		Stream usbVersion = Stream.of(u,u2,u3).map(d ->d.getUsbVersion());
		//parallel

		List<String> parallelInt = Collections.synchronizedList(new ArrayList<String>());
		arr.stream().map(e-> {parallelInt.add(e.getUsbVersion()); return e;});
		System.out.println("parallelInt: "+parallelInt);
		//
		
		arr.parallelStream().forEach(System.out::println);
		Predicate<USB> predicate = a-> a.getUsbVersion().equals("1");
		arr.removeIf(predicate);
		System.out.println(arr);
		System.out.println(IntStream.range(0, 10).reduce((a,b)->a+b));
		IntStream.range(0, 10).forEach(System.out::println);
		Stream.iterate(arr, t -> t).limit(arr.size()).map(d ->{
				System.out.println("list"+ d.getClass());
						return d.get(0).getUsbVersion() + "eee";
			}).forEach(System.out::println);
		
		
		Stream<String> words = Stream.of("Java", "Magazine", "is", 
			     "the", "best");

			Map<String, Long> letterToCount =
			           words.map(w -> w.split("")).flatMap(Arrays::stream).collect(Collectors.groupingBy(Function.identity(), Collectors.counting()));
		System.out.println("letterToCount:"+letterToCount);
	}

}
