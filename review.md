
last review points




# dio_helper.dart
ضيفى ال interceptor ل dio
دا باختصار بيظهر ليكى ف الرن تحت كل حاجه عن ال api الى بترن 
و ال request و ال response الى راجع و سواء جابت success او لا 
دورى بس ازاى تضيفى ال LogInterceptor ل dio 

لو لسا ما عملتيش اكونت جربى الاكونت دا تعملى بيه login و تستخدميه بعدين طول ما انتى ف المشروع
email => testityyy@gmail.com
password => P@ssw0rd


# login_body.dart and register_form.dart
خليها stateFull


# auth_cubit.dart
بالنسبه ل deviceToken and macAddress الاتنين واحد عامه

دول هيجو ب استخدام باكدج الفاير بيز
دورى بس ازاى تجيبى ال deviceToken 
هى function عايزك تضيفها ف class 

- هتعملى folder جديد ف ال core اسمه helpers
- هتعملى class سميه device_helper
- جوا ال class ضيفى ال function و خليها static و استدعيها منه 

device token 
اغلبيه الاوقات  فايدته ان الباك اند بيحتاجه علشان يبعت اشعارات من عنده ل اليوزر 



# general 
وقت ما ال api بيتعمل ليها call عايزين حاجه تبين ل اليوزر ان فى اكشن حصل او يستنى شويه مثلا 
علشان يعرف ان الريكوست اتبعت سواء بقى login او register او اين كان بعدين 
مثلا ف حاله ال register 
لما اليوزر يضغط على الزار يظهر مكانه loading indicator مثلا 
خلى الزرار جوا blocBuilder من نوع ال authCubit 
لو هو ف حاله ال loading يظهر ال indicator غير كدا الزرار يفضل ظاهر عادى 



# main.dart  => معلومه صغيره بس
ف حاله لو فى cubit او بلوك معمول و هحتاجه فى اكتر من صفحه و فى اكتر من مكان
بدل ما كل صفحه هنفضل نعمل ليها blocProvider
استعملى multiBlocProvider ف ال main
(على ال material app )
بتدى ليه ال providers اكتر من بلوك عادى
و مكان ما انتى عايزه تستعملى اى بلوك منهم هتحطى بس blocBuilder او blocListener
ساعتها بيكون البلوك دا على مستوى التطبيق كله

دى بس معلومه مش اكتر علشان لو احتاجتيها فيما بعد قدام







# search_bar.dart
- مفيش shadow ل التيكست فيلد 
- شيلى ال shadow خالص كذالك ال row و ال expanded


# profile_screen.dart
لما الكيبورد بتتفتح الاسكرين بتضرب overflow -
خلى ال scaffold جوا GestureDetector بحيث لما اضغط فى اى مكان الكيبور تتقفل  -
- خلى ال logout و ال delete ف ال bottomNavigationBar

# profile_image.dart
- خلى  الايقونه لما اضغط عليها  اقدر اعمل pick ل صوره......لو بترنى emulator نزلي عليه اى صوره من كروم علشان تعرفى تجربى









# wallet_balance_card.dart
شيلى ال width
و بدالها  alignment: Alignment.center,


# charge_wallet_bottom_sheet.dart and bezt_points_balance.dart
لما بفتح الكيبورد بيغطى على ال bottom sheet
خلى ال bottom sheet يترفع كله لما الكيبورد تتفتح

# wallet_screen.dart
خليها stateful


# vip_bottom_sheet.dart

شيلى ال singleChild و خلى ال padding جوا ال listView وتكون بتسكرول عادى


 # gift_card_widget.dart
استعملى نفس ال card ف صفحه ال giftCards و my gift cards

# SubscriberGiftCardDetails page
زودى bool اذا كانت ال gift card خاصه ب اليوزر ولا لا 
bool isMyGiftCard 
لو ب true تظرى الباركود و الكوبون و تغيرى ال title 
false >> نفس التفاصيل من غير الباركود و الكوبون و زرار الدفع

# payment_bottom_sheet.dart
لما يكون فى طريقه دفع select زرزا process payment يكون ظاهر 
زودى دا


# gift_card_widget.dart 
line 14
شيلى ال width
line 82
شيلى ال padding و استعملى margin جوا ال container 
خلى الصوره cover 
شيلى ال width
 














# orders and product details 
مفيش اخطاء او حجات عايزه تتعدل كله تمام...

# map_picker_widget.dart

1. flutter_map: ^7.0.0
     latlong2: ^0.9.1
مش نحتاج الاتنين دول
2. استخدمى flutter_google_mpa package >> لو هتستعملى الاستاك خلى الماب جوا sizedBox واخدارتفاع و عرض الشاشه كلها ب ال MediQuery
   width: MediaQuery.sizeOf(context).width,
   height: MediaQuery.sizeOf(context).height,
3. انا ضفت ال map_api key ف فايل ال AndroidManifest.xml
4. in android folder >> app  >> build.gradel.kts
غيرى ال minSdk جوا defaultConfig ل 21
5. رنى من الاول او امسحى التطبيق ورنى من الاول
 






# more_screen.dart
 add address list page navigator function to the short cut item
 


# new_address_form.dart
onTap on text field did not work
 خلى ال textFiled جوا AbsorbPointer و خلى absorb ب true

# map_picker_widget.dart
الماب بتضرب 

لو ما عرفتيش تحليها جربى تستعملى GoogleMpa بدل Flutter Map

 add this in android manifest inside application tag
 android:hardwareAccelerated="true"
 <meta-data
 android:name="com.google.android.geo.API_KEY"
 android:value="AIzaSyBndNTAgAxPYhF2QxY4rxC9x7v1GKNp1W0" />
دا علشان ال map تظهر 

 # product_details
use customScrollView to apply sliver app bar 

# product_details_info.dart >> line 128 
 remove width: double.infinity  
ال row بياخد كل المساحه المتاحه بالطول









# filter_side_menu.dart
wrap singleChild with Column then wrap with expanded below expanded the buttons "confirm" and reset 
خلى ال singleChild جوا Column و بعدها خلى ال singleChild ف expanded و تحت ال expanded ضيفى ال row الى فيه ال buttons 
دا هيخليهم ف الاخر و بقيه الديزاين يسكرول عادى

مفيش داعى ل container و نديله width ال row كدا كدا هيخليه ياخد ال width كله






# home_screen.dart

1. view throw exception
   ======== Exception caught by widgets library =======================================================
   The following assertion was thrown while applying parent data.:
   Incorrect use of ParentDataWidget.
 هو ال design ظاهر بس وقت ما نطلع نسخه او نرفع نسخه release ال design كله هيختفى
 فى expanded او Flexible موجوده ف مكان غلط

2. there is padding inside singleChildScrollView
3. جزء ال vip مش صوره...container و اللون بتاعه graidiant
4. 
كنا قولنا ما ينفعش object جوا ال build كذالك ال variable ما ينفعش نعمل اى object or variable جوا ال build الا لو cubit


# categories_gridview.dart
نفس الكلام ما ينفعش variable جو ال build


# search_bar.dart
ليه textField من الاول و انتى عامله واحد custom جاهز.!
اطلبى الحجات الزياده nullable عادى 
لو احتجتى تستعملبها..تمام 
طالما فى حاجه general او على مستوى التطبيق كله او اغلبيته الاحسن ان بلاش نعملها من الاول طالما custom من الاول...نعدل على ال  custom من غير ما الباقى يتاثر 



# categories_section.dart
استعملى container بدل ال card هتديكى تحكم اكبر ب ال decoration
و مفيش radius من كل الجوانب

# category_item_circle 
مش ضرورى اوى نطلب الحجات المختلفه سواء صوره او تيكست..الخ
لو حابه تعملى نفس الشكل بالظبط تقدرى تستخدمى model افضل بدل ال map و نطلب model ل item بدل ال parameters دول كلهم


# vip_offers_tab.dart
نفس الكلام بالنسبه ل vip section


# more_screen.dart
1. الاحسن نفصل ال buildGrid ف stateLessWidget لوحدها 
2. بدل ما نعمل check و يكون فى اتنين gridView نقدر نستعمل gridView عاديه و نفس الكلام نطلب ليها list ال items


#offers_screen
سيبى ال gridView تعمل scroll عادى ولو هى موجوده جوا Column خليها جوا expanded ف ال column 
مش هنحتاج كل ال singleChild دول


# app_layout_screen.dart
floatActionButton not the same as in Screen
  # custom_nav_item
خلى ال icon جوا container و صغرى الحجم شويه 
لما يبقى select نغير لون ال container لو لا ياخد Colors.transparent
و جربى تستخدمى باكدج animatedBottomNavigationBar

primaryColor >> Color(0xFFC6161D)
 















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
خليها stateFullWidget بدل st