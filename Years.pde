class Year{
 
  String text1520 =  "The population of Dundee has risen to about 7,000 and it is \ngrowing rapidly. ";
  String text1548 =  "Dundee is partly burned by the English and the burgh \nsuffered considerably during the conflict known as the \nRough Wooing of 1543 to 1550, and was occupied by the \nEnglish forces of Andrew Dudley from 1547.";
  String text1592 =  "A wall is built around Dundee ";
  String text1607 =  "Plague strikes Dundee";
  String text1651 =  "The English capture Dundee";
  String text1658 =  "Dundee Harbour is badly damaged by a storm";
  String text1731 =  "City Hall is built ";
  String text1797 =  "Marmalade discovered by Janet Keiller";
  String text1798 =  "An infirmary opens in Dundee";
  String text1801 =  "The population of Dundee is 26,000";
  String text1832 =  "Cholera strikes Dundee";
  String text1845 =  "A water company is founded in Dundee to provide \npiped water ";
  String text1861 =  "The population of Dundee is over 90,000. Shipbuilding is a \nmajor industry in Dundee. So is jute.";
  String text1876 =  "Horse drawn trams run in Dundee ";
  String text1881 =  "University of Dundee founded";
  String text1920 =  "D C Thompson begins making comics in Dundee";
  String text1966 =  "Tay Road Bridge opens";
  String text1974 =  "Ninewells Hospital opens";
  String text2018 =  "The V&A museum opens";
   String sound;
    
  AudioPlayer playSound;
  Minim minim;
  
  int year;
  String text1;
  void calculateYear(){
    if (slider1 <1534){
      setYear(1520);
      text1 = text1520;
      sound = "People Footsteps.mp3";
    }
     else if (slider1 <1570){
      setYear(1548);
      text1 = text1548;
    }
     else if (slider1 <1600){
      setYear(1592);
      text1 = text1592;
      sound = "Construction.mp3";
    }
     else if (slider1 <1629){
      setYear(1607);
      text1 = text1607;
      sound = "Sick Person.mp3";  
    }
     else if (slider1 <=1655){
      setYear(1651);
      text1 = text1651;
      sound = "Soldier Marching.mp3";
    }
    else if (slider1 <=1695){
      setYear(1658);
      text1 = text1658;
      sound = "Crash Collapse.mp3";
    }
    else if (slider1 <=1764){
      setYear(1731);
      text1 = text1731;
    }
    else if (slider1 <=1797){
      setYear(1797);
      text1 = text1797;
    }
    else if (slider1 <=1800){
      setYear(1798);
      text1 = text1798;
    }
    else if (slider1 <=1817){
      setYear(1801);
      text1 = text1801;
      sound = "People Footsteps.mp3";
    }
    else if (slider1 <=1839){
      setYear(1832);
      text1 = text1832;
      sound = "Sick Person.mp3";
    }
    else if (slider1 <=1853){
      setYear(1845);
      text1 = text1845;
      sound = "Water.mp3";
    }
    else if (slider1 <=1869){
      setYear(1861);
      text1 = text1861;
      sound = "People Footsteps.mp3";
    }
    else if (slider1 <=1879){
      setYear(1876);
      text1 = text1876;
    }
      else if (slider1 <=1901){
      setYear(1881);
      text1 = text1881;
      sound = "Finale.mp3";
    }
      else if (slider1 <=1943){
      setYear(1920);
      text1 = text1920;
    }
      else if (slider1 <=1970){
      setYear(1966);
      text1 = text1966;
    }
      else if (slider1 <=1996){
      setYear(1974);
      text1 = text1974;
    }
      else if (slider1 <=2018){
      setYear(2018);
      text1 = text2018;
      sound = "Finale.mp3";
    }
    displayYear();
  }
  
  void displayInfo(){
    textSize(20);
    fill(255);
    text(text1, 20, 210);
  }
 
  void setYear(int year){
    this.year = year;
  }
  
  String getSound(){
    return sound;
  }
  
  int getYear(){
    return year;
  }
  
  void displayYear(){
    textSize(70);
    fill(255);
    text(year, 240,150);
  }

}