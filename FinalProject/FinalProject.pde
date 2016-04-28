ArrayList<Circle> mainCircles;

ArrayList<CircleForIndividualCourses> historyCircles;
ArrayList<CircleForIndividualCourses> mathCircles;
ArrayList<CircleForIndividualCourses> artCircles;
ArrayList<CircleForIndividualCourses> playCircles;
ArrayList<CircleForIndividualCourses> scienceCircles;
ArrayList<CircleForIndividualCourses> litCircles;
ArrayList<CircleForIndividualCourses> electiveCircles;
ArrayList<CircleForIndividualCourses> extraCircles;

ArrayList<CircleForIndividualCourses> spanishCircles;
ArrayList<CircleForIndividualCourses> frenchCircles;
ArrayList<CircleForIndividualCourses> latinCircles;

HashMap<String, Integer> numberOfCoursesInEachDepartment;

HashMap<String, Integer> numberOfMaleStudentsInEachDepartment;
HashMap<String, Integer> numberOfFemaleStudentsInEachDepartment;
HashMap<String, Integer> numberOfStudentsInEachDepartment;

HashMap<String, ArrayList<CircleForIndividualCourses>> departmentCircles;

ArrayList<String> numberToDepartment;
ArrayList<String> numberToLangDepartment;

float backButtonX = -435;
float backButtonY = -360;

//HashMap<String, color())> colorsList;

color random = color(random(0, 255),random(0, 255),random(0, 255));
color button = color(235, 214, 193);
color male = color(0x65, 0xbc, 0xd4);
color female = color(254, 136, 146);
color history = color(198, 81, 198);
color lang = color(229, 229, 137);
color math = color(184, 24, 54);
color art = color(255, 219, 153);
color play = color(81, 198, 198);
color science = color(182, 219, 196);
color lit = color(230, 31, 68);
color elective = color(211, 192, 173);
color extra = color(191, 255, 127);
color spanish = color(206, 206, 102);
color french = color(154, 206, 102);
color latin = color(206, 154, 102);

int totalMale = 0;
int totalFemale = 0;
int total;

int view;

Table data;

//Sets up all the infomation needed for the program

void setup() {

  data = loadTable("courses.csv", "header");
  mainCircles = new ArrayList<Circle>();
  historyCircles = new ArrayList<CircleForIndividualCourses>();
  mathCircles = new ArrayList<CircleForIndividualCourses>();
  artCircles = new ArrayList<CircleForIndividualCourses>();
  playCircles = new ArrayList<CircleForIndividualCourses>();
  scienceCircles = new ArrayList<CircleForIndividualCourses>();
  litCircles = new ArrayList<CircleForIndividualCourses>();
  electiveCircles = new ArrayList<CircleForIndividualCourses>();
  extraCircles = new ArrayList<CircleForIndividualCourses>();

  spanishCircles = new ArrayList<CircleForIndividualCourses>();
  frenchCircles = new ArrayList<CircleForIndividualCourses>();
  latinCircles = new ArrayList<CircleForIndividualCourses>();
  
  numberToDepartment = new ArrayList<String>();
  numberToDepartment.add("History");
  numberToDepartment.add("Lang");
  numberToDepartment.add("Math");
  numberToDepartment.add("Art");
  numberToDepartment.add("Play");
  numberToDepartment.add("Science");
  numberToDepartment.add("Lit");
  numberToDepartment.add("Elective");
  numberToDepartment.add("Extra");
  
  numberToLangDepartment = new ArrayList<String>();
  numberToLangDepartment.add("Spanish");
  numberToLangDepartment.add("French");
  numberToLangDepartment.add("Latin");
  
  numberOfCoursesInEachDepartment = new HashMap<String, Integer>();

  numberOfCoursesInEachDepartment.put("History", 0);
  numberOfCoursesInEachDepartment.put("Lang", 0);
  numberOfCoursesInEachDepartment.put("Math", 0);
  numberOfCoursesInEachDepartment.put("Art", 0);
  numberOfCoursesInEachDepartment.put("Play", 0);
  numberOfCoursesInEachDepartment.put("Science", 0);
  numberOfCoursesInEachDepartment.put("Lit", 0);
  numberOfCoursesInEachDepartment.put("Elective", 0);
  numberOfCoursesInEachDepartment.put("Extra", 0);
  
  numberOfCoursesInEachDepartment.put("Spanish", 0);
  numberOfCoursesInEachDepartment.put("French", 0);
  numberOfCoursesInEachDepartment.put("Latin", 0);

  numberOfMaleStudentsInEachDepartment = new HashMap<String, Integer>();

  numberOfMaleStudentsInEachDepartment.put("History", 0);
  numberOfMaleStudentsInEachDepartment.put("Lang", 0);
  numberOfMaleStudentsInEachDepartment.put("Math", 0);
  numberOfMaleStudentsInEachDepartment.put("Art", 0);
  numberOfMaleStudentsInEachDepartment.put("Play", 0);
  numberOfMaleStudentsInEachDepartment.put("Science", 0);
  numberOfMaleStudentsInEachDepartment.put("Lit", 0);
  numberOfMaleStudentsInEachDepartment.put("Elective", 0);
  numberOfMaleStudentsInEachDepartment.put("Extra", 0);
  
  numberOfMaleStudentsInEachDepartment.put("Spanish", 0);
  numberOfMaleStudentsInEachDepartment.put("French", 0);
  numberOfMaleStudentsInEachDepartment.put("Latin", 0);
  
  numberOfFemaleStudentsInEachDepartment = new HashMap<String, Integer>();
  
  numberOfFemaleStudentsInEachDepartment.put("History", 0);
  numberOfFemaleStudentsInEachDepartment.put("Lang", 0);
  numberOfFemaleStudentsInEachDepartment.put("Math", 0);
  numberOfFemaleStudentsInEachDepartment.put("Art", 0);
  numberOfFemaleStudentsInEachDepartment.put("Play", 0);
  numberOfFemaleStudentsInEachDepartment.put("Science", 0);
  numberOfFemaleStudentsInEachDepartment.put("Lit", 0);
  numberOfFemaleStudentsInEachDepartment.put("Elective", 0);
  numberOfFemaleStudentsInEachDepartment.put("Extra", 0);
  
  numberOfFemaleStudentsInEachDepartment.put("Spanish", 0);
  numberOfFemaleStudentsInEachDepartment.put("French", 0);
  numberOfFemaleStudentsInEachDepartment.put("Latin", 0);
  
  numberOfStudentsInEachDepartment = new HashMap<String, Integer>();
  
  numberOfStudentsInEachDepartment.put("History", 0);
  numberOfStudentsInEachDepartment.put("Lang", 0);
  numberOfStudentsInEachDepartment.put("Math", 0);
  numberOfStudentsInEachDepartment.put("Art", 0);
  numberOfStudentsInEachDepartment.put("Play", 0);
  numberOfStudentsInEachDepartment.put("Science", 0);
  numberOfStudentsInEachDepartment.put("Lit", 0);
  numberOfStudentsInEachDepartment.put("Elective", 0);
  numberOfStudentsInEachDepartment.put("Extra", 0);
  
  numberOfStudentsInEachDepartment.put("Spanish", 0);
  numberOfStudentsInEachDepartment.put("French", 0);
  numberOfStudentsInEachDepartment.put("Latin", 0);
  
  departmentCircles = new HashMap<String, ArrayList<CircleForIndividualCourses>>();
  
  departmentCircles.put("History", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Lang", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Math", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Art", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Play", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Science", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Lit", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Elective", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Extra", new ArrayList<CircleForIndividualCourses>());
  
  departmentCircles.put("Spanish", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("French", new ArrayList<CircleForIndividualCourses>());
  departmentCircles.put("Latin", new ArrayList<CircleForIndividualCourses>());

  size(1000, 850);
  background(0);

  math();
  addCirclesToMainCirclesArray();
  addCirclesToItsAppropiateDeparmentsArrayList();
  addCirclesToItsAppropiateLanguageArrayList();
  view = 0;
}

//Re draws every frame

void draw() {
  background(0);
  if (view == 0) {
    background(0);
    setTextTitle("Total Course Enrollments");
    setTextInstructions();
    drawTotalEntrollment(3);
    if (mainCircles.get(0).overlaps()) {
      background(0);
      setTextTitle("Total Course Enrollments");
      drawTotalEntrollment(4);
      drawTotalMaleAndFemaleEnrollments();
    }
  } else if (view == 1) {
    background(0);
    drawBackButtonToHome();
    drawDepartment();
    drawMaleAndFemaleCirlcesForDepartments();
    setTextTitle("Enrollments by Department");
  }else {
    String department = numberToDepartment.get(view-2);
    background(0);
    drawBackButton();
    setTextTitle(department + " Enrollments");
    drawDepartmentCourses(department);
    drawDepartmentCoursesMaleAndFemale(department);
  } 
}

//math

void math() {
  for (int i = 0; i < data.getRowCount (); i++) {
    totalMale = totalMale + data.getRow(i).getInt("Total Males");
    totalFemale = totalFemale + data.getRow(i).getInt("Total Females");
    
    
      String department = numberToDepartment.get(data.getRow(i).getInt("Department"));
      numberOfMaleStudentsInEachDepartment.put(department, numberOfMaleStudentsInEachDepartment.get(department) + data.getRow(i).getInt("Total Males"));
      numberOfFemaleStudentsInEachDepartment.put(department, numberOfFemaleStudentsInEachDepartment.get(department) + data.getRow(i).getInt("Total Males"));
      numberOfStudentsInEachDepartment.put(department, numberOfFemaleStudentsInEachDepartment.get(department) + numberOfMaleStudentsInEachDepartment.get(department));
      numberOfCoursesInEachDepartment.put(department, numberOfCoursesInEachDepartment.get(department) +1);
  }
  
  for (int i =0;i < data.getRowCount ();i++) {
    if((data.getRow(i).getInt("Language")) != 4) {
      String langDepartment = numberToLangDepartment.get(data.getRow(i).getInt("Language"));
      numberOfMaleStudentsInEachDepartment.put(langDepartment, numberOfMaleStudentsInEachDepartment.get(langDepartment) + data.getRow(i).getInt("Total Males"));
      numberOfFemaleStudentsInEachDepartment.put(langDepartment, numberOfFemaleStudentsInEachDepartment.get(langDepartment) + data.getRow(i).getInt("Total Males"));
      numberOfStudentsInEachDepartment.put(langDepartment, numberOfFemaleStudentsInEachDepartment.get(langDepartment) + numberOfMaleStudentsInEachDepartment.get(langDepartment));
      numberOfCoursesInEachDepartment.put(langDepartment, numberOfCoursesInEachDepartment.get(langDepartment) +1);
    }
  }
  
  for (int i =0;i < data.getRowCount ();i++) {
      String department = numberToDepartment.get(data.getRow(i).getInt("Department"));
      numberOfStudentsInEachDepartment.put(department, numberOfMaleStudentsInEachDepartment.get(department) + numberOfFemaleStudentsInEachDepartment.get(department));
      if((data.getRow(i).getInt("Language")) != 4) {
      String langDepartment = numberToLangDepartment.get(data.getRow(i).getInt("Language"));
      numberOfStudentsInEachDepartment.put(langDepartment, numberOfMaleStudentsInEachDepartment.get(langDepartment) + numberOfFemaleStudentsInEachDepartment.get(langDepartment));
    }
  }
}
//adds

void addCirclesToMainCirclesArray() {  
 for (int i = 0; i < 20; i++) {
    mainCircles.add(new Circle());
  }
}

void addCirclesToItsAppropiateDeparmentsArrayList() {
  
  for (int i = 0; i < data.getRowCount (); i++) {
    String department = numberToDepartment.get(data.getRow(i).getInt("Department"));
    CircleForIndividualCourses circle = new CircleForIndividualCourses((data.getRow(i).getInt("Total Males") + data.getRow(i).getInt("Total Females"))*2.5, data.getRow(i).getInt("Index"));
    departmentCircles.get(department).add(circle);
  }
}

void addCirclesToItsAppropiateLanguageArrayList() {
  for (int i = 0; i < data.getRowCount (); i++) {

    if (data.getRow(i).getInt("Language")==0) {
      spanishCircles.add(new CircleForIndividualCourses((data.getRow(i).getInt("Total Males") + data.getRow(i).getInt("Total Females"))*2.5, data.getRow(i).getInt("Index")));
    } else if (data.getRow(i).getInt("Language")==1) {
      frenchCircles.add(new CircleForIndividualCourses((data.getRow(i).getInt("Total Males") + data.getRow(i).getInt("Total Females"))*2.5, data.getRow(i).getInt("Index")));
    } else if (data.getRow(i).getInt("Language")==2) {
      latinCircles.add(new CircleForIndividualCourses((data.getRow(i).getInt("Total Males") + data.getRow(i).getInt("Total Females"))*2.5, data.getRow(i).getInt("Index")));
    } 
    
  }
}

//navigation

void drawBackButtonToHome() {
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(17).display(button, 70, backButtonX, backButtonY);
  setButtonText("Back", 17);
  popMatrix();
}

void drawBackButton() {
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(18).display(button, 70, backButtonX, backButtonY);
  setButtonText("Back", 17);
  popMatrix();
}

void drawBackButtonToLanguagePage() {
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(19).display(button, 70, backButtonX, backButtonY);
  setButtonText("Back", 18);
  popMatrix();
}


//text


void setButtonText(String title, int identifyCircle) {
  textSize(15);
  fill(255);
  textAlign(CENTER);
  text(title, mainCircles.get(identifyCircle).getX(), mainCircles.get(identifyCircle).getY()+5);
}

void setText(String title, int amount, int identifyCircle) {
  textSize(15);
  fill(255);
  textAlign(CENTER, BOTTOM);
  text(title, mainCircles.get(identifyCircle).getX(), mainCircles.get(identifyCircle).getY());
  textAlign(CENTER, TOP);
  text(amount, mainCircles.get(identifyCircle).getX(), mainCircles.get(identifyCircle).getY());
}

void setTextTitle(String title) {
  textSize(36);
  fill(255);
  textAlign(CENTER, TOP);
  text(title, width/2, 0);
}

void setTextInstructions() {
  textSize(18);
  fill(255);
  textAlign(CENTER, TOP);
  text("Hover over the middle of the circle for information about male and female enrollments", width/2, 45);
  text("Click the middle of the circle for more detailed data", width/2, 45+24);
}

void setCourseText(String department, String title, int amount, int identifyCircle) {
 textSize(15);
 fill(255);
 textAlign(CENTER, BOTTOM);
 CircleForIndividualCourses circle = departmentCircles.get(department).get(identifyCircle);
 text(title, circle.getX(), circle.getY());
 textAlign(CENTER, TOP);
 text(amount, circle.getX(), circle.getY());
}

void setSpanishText(String title, int amount, int identifyCircle) {
  textSize(15);
  fill(255);
  textAlign(CENTER, BOTTOM);
  text(title, spanishCircles.get(identifyCircle).getX(), spanishCircles.get(identifyCircle).getY());
  textAlign(CENTER, TOP);
  text(amount, spanishCircles.get(identifyCircle).getX(), spanishCircles.get(identifyCircle).getY());
}

void setFrenchText(String title, int amount, int identifyCircle) {
  textSize(15);
  fill(255);
  textAlign(CENTER, BOTTOM);
  text(title, frenchCircles.get(identifyCircle).getX(), frenchCircles.get(identifyCircle).getY());
  textAlign(CENTER, TOP);
  text(amount, frenchCircles.get(identifyCircle).getX(), frenchCircles.get(identifyCircle).getY());
}

void setLatinText(String title, int amount, int identifyCircle) {
  textSize(15);
  fill(255);
  textAlign(CENTER, BOTTOM);
  text(title, latinCircles.get(identifyCircle).getX(), latinCircles.get(identifyCircle).getY());
  textAlign(CENTER, TOP);
  text(amount, latinCircles.get(identifyCircle).getX(), latinCircles.get(identifyCircle).getY());
}

//level 1

void drawTotalEntrollment(int sizer) {

  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(0).display(random, (totalMale+totalFemale) /sizer, 0, 0 );
  setText("in Non-Mandatory Classes", totalMale + totalFemale, 0);
  textAlign(CENTER, BOTTOM);
  text("Total Enrollments", mainCircles.get(0).getX(), mainCircles.get(0).getY()-15);
  popMatrix();
}

void drawTotalMaleAndFemaleEnrollments() { 
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(1).display(male, (totalMale)/4, 400 *cos((TWO_PI/8.0) *5), 400 *sin((TWO_PI/8.0) *5) );
  setText("Male Enrollments", totalMale, 1);

  mainCircles.get(2).display(female, (totalFemale)/4, 400 *cos((TWO_PI/8.0) *1), 400 *sin((TWO_PI/8.0) *1) );
  setText("Female Enrollments", totalFemale, 2);
  popMatrix();
}

//level 2

void drawDepartment() {
  pushMatrix();
  translate(width/2, height/2);
  
  mainCircles.get(3).display(history, (numberOfStudentsInEachDepartment.get("History")/4 *3.25), 290*cos((TWO_PI/36.0) *1), 290*sin((TWO_PI/36.0) *1) );
  setText("History", numberOfStudentsInEachDepartment.get("History"), 3);

  mainCircles.get(4).display(lang, (numberOfStudentsInEachDepartment.get("Lang")/4 *3.25), 290*cos((TWO_PI/36.0) *6), 290*sin((TWO_PI/36.0) *6) );
  setText("Language", numberOfStudentsInEachDepartment.get("Lang"), 4);

  mainCircles.get(5).display(math, (numberOfStudentsInEachDepartment.get("Math")/4 *3.25), 290*cos((TWO_PI/36.0) *13), 290*sin((TWO_PI/36.0) *13) );
  setText("Math", numberOfStudentsInEachDepartment.get("Math"), 5);

  mainCircles.get(6).display(art, (numberOfStudentsInEachDepartment.get("Art")/4 *3.25), 290*cos((TWO_PI/36.0) *18), 290*sin((TWO_PI/36.0) *18) );
  setText("Art", numberOfStudentsInEachDepartment.get("Art"), 6);

  mainCircles.get(7).display(play, (numberOfStudentsInEachDepartment.get("Play")/4 *3.25), 290*cos((TWO_PI/36.0) *20.5), 290*sin((TWO_PI/36.0) *20.5) );
  setText("Play", numberOfStudentsInEachDepartment.get("Play"), 7);

  mainCircles.get(8).display(science, (numberOfStudentsInEachDepartment.get("Science")/4 *3.25), 290*cos((TWO_PI/36.0) *24.5), 290*sin((TWO_PI/36.0) *24.5) );
  setText("Science", numberOfStudentsInEachDepartment.get("Science"), 8);

  mainCircles.get(9).display(lit, (numberOfStudentsInEachDepartment.get("Lit")/4 *3.25), 290*cos((TWO_PI/36.0) *29.325), 290*sin((TWO_PI/36.0) *29.325) );
  setText("Lit Seminars", numberOfStudentsInEachDepartment.get("Lit"), 9);

  mainCircles.get(10).display(elective, (numberOfStudentsInEachDepartment.get("Elective")/4 *3.25), 290*cos((TWO_PI/36.0) *32), 290*sin((TWO_PI/36.0) *32) );
  setText("Electives", numberOfStudentsInEachDepartment.get("Elective"), 10);

  mainCircles.get(11).display(extra, (numberOfStudentsInEachDepartment.get("Extra")/4 *3.25), 290*cos((TWO_PI/36.0) *34), 290*sin((TWO_PI/36.0) *34) );
  setText("Extracurriculars", numberOfStudentsInEachDepartment.get("Extra"), 11);

  popMatrix();
}

void drawMaleAndFemaleCirlcesForDepartments() {
 for (int i=3; i < 12; i++){
   if (mainCircles.get(i).overlaps()) {
     pushMatrix();
     translate(width/2, height/2);
     mainCircles.get(12).display(male, (numberOfMaleStudentsInEachDepartment.get(numberToDepartment.get(i-3)) /4) *3.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
     setText("Males in " + numberToDepartment.get(i-3),numberOfMaleStudentsInEachDepartment.get(numberToDepartment.get(i-3)), 12);
    
     mainCircles.get(13).display(female, (numberOfFemaleStudentsInEachDepartment.get(numberToDepartment.get(i-3)) /4) *3.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
     setText("Females in " + numberToDepartment.get(i-3), numberOfFemaleStudentsInEachDepartment.get(numberToDepartment.get(i-3)), 13);
    
     popMatrix();
   }
 }
}

//level 3

void drawLangDepartmentCourses() {
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(14).display(spanish, ( numberOfStudentsInEachDepartment.get("Spanish")/4 *3.25), 290*cos((TWO_PI/3.0) *1), 290*sin((TWO_PI/3.0) *1) );
  setText("Spanish Enrollments",  numberOfStudentsInEachDepartment.get("Spanish"), 14);
  popMatrix();
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(15).display(french, ( numberOfStudentsInEachDepartment.get("French")/4 *3.25), 290*cos((TWO_PI/3.0) *2), 290*sin((TWO_PI/3.0) *2) );
  setText("French Enrollments",  numberOfStudentsInEachDepartment.get("French"), 15);
  popMatrix();
  pushMatrix();
  translate(width/2, height/2);
  mainCircles.get(16).display(latin, ( numberOfStudentsInEachDepartment.get("Latin")/4 *3.25), 290*cos((TWO_PI/3.0) *3), 290*sin((TWO_PI/3.0) *3) );
  setText("Latin Enrollments",  numberOfStudentsInEachDepartment.get("Latin"), 16);
  popMatrix();
}


void drawDepartmentCourses(String department){
  println(department);
  for (int i=0; i < departmentCircles.get(department).size (); i++) {
    pushMatrix();
    translate(width/2, height/2);
    departmentCircles.get(department).get(i).display(math, 250*cos((TWO_PI/departmentCircles.get(department).size() *i)), 250*sin((TWO_PI/departmentCircles.get(department).size() *i)));
    setCourseText(department, data.getRow(departmentCircles.get(department).get(i).getID()).getString("Course"), data.getRow(departmentCircles.get(department).get(i).getID()).getInt("Total Males") + data.getRow(departmentCircles.get(department).get(i).getID()).getInt("Total Females"), i);
    popMatrix();
  }
}

//level 3 Male and Female

void drawDepartmentCoursesMaleAndFemale(String department) {
  
  for (int i=0; i < historyCircles.size (); i++) {
    if (historyCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(historyCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(historyCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(historyCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(historyCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawHistoryDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < historyCircles.size ()) {
    if (historyCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(historyCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(historyCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(historyCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(historyCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawLangDepartmentCoursesMaleAndFemale() {
  // no need to check if it explicitly equals true!
  if (mainCircles.get(14).overlaps()) {

    pushMatrix();
    translate(width/2, height/2);
    mainCircles.get(12).display(male, (numberOfMaleStudentsInEachDepartment.get("Spanish") /4) *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
    setText("Males in Spanish", numberOfMaleStudentsInEachDepartment.get("Spanish"), 12);

    mainCircles.get(13).display(female, (numberOfFemaleStudentsInEachDepartment.get("Spanish") /4) *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
    setText("Females in Spanish", numberOfFemaleStudentsInEachDepartment.get("Spanish"), 13);

    popMatrix();
  } else if (mainCircles.get(15).overlaps()) {

    pushMatrix();
    translate(width/2, height/2);
    mainCircles.get(12).display(male, (numberOfMaleStudentsInEachDepartment.get("French") /4) *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
    setText("Males in French", numberOfMaleStudentsInEachDepartment.get("French"), 12);

    mainCircles.get(13).display(female, (numberOfFemaleStudentsInEachDepartment.get("French") /4) *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
    setText("Females in French", numberOfFemaleStudentsInEachDepartment.get("French"), 13);

    popMatrix();
  } else if (mainCircles.get(16).overlaps()) {

    pushMatrix();
    translate(width/2, height/2);
    mainCircles.get(12).display(male, (numberOfMaleStudentsInEachDepartment.get("Latin") /4) *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
    setText("Males in Latin", numberOfMaleStudentsInEachDepartment.get("Latin"), 12);

    mainCircles.get(13).display(female, (numberOfFemaleStudentsInEachDepartment.get("Latin") /4) *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
    setText("Females in Latin", numberOfFemaleStudentsInEachDepartment.get("Latin"), 13);

    popMatrix();
  }
}

void drawMathDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < mathCircles.size ()) {
    if (mathCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(mathCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(mathCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(mathCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(mathCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawArtDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < artCircles.size ()) {
    if (artCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(artCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(artCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(artCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(artCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawPlayDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < playCircles.size ()) {
    if (playCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(playCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(playCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(playCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(playCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawScienceDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < scienceCircles.size ()) {
    if (scienceCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(scienceCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(scienceCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(scienceCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(scienceCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawLitDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < litCircles.size ()) {
    if (litCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(litCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(litCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(litCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(litCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawElectiveDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < electiveCircles.size ()) {
    if (electiveCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(electiveCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(electiveCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(electiveCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(electiveCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}
void drawExtraDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < extraCircles.size ()) {
    if (extraCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(extraCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(extraCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(extraCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(extraCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

//Level 4 - Language

void drawSpanishDepartmentCourses() {
  int i=0;
  while (i < spanishCircles.size ()) {
    pushMatrix();
    translate(width/2, height/2);
    spanishCircles.get(i).display(spanish, 250*cos((TWO_PI/departmentCircles.get("Spanish").size() *i)), 250*sin((TWO_PI/departmentCircles.get("Spanish").size() *i))); 
    setSpanishText(data.getRow(spanishCircles.get(i).getID()).getString("Course"), data.getRow(spanishCircles.get(i).getID()).getInt("Total Males") + data.getRow(spanishCircles.get(i).getID()).getInt("Total Females"), i);
    popMatrix();
    i++;
  }
}

void drawFrenchDepartmentCourses() {
  int i=0;
  while (i < frenchCircles.size ()) {
    pushMatrix();
    translate(width/2, height/2);
    frenchCircles.get(i).display(french, 250*cos((TWO_PI/departmentCircles.get("French").size() *i)), 250*sin((TWO_PI/departmentCircles.get("French").size() *i))); 
    setFrenchText(data.getRow(frenchCircles.get(i).getID()).getString("Course"), data.getRow(frenchCircles.get(i).getID()).getInt("Total Males") + data.getRow(frenchCircles.get(i).getID()).getInt("Total Females"), i);
    popMatrix();
    i++;
  }
}

void drawLatinDepartmentCourses() {
  int i=0;
  while (i < latinCircles.size ()) {
    pushMatrix();
    translate(width/2, height/2);
    latinCircles.get(i).display(latin, 250*cos((TWO_PI/departmentCircles.get("Latin").size() *i)), 250*sin((TWO_PI/departmentCircles.get("Latin").size() *i))); 
    setLatinText(data.getRow(latinCircles.get(i).getID()).getString("Course"), data.getRow(latinCircles.get(i).getID()).getInt("Total Males") + data.getRow(latinCircles.get(i).getID()).getInt("Total Females"), i);
    popMatrix();
    i++;
  }
}


//level 4 - Language Male and Female

void drawSpanishDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < spanishCircles.size ()) {
    if (spanishCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(spanishCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(spanishCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(spanishCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(spanishCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawFrenchDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < frenchCircles.size ()) {
    if (frenchCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(frenchCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(frenchCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(frenchCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(frenchCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void drawLatinDepartmentCoursesMaleAndFemale() {
  int i=0;
  while (i < latinCircles.size ()) {
    if (latinCircles.get(i).overlaps()) {
      pushMatrix();
      translate(width/2, height/2);

      mainCircles.get(12).display(male, data.getRow(latinCircles.get(i).getID()).getInt("Total Males") *2.5, 80 *cos((TWO_PI/8.0) *4), 80 *sin((TWO_PI/8.0) *5) );
      setText("Males", data.getRow(latinCircles.get(i).getID()).getInt("Total Males"), 12);

      mainCircles.get(13).display(female, data.getRow(latinCircles.get(i).getID()).getInt("Total Females") *2.5, 80 *cos((TWO_PI/8.0) *8), 80 *sin((TWO_PI/8.0) *8) );
      setText("Females", data.getRow(latinCircles.get(i).getID()).getInt("Total Females"), 13);

      popMatrix();
    }
    i++;
  }
}

void mouseClicked() {
  if (view==3) {
    if (mainCircles.get(14).overlaps()) {
      view=11;
    } else if (mainCircles.get(15).overlaps()) {
      view=12;
    } else if (mainCircles.get(16).overlaps()) {
      view=13;
    }
  } else {
    if (mainCircles.get(0).overlaps()) {
      view=1;
    } else if (mainCircles.get(3).overlaps()) {
      view=2;
    } else if (mainCircles.get(4).overlaps()) {
      view=3;
    } else if (mainCircles.get(5).overlaps()) {
      view=4;
    } else if (mainCircles.get(6).overlaps()) {
      view=5;
    } else if (mainCircles.get(7).overlaps()) {
      view=6;
    } else if (mainCircles.get(8).overlaps()) {
      view=7;
    } else if (mainCircles.get(9).overlaps()) {
      view=8;
    } else if (mainCircles.get(10).overlaps()) {
      view=9;
    } else if (mainCircles.get(11).overlaps()) {
      view=10;
    }
  }

  if (view <=10 && view != 1 ) {
    if (mainCircles.get(18).overlaps()) {
      view=1;
    }
  } else if (view >=10) {
    if (mainCircles.get(19).overlaps()) {
      view=3;
    }
  } else if (view == 1) {
    if (mainCircles.get(17).overlaps()) {
      view=0;
    }
  }
  println(view);
}