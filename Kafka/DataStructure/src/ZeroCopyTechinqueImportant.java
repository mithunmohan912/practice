import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Period;

public class ZeroCopyTechinqueImportant {

	public ZeroCopyTechinqueImportant() {
		// TODO Auto-generated constructor stub
	}
	
	public void copyFile1(File file, String outfilepath) {
		FileOutputStream fos;
		try {
			FileInputStream fis = new FileInputStream(file);
			fos = new FileOutputStream(new File(outfilepath));
			byte[] bytearr = new byte[(int) file.length()];
			int bytesRead = -1;
			while ((bytesRead = fis.read(bytearr)) != -1) {
				fos.write(bytearr,0,bytesRead);
            }
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void copyFile(File file, String outfilepath) {
		
		try {
			FileInputStream fis = new FileInputStream(file); 
			FileChannel fCh = fis.getChannel();

			FileChannel ofch = new FileOutputStream(new File(outfilepath)).getChannel();
			fCh.transferTo(0, fCh.size(), ofch);
			fCh.close();			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
 ZeroCopyTechinqueImportant zc = new ZeroCopyTechinqueImportant();
 LocalTime l1 = LocalTime.now();
zc.copyFile(new File("C:\\Users\\C5287847\\OneDrive - SAP SE\\Documents\\readFileForZeroCopyProgram\\Virutal Acc Entitlement.docx"), "C:\\Users\\C5287847\\OneDrive - SAP SE\\Documents\\readFileForZeroCopyProgram\\VAEntitlement132.docx" );
System.out.println(Duration.between(l1, LocalTime.now()));
 l1 = LocalTime.now();
zc.copyFile1(new File("C:\\Users\\C5287847\\OneDrive - SAP SE\\Documents\\readFileForZeroCopyProgram\\Virutal Acc Entitlement.docx"), "C:\\Users\\C5287847\\OneDrive - SAP SE\\Documents\\readFileForZeroCopyProgram\\VAEntitlement22.docx" );
System.out.println(Duration.between(l1, LocalTime.now()));
	}

}
