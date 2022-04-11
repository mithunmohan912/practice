import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;


public class SortJava8 {

	public static void main(String[] args) {
		SortJava8 obj = new SortJava8();
		Map<Integer,Emp> map = new HashMap<Integer, Emp>();
		map.put(10, obj.new Emp(60,"mit"));
		map.put(20, obj.new Emp(50,"mit"));
		map.put(30, obj.new Emp(40,"mit"));
		Map<Integer,Emp> newMap= map.entrySet().stream().sorted((e1,e2) -> e2.getValue().getSal() -  e1.getValue().getSal()).collect(Collectors.toMap(Map.Entry::getKey,
				Map.Entry::getValue,(k1,k2)->k1,LinkedHashMap::new));
		System.out.println("newMap: "+newMap);
		
		Map<String, List<Emp>>  test= map.values().stream().collect(Collectors.groupingBy(Emp::getName));
		System.out.println(test);
		
		
		List<String> li = new LinkedList<String>();
		li.add("mm");
		li.add("mm");
		li.add("ii");
		
		
	}
	
	
	 class Emp{
		private int sal;
		private String name;
		
		
		public Emp(int sal, String name) {
			super();
			this.sal = sal;
			this.name = name;
		}
		public int getSal() {
			return sal;
		}
		public void setSal(int sal) {
			this.sal = sal;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		@Override
		public String toString() {
			return "Emp [sal=" + sal + ", name=" + name + "]";
		}
		
		
		
	}
}
