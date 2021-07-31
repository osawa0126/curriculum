package check;
import constants.Constants;

public class Check {
    
    public static void main(String[] args) { 
 
        String fullName = printName(firstName,lastName);  
        System.out.println("printNameメソッド → " + fullName);
        
Pet pet = new Pet(Constants.CHECK_CLASS_JAVA,Constants.CHECK_CLASS_HOGE);
        pet.introduce();
        
RobotPet robotPet = new RobotPet(Constants.CHECK_CLASS_R2D2,Constants.CHECK_CLASS_LUKE);
        robotPet.introduce();
                }
    
    
    private static String firstName="大澤";
    private static String lastName="孝紀";
            
private static String printName(String firstName,String lastName) {
    return firstName + lastName;
            }






}
