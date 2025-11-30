

# login_radio_buttons_forms.dart
no need to use Align widget...while column has (CrossAxisAlignment.start) 
قللت عدد الويدجات و طلعنا نفس النتيجه برضو
بدل ال Align نستعمل ال cross axis alignment ف ال column

# main.dart
AuthScreen() just call AuthBody() 
ال authScreen بينادى على ال authBody الى هو جوا كل الداتا بتاعه الصفحه 
مزودين فايل من غير داعى فا هنادى على الAuthBody مره واحده 
استخدمى ال AuthBody مكان ال AuthScreen 


# auth_sections_type
لما بنضغط على register ال select بيرجع تاني لكلمه login بسبب ال rebuild الى بيحصل لما بنعمل call ل ال setState
هنطلب variable ل ال widget دى سميه initIndex مثلا 
ولما انادى عليها من ال view بتاع ال login ياخد قيمه 0 
ولو من view ال register ياخد قيمه 1

تانى نقطه مش محتاجين tabController نقدر نستغنى عنه 
و نعمل مكانه variable int
int selectedIndex = 0 ;
و ف ال initState 
هتساوى ال selectedIndex ب ال initIndex


# forget_password_screen 
الاسكرينه مش ظاهره 
مفيش داعى ل ال stack كذالك الابقونه بتاعه اليوزر الى موجوده!


# forget_password_body.dart
ما ينفعش ناخد object جوا ال build method 
بيتنادى عليها اكتر من مره و فى كل مره بيتعمل object جديد 
خليها stateFullWidget بدل stateLess
بدل ال Align نستعمل ال cross axis alignment ف ال column





