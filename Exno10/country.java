package ex10;
public class country 
{
    public String name,capital,currency,population;
    public country(String a,String b,String c,String d)
    {
        name=a;
        capital=b;
        currency=c;
        population=d;
    }
   public String getName()
   {
       return name;
   }
   public String getCapital()
   {
       return capital;
   }
   
   public String getCurrency()
   {
       return currency;
   }
   
   public String getPopulation()
   {
       return population;
   }
}
