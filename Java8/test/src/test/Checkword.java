package test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Checkword {
	   public List<String> wordBreak(String s, List<String> wordDict) {
		    List<String> data = new ArrayList<String>();
		        getStringData(data, "",s, wordDict);   
		        System.out.println(data);
		        return data;
		   
		        
		    }
		    
		    
		    private void getStringData(List<String> li,String firstSentence, String previous,String s, List<String> wordDict){
		        
		        StringBuilder tempBuilder=new StringBuilder(); 
		        // List li = new ArrayList<String>();
		        String temp = "";
		       int length =  firstSentence.split(" ").length;
		       int init=0;
		       boolean iaAnyChanged = false;
		       while(init<length && !iaAnyChanged) {
		    	   for(int i=0;i< s.length();i++){
			            temp = temp+""+s.charAt(i);
			            
			            if(wordDict.contains(temp)){		            	
			                if(previous.contains(temp) && !iaAnyChanged) {
			                	iaAnyChanged = true;		                	
			                }else {
			                	tempBuilder.append(temp).append(" ");
			                	temp ="";
			                }
			                
			            }     
			        }
		    	   
		       }
		        
		        
		        
		        if(tempBuilder.toString().trim().length()>0 && !tempBuilder.toString().trim().equals(previous)){
		            li.add(tempBuilder.toString().trim());
		            getStringData(li, tempBuilder.toString().trim(),s ,wordDict);
		        }
		   
		    } 
		    
		    public static void main(String[] args) {
		    	
		    	
		    	new Checkword().wordBreak("pineapplepenapple", Arrays.asList(new String[]{"apple","pen","applepen","pine","pineapple"}));
				
			}

}
