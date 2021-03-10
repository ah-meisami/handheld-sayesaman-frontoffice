
/* Table structure [tblCustomerDesc] */
CREATE TABLE [tblCustomerDesc] (
  [CustID] integer NOT NULL PRIMARY KEY, 
  [CustType] integer, 
  [FirstName] nvarchar(50) COLLATE NOCASE, 
  [LastName] nvarchar(50) COLLATE NOCASE, 
  [FatherName] nvarchar(50) COLLATE NOCASE, 
  [PlaceSodor] nvarchar(50) COLLATE NOCASE, 
  [DateSodor] char(10) COLLATE NOCASE, 
  [ShomareSabt] nvarchar(50) COLLATE NOCASE, 
  [CodeMeli] nvarchar(50) COLLATE NOCASE, 
  [CodePosti] nvarchar(50) COLLATE NOCASE, 
  [AddressPath] integer, 
  [Address] nvarchar(250) COLLATE NOCASE, 
  [Tel] nvarchar(50) COLLATE NOCASE, 
  [Mobile] nvarchar(50) COLLATE NOCASE, 
  [Web] nvarchar(50) COLLATE NOCASE, 
  [Email] nvarchar(50) COLLATE NOCASE, 
  [CompanyName] nvarchar(150) COLLATE NOCASE, 
  [CompanyType] integer, 
  [Activity] nvarchar(150) COLLATE NOCASE, 
  [CommertialCode] nvarchar(50) COLLATE NOCASE, 
  [IsSupplier] smallint, 
  [DSID] integer, 
  [CreateDate] char(10) COLLATE NOCASE, 
  [CustState] integer, 
  [UserID] integer, 
  [MalekiatType] integer, 
  [SamanehCode] nvarchar(50) COLLATE NOCASE, 
  [Sex] integer, 
  [TahsilatID] integer, 
  [ReshteTahsili] nvarchar(50) COLLATE NOCASE, 
  [EsteghrarPlace] integer, 
  [AboutCustomer] nvarchar COLLATE NOCASE, 
  [CountPerson] nvarchar(50) COLLATE NOCASE, 
  [WorkTime] nvarchar(50) COLLATE NOCASE, 
  [IranPerent] nvarchar(50) COLLATE NOCASE, 
  [CustTypeID] nvarchar(50) COLLATE NOCASE);

/* Data [tblCustomerDesc] */
insert into [tblCustomerDesc] values(1, 2, 'مدیر', 'سیستم', 'father', '', '1366/06/20', '', '00794726  ', null, null, 'مدیریت نرم افزار', null, '091281              ', '', 'ronal', '', 1, '', 'code eco            ', 1, null, '2013-06-10', 0, null, 1, '45568', 1, 2, 'com', 2, 'asdasdasdas', null, null, '', '10,13');
insert into [tblCustomerDesc] values(20, 1, 'test', 'پایدار بتن', 'amir', '3', '1391/91/91', '1         ', '          ', null, null, '', null, '912                 ', '', '', 'testi', 1, 'ساخت بتن آماده و دیوار پیش ساخته و کفپوش های بتنی', '112233              ', 1, -1, '1390/10/10', 0, null, 1, '123', 1, 1, 'rr', 2, 'تست', '3', '12', '0', '13,10,9,3,2,1');
insert into [tblCustomerDesc] values(22, 2, '', 'عالی درب تهران', null, 'ایران -> استان تهران -> شهریار', '1111/11/15', '5         ', '5         ', null, null, '', null, null, '5', '5', 'عالی درب تهران', 6, 'دربهای ضد سرقت  ،  ضد حریق ،  ضد اب  و   دربهای داخلی', '           asdfasd  ', 1, 258, '1391/12/04', 0, null, 1, '5', null, null, null, null, '1111', '5', '5', '5', '13,10,9,3,2,1');
insert into [tblCustomerDesc] values(23, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نیاوران', null, 'دربهای ضد سرقت و داخلی', null, 1, -1, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(24, 2, '', 'روشنا     ( انرژی  سامان  پردیس )', null, null, null, null, null, null, null, '', null, null, null, null, 'روشنا', null, 'درب و پنجره  پلیمری  یو پی وی سی  و  آلومنیوم  نرمال', null, 1, -1, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(25, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.winpardis.ir', '', 'پنجره عایق پردیس', 1, 'درب و پنجره یو پی وی سی  و  شیشه دو جداره  و  چند  جداره', '                    ', 1, -1, '1391/12/04', 0, null, 1, '', null, null, null, null, '', '', '', '', '1');
insert into [tblCustomerDesc] values(26, 2, '', 'نوین حصار', null, '', '    /  /  ', '          ', '          ', null, null, 'نرده فلزی صنعتی و پیش ساخته', null, null, 'www.novinhesar.com', '', 'نوین حصار', 1, 'نرده و حفاظ  ', '                    ', 1, 258, '1391/12/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(27, 2, '', 'گسترش پنجره کویر ', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.k.samair.ir', '', 'گسترش پنجره کویر ', 1, 'درب و پنجره نوین آلومنیوم ،  شیشه دوجداره ترمال بریک', '                    ', 1, -1, '1391/12/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(28, 2, '', 'فریم سازه', null, null, null, null, null, null, null, '', null, null, null, null, 'فریم سازه', null, 'درب و پنجره    یو  پی  وی  سی', null, 1, -1, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(29, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شرکت تولیدی صنعتی الان', null, 'درب و پنجره الومنیوم و   یو پی وی سی  و  شیشه دوجداره', null, 1, -1, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(30, 2, '', 'مسین در', null, null, null, null, null, null, null, 'عایق صوت و حرارت', null, null, null, null, 'مسین در', null, 'دربهای ضد سرقت ', null, 1, -1, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(31, 2, '', 'پروفیل گلستان', null, '', '    /  /  ', '          ', '          ', null, null, 'گرگان  تولید  پروفیل                                       اقای  احدی   تولید  درب  و  پنجره  و  شیشه  دو  جداره', null, null, 'www.akproile.com', '', 'پروفیل گلستان', 1, 'در و پنجره  یو پی وی سی    و   شیشه   دوجداره', '                    ', 1, -1, '1391/12/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(32, 2, '', 'آتیس در', null, '', '    /  /  ', '          ', '          ', null, null, 'وارد کننده از چین', null, null, 'www.atisdoor.com', '', 'اتیس در', 1, 'دربهای ضد سرقت ', '                    ', 1, 258, '1391/12/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(33, 2, '', 'نوین عایق انرژی', null, null, null, null, null, null, null, 'فروشنده شیشه دو جداره', null, null, null, null, 'نوین عایق انرژی', null, 'درب و پنجره   یو پی وی سی  ', null, 1, 258, '1391/12/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(34, 2, '', 'گروه بازرگانی  آریانا', null, '', '    /  /  ', '1         ', '          ', null, null, 'وارد کننده از ترکیه', null, null, 'esakht.com', '', 'گروه بازرگانی  اریانا', 1, 'دربهای مدرن ساختمانی  ضد سرقت', '                    ', 1, -1, '1391/12/05', 0, null, 1, '                  5', null, null, null, null, '1', '', '', '', '');
insert into [tblCustomerDesc] values(35, 2, null, null, null, null, null, null, null, null, null, 'نماینده اثار درب سلماس', null, null, null, null, 'گروه بازرگانی آریانا', null, 'دربهای ضد سرقت و ضد حریق', null, 1, -1, '1391/12/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(36, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'تولید کننده در و پنجره                                     نماینده فروش شیشه دوجداره', null, null, 'royanwin.ir', '', 'رویان', 1, 'در و پنجره  یو پی وی سی', '                    ', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(37, 2, '', 'آذین نمای ایرانیان', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'azinnamairaniian.com', '', 'آذین نمای ایرانیان', 1, 'درب و پنجره   یو پی وی سی  ', '                    ', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, 'شرکت اذین نمای ایرانیان تولید کننده در و پنجره های دو جداره  U P V C   با تکنولوژی شرکت مولر آلمان میباشد .  امروزه  در  و پنجره های دو جداره فراتر از باز و بسته شدن  کارایی داشته و موجب ایمنی راحتی و صرفه جویی در مصرف انرزی نیز میشود.                                                                                     شرکت آذین نمای ایرانیان جهت تعویض پنجره های قدیمی  ( آهنی  آلومنیومی  چوبی  ) در مجتمع های تجاری . مراکز اداری . برجهای مسکونی . هتلها . مهمانسراها . و منازل شخصی طرح آسایش آذین خود را ارائه نموده است .   روش کار بدین گونه است که ابتدا پروفیل قدیمی   (  آهنی . آلومنیومی . چوبی )  برش خورده  و  فقط چهارچوب آن باقی میماند .  سپس پنجره  یا درب جدید بر روی این چهار چوب قرار میگیرد .', null, null, null, null);
insert into [tblCustomerDesc] values(38, 2, '', 'گروه فنی مهندسی تبریز صدف', null, '', '    /  /  ', '          ', '          ', null, null, 'محصولات  پروفیل  یو پی وی سی  سیندژ    یراق آلات  شیشه دوجداره', null, null, 'www.tabrizsadaf.com', '', 'گروه فنی مهندسی تبریز صدف', 1, 'تولید درب و پنجره  با پروفیلهای  اکپا و سیندژ', '                    ', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(39, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آذین نمای فرزانه', null, 'درب و پنجره آلومنیوم و فریم لس', null, 1, -1, '1391/12/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(40, 2, '', 'نوین پنجره مارلیک', null, null, null, null, null, null, null, '', null, null, null, null, 'نوین پنجره ماتیک', null, 'درب و پنجره الومنیوم   و  نما الومنیوم', null, 1, -1, '1391/12/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(41, 2, '', 'پایا در', null, '', '/  /      ', '42801', '', null, null, 'مجری  دربهای اتوماتیک،کرکره برقی پارکینگی،کرکره برقی فروشگاهی،درب شیشه ای درب لولایی ،درب ریلی', null, null, 'www.payadoor.com', 'paya.door@yahoo.com', 'درب های اتوماتیک پایادر', 1, 'دربهای اتوماتیک', '', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, 'شرکت کلون در تک آریا با بیش از 10 سال سابقه فعالیت فروش و خدمات پس از فروش دربهای اتوماتیک و اتوماسیون ورودی بر روی کلیه ساختمانها و مراکز مهم تجاری و اداری در ایران از سال 1380 نمایندگی انحصاری شرکت دورما (Dorma) آلمان در ایران را اخذ نموده است و اکنون شریک تجاری درب های اتوماتیک کالایی کاملا تخصصی است، ارائه خدمات برای این کالای تخصصی نیز نیازمند متخصصین ورزیده و کار آمد می باشد. توجه به این امر سبب شد تا شرکت کلون در تک آریا که همواره ارائه خدمات هرچه بهتر به مشتریان را سرلوحه کار خود قرار داده است با تاسیس شرکت کلون سرویس آریا گام دیگری در جهت رضایتمندی هرچه بیشتر مشتریان بردارد.', '', '', '', '');
insert into [tblCustomerDesc] values(42, 2, '', 'پارس درب', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.parsdoor.com', '', 'پارس درب', 1, 'ساخت دربهای ضد سرقت', '                    ', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(43, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایمن سازه', null, 'سازنده حفاظ آکاردیونی', null, 1, -1, '1391/12/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(44, 2, null, null, null, '', '    /  /  ', '         6', '          ', null, null, '', null, null, '', '', 'تیوا', 1, 'نصب انواع جکهای برقی و کرکره  و                  دربهای اتوماتیک', '                    ', 1, -1, '1391/12/05', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(45, 2, '', 'پرشیا در   پارت', null, null, null, null, null, null, null, 'نماینده  انحصاری  دربهای اتوماتیک  geze  آلمان', null, null, null, null, 'پرشیا در   پارت', null, 'دربهای کشویی خطی  تلسکوپی  زاویه ای  گرد لولایی  تاشو  گردان', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(46, 2, '', 'پنجره تاپ', null, null, null, null, null, null, null, '', null, null, null, null, 'پنجره تاپ', null, 'درب و پنجره  یو پی وی سی  و توری های پلیسه ای  جدید', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(47, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تک سوین  در', null, 'تولید کننده  دربهای  ضد سرقت  mdf  و  hdf    ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(48, 2, '', 'دورال', null, null, null, null, null, null, null, 'مجری نمای کامپوزیت', null, null, null, null, 'دورال', null, 'در و پنجره الومنیومی   و  یو پی وی سی  ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(49, 2, '', 'دیوا بابل   ', null, null, null, null, null, null, null, 'برای در و پنجره دو جداره ', null, null, null, null, 'دیوا بابل   ', null, 'تولید کننده پروفیل   یو پی وی سی                ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(50, 2, null, null, null, 'ایران -> استان تهران -> دماوند', '    /  /  ', '8         ', '8         ', null, null, '', null, null, 'www.imengozar.com8', '8', 'ایمن گذر ', 2, 'دربهای سکشنال  زیر سقفی پارکینگی', '8                   ', 1, -1, '1391/12/06', 0, null, 1, '8', null, null, null, null, null, '8', '8', '8', '13,10,9,3,2,1');
insert into [tblCustomerDesc] values(51, 2, null, null, null, null, null, null, null, null, null, 'دربهای آپارتمانی  با روکشهای  hpl   و  pvc  و   hdf  ', null, null, null, null, 'نوید در ', null, 'دربهای ورودی ضد سرقت   ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(52, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پنجره سبز', null, 'تولید   یو  پی  وی  سی   و   شیشه دو جداره', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(53, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نوید افق شرق', null, '  یو  پی  وی  سی  و  شیشه  دو جداره', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(54, 2, null, null, null, null, null, null, null, null, null, 'دربهای اتوماتیک', null, null, null, null, 'کیمیا در  ', null, 'تولید کرکره آلومنیوم  و  گالوانیزه  دربهای زیر سقفی    ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(55, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پروفایل', null, 'توتید کننده پروفیل  یو پی وی سی                  درب  و  پنجره های  یو  پی  وی  سی            و   شیشه  دو  جداره', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(56, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فوکا  طرح سازان', null, 'دربهای ضد رطوبت  سقف  کاذب وان زیر دوشی', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(57, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایلیا دکور', null, 'دربهای پیش ساخته ضد سرقت', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(58, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیی ان  ان  چوب', null, 'تولید  دربهای  ضد سرقت', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(59, 2, null, null, null, null, null, null, null, null, null, 'پنجره آلومنیوم  شیشه دوجداره', null, null, null, null, 'نو اندیشان ', null, 'در و پنجره یو پی  وی  سی  ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(60, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'افرا در', null, 'دربهای ضد سرقت   ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(61, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'قصر فلز ', null, 'طراح و سازنده درب  نرده  و  پله حلزونی           به سبک خاص', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(62, 2, '', 'ماژول     ( گروه صنعتی شاهین سازه فجر ) ', null, null, null, null, null, null, null, '', null, null, null, null, 'ماژول', null, 'تولید کننده پروفیل   یو  پی  وی  سی   ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(63, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ویستا بست', null, 'تولید پروفیل  یو پی وی سی   ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(64, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیندیج', null, 'تولید انواع  پروفیلهای    یو پی وی سی ', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(65, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kaliteh.ir', '', 'کالیته', 1, 'تولید در و پنجره  یو پی وی سی  و  شیشه دو جداره', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(66, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.bojnourdcement.co', '', 'سیمان بجنورد', 1, 'تولید انواع سیمان پرتلند', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(67, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.sabzevarcement.ir', '', 'سیمان سبزوار', 1, 'تولید سیمان پرتلند خاکستری', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(68, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیمان قاین', null, 'تولید انواع سیمان و کلینکر', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(69, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیمان سفید تبریز', null, 'تولید سیمان سفید', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(70, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیمان شاهرود', null, 'تولید  سیمان', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(71, 2, null, null, null, null, null, null, null, null, null, 'پاکتی', null, null, null, null, 'سیمان  جوین', null, 'سیمان خاکستری تیپ 2', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(72, 2, '', '', null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(73, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1391/12/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(74, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.zabol cement.com', '', 'سیمان زابل', 1, 'انواع سیمان و کلینکر', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(75, 2, '', 'سیمان بنوید', null, '', '    /  /  ', '          ', '          ', null, null, 'سیمان رنگی شامل  8  رنگ', null, null, 'www.benvid.com', 'Info@benvid.com', 'سیمان بنوید', 1, 'سیمان سفید -  سیمان رنگی', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, 'شرکت سیمان سفید بنوید یکی از چهار واحد تولیدی سیمان سفید در کشور می باشد . محل احداث کارخانه در فاصله20 کیلومتری جنوب شهر تاریخی نائین و در مرکز جغرافیایی ایران و در استان اصفهان واقع گردیده است . ساخت کارخانه در سال 1380 آغاز و در اوایل سال 1383 به بهره برداری رسید . تجهیزات اصلی و ماشین آلات خطّ تولید مربوط به شرکت TKF آلمان بوده و قسمتی نیز ساخت داخل می باشد.
ظرفیت تولید اسمی کارخانه 600 تن سیمان در روز می باشد که در حال حاضر با توجّه به مرغوبیت معادن آهک و کائولن منطقه و پرسنل مجرّب و متعهّد ، سیمان تولیدی از نظر کیفی با بالاترین استانداردهای بین المللی مطابقت می نماید و دارای گواهی های استاندارد ملّی و ایزو 2008-9001 مدیریت کیفیت تولید می باشد .
فروش محصول تولیدی علاوه بر تأمین قسمتی از نیاز داخل به کشورهای همسایه از قبیل آسیای میانه و افغانستان و عمدتا ً به بازار هدف این شرکت، کشور عراق صادر می گردد . با عنایت به افزایش مصرف سیمان سفید در داخل و تقاضای گسترده جهت صادرات ، ارتقاء و افزایش ظرفیت تولید به میزان دو برابر تولید فعلی و جهت استفاده بهینه از سایر امکانات موجود در کارخانه، تولید ملات خشک سفید(سامیکس) و سیمان رنگی به عنوان ارکان اصلی تولید ، برنامه ریزی گردیده است .
شرکت سیمان سفید بنوید  یکی از 5 شرکت تولید کننده سیمان سفید در ایران می باشد که در مرکز نقشه  جغرافیایی کشور در استان اصفهان و 20 کیلومتری شهر باستانی نائین و منطقه بنوید قرار گرفته است.
عملیات اجرایی ساخت کارخانه از سال 1380 آغاز و در سال 1383 به بهره برداری و تولید رسید و در حال حاضر با اخذ انواع استانداردها محصولی با کیفیت و مقاومت بالا و سفیدی بالای  88درصد و سنگ آهک با بهترین  آنالیز را در سطح کشور و آسیای میانه  توزیع می کند.
بخش عمده ماشین آلات و تجهیزات کارخانه از شرکت آلمانی T.K.F.CO خریداری گردید و قسمتی از آن نیز  به دست متخصصین و تولید کنندگان داخلی ساخته شد و با نظارت عالیه مشاوران آلمانی و تلاش و جدیت کارشناسان مجرب داخلی عملیات نصب تجهیزات انجام پذیرفت.
ظرفیت اسمی تولید کارخانه روزانه 600 تن سیمان سفید می باشد ، کیفیت بالای سنگ آهک ، کائولن و سایر مواد معدنی به کار گرفته شده درتولید سیمان سفید و همچنین بهره گیری از نیروهای انسانی مجرب و کارآمد باعث شده است، که محصول تولیدی این شرکت بالاترین استانداردهای بین المللی کیفیت را کسب نماید. از زمان اجرای پروژه ساخت کارخانه تا مرحله  بهره برداری ، بعضاٌ بالغ بر 600 نفر در کارخانه شرکت سیمان سفید بنوید به فعالیت پراخته اند و در حال  حاضر کارخانه این شرکت دارای 240  نفر پرسنل در واحدهای تولید ، مکانیک ، برق دفتر فنی ، آزمایشگاه و کنترل کیفیت ، انبار فروش و اداری ، مالی می باشد  و از طرفی بالغ بر 50 نفر نیز در دفاتر این شرکت در تهران و استان اصفهان و تعداد مشابهی نیز به صورت پیمانکار و غیره به صورت غیر مستقیم در ارتباط با این شرکت مشغول فعالیت می باشند.
 واحد کنترل کیفی  کارخانه با 3 آزمایشگاه مجهز شیمی ، فیزیک  و X-RAY  با به کارگیری ماشین آلات پیشرفته و با استفاده از کادر مجرب و آموزش دیده و با کنترل ساعتی و دقیق از ورود مواد اولیه تا خروج سیمان سفید  از بارگیرخانه ، بر آن بوده و هست که سیمان تولید ی و ارائه شده به مصرف کنندگان با سفیدی بالای 90 درصد و از نظر مقاومت بالای 510 کیلو گرم بر سانتی مترمربع باشد.
در همین راستا این شرکت در اسفند ماه سال 1383 موفق به اخذ گواهینامه استاندارد سیستم مدیریت کیفیت (ISO-9001-2008 ) از شرکت D.N.V نروژ شده است. 
شرکت سیمان سفید بنوید از طریق واحد طرح و توسعه، با تحقیق در مورد بهبود محصول و افزایش راندمان  دپارتمان های تولید ، درصدد بررسی طرحهای افزایش ظرفیت و توسعه کمی وکیفی کارخانه می باشد که امید است با لطف ایزد یکتا به نتیجه برسد.
محصول تولیدی شرکت سیمان سفید بنوید علاوه بر تأمین بخشی از نیاز داخلی ، به کشور همسایه از قبیل افعانستان و عراق نیز صادر می گردد. با توجه به افزایش مصرف سیمان سفید بنوید و تقاضای گسترده جهت صادرات این محصول، افزایش ظرفیت تولید به میزان دو برابر تولید فعلی به عنوان رکن اصلی چشم انداز آینده این شرکت برنامه ریزی گردیده است.
شرکت سیمان سفید بنوید مفتخر است که پروژه تولید سیمان رنگی و ملات خشک آماده (SAMIX) را جهت ارتقاء و بهره وری در صنعت ساخت و ساز و تسهیل فرآیند مزبور و همچنین استفاده بهینه از ظرفیتهای موجود کارخانه ، در سال گذشته به مرحله بهره برداری و تولید انبوه رسانیده  و هم اکنون این محصولات در بازار قابل ارائه می باشد. 
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(76, 2, null, null, null, '', '//        ', '          ', '          ', null, null, 'پزولانی ، پرتلند  نوع 2  ف نوع  5                    سیمان چاه نفت  کلاس g', null, null, 'www.', '', 'سیمان کرمان', 1, 'تولید انواع سیمان', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(77, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'سیمان شهر کرد', 1, 'سیمان تیپ 2', '                    ', 1, -1, '1391/12/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(78, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیمان شرق', null, 'سیمان پرتلند  نوع  1  و   2  و  5  ', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(79, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'کارخانه آهک شاهرود  نوین', 1, 'آهک  بصورت پودر  ،  پاکتی و فله', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(80, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.saleh-gach .com', '', 'صالح  گچ سمنان', 1, 'تولید  گچ   سفید     ساختمای', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(81, 2, null, null, null, '', '1364/01/01', '3905', '', null, null, '', null, null, 'www.toosgypsum.com', '', 'شرکت گچ طوس', 1, 'گچ سفید  ،   گچ  خوشکار', '', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, 'شركت گچ طوس در سال 1364 با هدف تولید محصولات گچی و توسعه صنعت کشور ونیز اشتغال زایی به شماره ثبت3905 تاسيس گرديد و كارخانه با بهره گیری از ماشین آلات ودستگاههای صنعتی با ظرفيت روزانه 250 تن توليد گچ سفيد ساختماني در سال 1368 در منطقه رباط سفید (بین مشهد وتربت حیدریه) که معادن غنی گچ استان در این منطقه واقع شده است به بهره برداري رسيد .به مرور زمان تولید گچ خاکی(خوشکار) نیز آغاز گردید و در سال 1388 با اجراي طرح توسعه ، توليد كارخانه روزانه به 1000 تن افزايش يافته است. محصولات شركت گچ طوس را گچ سفيد ساختماني ، گچ خوشكار ، گچ نمونه (خاكي) و گچ سفيد ميكرونيزه تشكيل مي دهد.', '', '', '', '1');
insert into [tblCustomerDesc] values(82, 1, 'ttttttttt', 'sssssssss', '', null, '    /  /  ', '          ', '          ', null, null, 'zzzz', null, '                    ', null, '', null, null, 'wwww', '                    ', 1, 745, '1391/12/07', 0, null, null, null, 2, 1, '', 1, null, null, null, null, '9,3,2,1');
insert into [tblCustomerDesc] values(83, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'گچ شرق', 1, 'تولید کننده گچ سفید و گچ خوشکار', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(84, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گچ خراسان', null, 'گچ سفید و  گچ خاکی', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(85, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'رنگین  بارز', 1, 'تولید گچ رنگی  ،  تولید محلول سیمان رنگی', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(86, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'گچ جبل متین سمنان', 1, 'گچ سفید', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(87, 2, '', 'گچ صدف دامغان ', null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'گچ صدف دامغان ', 1, 'تولید گچ پلیمری  و  گچ  فوم', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(88, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'کناف گچ  و  ایران  گچ', 1, 'گچ سفید کاری ،  گچ  پاششی ،  بتونه  نقاشی  ،چسب  کاشی', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(89, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جمیل گچ', null, 'تولید گچ سفید ساختمانی سفید کاری', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(90, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'دیوار گچی مهر ایرانیان', 1, 'دیوار گچی', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(91, 2, '', 'گچبری  آسان', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.snnint.ir', '', '', 1, 'گچبری پیش ساخته', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(92, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'کناف ایران', 1, 'سیستم ساخت و ساز خوشک  دیوار پیش ساخته', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(93, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.adjorideal.com/', 'info@adjorideal.com', 'آجر ماشینی ایده ال', 1, 'آجر ماشینی آجر سفال', '', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(94, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'آجر سفید', 1, 'آجر ماشینی آجر سفال', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(95, 2, '', 'یزد سفالین', null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.yazdsofalin.com', '', '', 1, 'تولید کننده انواع  سفالهای  ساختمانی', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(96, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'آجر ماشینی امین اسفراین', 1, 'آجر فشاری  ،  نما ،  پنل آجری سبک  ،           بلوک سقفی  ،  کرومیت سفال سقفی', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, 'این شرکت از سال 1383 بنام کوره آجرفشاری سید مرتضی اقدام به فعالیت نموده است   و  در سال  1385  با نام شرکت آجر ماشینی   امین  اسفراین   مجوز تولید دریافت  نمود   این شرکت در سال  1386  در راستای حمایت از خودکفایی استان در زمینه تولید بلوکهای سقفی اقدام به احداث خشک کن  و  خرید یک دستگاه  اکسترو در  تولید آجر از کشور ایتالیا  و  راه اندازی آن در سایت شرکت را نمود که از نظر تولید بهترین کیفیت تنوع بیش از  13  نوع محصول ازجمله کرومیت  60   و   66  را در استان دارد .', null, null, null, null);
insert into [tblCustomerDesc] values(97, 2, null, null, null, '', '//        ', '          ', '          ', null, null, '', null, null, 'www.', '', 'گسترش سفالین سبزوار', 1, 'آجر سفال  آجر ماشینی  آجر نما', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(98, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گسترش سفالین سبزوار', null, 'آجر سفال   ،  آجر نما', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(99, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر ماشینی دامغان', null, 'بلوک سقفی دیواری تیغه ای آجر سفالی ', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(100, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر اصفهان  فتاحی', null, 'تولید انواع آجر نما و بلوک', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(101, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر شاهین', null, 'تولید آجر سفال', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(102, 2, null, null, null, '', '/  /      ', '', '', null, null, 'استحکام ، ظریف ، وزن سبک ، درجه شوره زدگی صفر', null, null, 'ww.neginkavir.com', 'neginkavire1375@gmail.com', 'سفال نگین کویر (صبوری)', 1, 'تولید آجر سفال ،بلوک سبک هبلکس', '', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(103, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.nasouzazarbayjan.com', '', 'نسوز آذربایجان', 1, 'آجر نما   و   آجر نسوز', '                    ', 1, -1, '1391/12/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(104, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجموعه کارخانه جات سفال الله دادی', null, 'آجر سفال ', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(105, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سفالین آجران یزد', null, 'تولید آجر سفال', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(106, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نگین یزد', null, 'آجر', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(107, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر قپانچی', null, 'آجر تیغه  10  و  15', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(108, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر دوشین', null, 'آجر ماشینی  4  ،  5  ،    5.5  سانتی                 10سوراخ', null, 1, -1, '1391/12/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(109, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر ثبات', null, 'آجرسفال   سقفی  و   دیوار   7  و  10  و  15', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(110, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر پر جلا', null, 'سفال دیوار و  سقفی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(111, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سفال طبرستان', null, 'آجر سفال سقفهای  شیبدار', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(112, 2, '', 'دانیال و تینا    سفال اصفهان', null, '', '/  /      ', '', '', null, null, 'محصولات مجتمع کارنجات دانیال و تینا سفال اصفهان با انواع سبک های معماری و طراحی داخلی سازکار بوده و تنوع بالای آن ها این امکان را به طراحان میدهد تا معماری و نمای داخلی و خارجی ساختمان را بر اساس سلایق متنوع خریداران طراحی کنند.', null, null, 'www.tinasofal.com', 'info@tinasofal.com', 'مجتمع کارخانجات دانیال و تینا سفال اصفهان', 1, 'تولید کننده انواع آجرهای نما (زرد، قرمز، نسوز، شیل ، خاک رس و ..)', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, 'مجتمع کارخانجات دانیال و تینا سفال اصفهان مجهز به آزمایشگاه مکانیک و کانی شناسی خاک بوده و از استانداردهای موسسه استاندارد و تحقیقات صنعتی ایران پیروی می کند.', '', '', '', '');
insert into [tblCustomerDesc] values(113, 2, '', 'آجر نقش جهان  اصفهان', null, null, null, null, null, null, null, '', null, null, null, null, 'آجر نقش جهان', null, 'آجر نما', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(114, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آجر نقش جهان اصفهان', null, 'تولید آجر نما', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(115, 2, '', 'مجتمع سفالیران یزد', null, null, null, null, null, null, null, 'بلوک تیغه (ساده یونولیت دار )                        بلوک سقفی ( ساده یونولیت دار )                  ببلوک   c l c   )ساده صاف زبانه دار                بلوک  لیکا', null, null, null, null, 'مجتمع سفالیران یزد', null, 'آجر سفال', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(116, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.ajoreazadi.ir', 'info@ajoreazadi.ir', 'کارخانه تولیدی آجر آزادی', 1, 'تولید کننده انواع آجرهای نما، آجرهای نسوز ، نمای نسوز، نمای رنگی و ده سوراخه چهار طرف نما', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, 'آجر آزادی در سال  1365 در منطقه صنعتی ورامین  در زمینی به مساحت 20000  متر مربع و به همت جناب آقای صالحی به عنوان مدیر عامل و جناب آقای مظلوم به عنوان مدیر فروش آغاز به فعالیت نموده است  . این شرکت با بهره برداری از مواد درجه یک معادن ممتاز کشور محصولاتی متنوع تولید و همواره سطح کیفی آنرا مطابق با استاندارد ملی و بین المللی بالا ببرد   .   مدیریت و پرسنل خلاق این گروه با استفاده از امکانات خود و درک کامل از نیازهای مشتریان و مصرفکنندگان آمادگی کامل تولید انواع محصولات جدید و قبول سفارشات و پیشنهادات جهت تولید از طرف شما عزیزان میباشد  .

محصولات این کارخانه شامل :1 -  آجرهای نمای نسوز  شامل نماهای انگلیسی  ،  امریکایی  (  شاموتی )  ،  نماهای ترکیبی 2-    آجرهای نمای قرمز   ، پوست پیازی  ،  پرتقالی  و  ......    3  -آجر نمای ده سوراخه  قرمز چهار طرف نما', '', '', '', '1');
insert into [tblCustomerDesc] values(117, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.ghasremosaic.com', '', 'گروه صنعتی قصر موزائیک', 1, 'انواع موزاییکهای کف و نما ،  کف پوشهای بتنی و بلوک ها', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(118, 2, null, null, null, null, null, null, null, null, null, 'یزد موزائیک تنها تولید کننده موزائیک طرح گرانیت با مهر استاندارد مجهز به ماشین آلات تمام اتوماتیک ، یزد موزائیک 100% کونیا ، بدون تابیدگی و تلورانس ابعاد در سایزها و طرح های متنوع ، یزد موزائیک تولید شده با مواد اولیه مرغوب توسط پرس', null, null, null, null, 'یزد موزائیک', null, 'تولید کننده موزائیک طرح گرانیتی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(119, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.ghasrekavir.com', '', 'کارخانه سنگبری قصر کویر بشرویه', 1, 'تولیدکننده و فروشنده انواع سنگ های ساختمانی و آنتیک', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(120, 2, '', 'صنایع سنگ  رضا', null, '', '/  /      ', '', '', null, null, '', null, null, 'www.soleymani.com', 'info@rezasoleymani.com', 'صنایع سنگ رضا سلیمانی', 1, 'تولید سنگهای ساختمانی ،گرانیت ،مرمریت ،تراورتن،چینی هوشیار', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(121, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گوهر سنگ ثنایی', null, 'سنگ ساختمانی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(122, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نگین سنگ کویر', null, 'سنگ ساختمانی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(123, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع سنگ گسترش', null, 'تولید و واردات سنگهای خارجی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(124, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ ایران برش', null, 'تولید مرمریت ، رویال ،کرم خوی  ،  مرمریت رویال طلایی  خوی ،  رویال کرم صورتی', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(125, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ زمرد', null, 'مرمریت آباده', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(126, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ و ابزار انوشیروان', null, '', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(127, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگبری آپادانا', null, 'تولید گرانیت نهبندان ، خرم دره  ، بروجرد', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(128, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگبری ایران کار', null, 'تولید مرمریت آباده  ، مرمریت کیانی اقبال', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(129, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگبری بهار', null, 'مرمریت کاشمر', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(130, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگبری مروارید', null, 'تراورتن ،  دماوند  ،  مرمریت', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(131, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگاب ماکو', null, 'تراورتن  سنگاب ماکو', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(132, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ حمید', null, 'مرمریت  ،  تراورتن', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(133, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دنیای مهرگان', null, 'تولید سنگ  گرانیت   سفید', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(134, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ حایر', null, 'تولید سنگهای ساختمانی آنتیک  ،  قیچی  ،   چرمی  ،  تایل  و  اسلپ', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(135, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگ هلال', null, 'تولید کرپهای صادراتی  و  داخلی  ،  مرمریت امواج یزد  ،   فراوری  سنگ تایل  مرمریت ', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(136, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنگبری ایران مرمر', null, 'تولید سنگهای  تزیینی  ،  گرانیت  ،  مرمریت  ،  تراورتن  ،  مرمر اسلپ  و  تایل', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(137, 2, '', 'سنگ صخره', null, '', '/  /      ', '', '', null, null, '', null, null, '', 'sakhre_zamanian@yahoo.com', 'شرکت تولیدی سنگ صخره', 1, 'سنگ ساختمانی', '', 1, -1, '1391/12/08', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(138, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع سنگ رضا', null, 'تولیدی سنگهای گرانیت ، مرمریت ، تراورتن ،  چینی هشیار', null, 1, -1, '1391/12/08', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(139, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.shakerstone.com', 'info@shakerstone.com', 'مجتمع صنایع معدنی شاکر گرانیت', 1, 'سنگهای ساختمانی', '', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(140, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع سنگ الواح سازان', null, 'انواع سنگ تراورتن،دهبید،مرمریت', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(141, 2, '', 'ماه سنگ', null, '', '/  /      ', '', '', null, null, 'صنایع سنگ پارت به جهت استفاده بهینه از سنگ یکی از معدود مصالح طبیعی ساختمان اقدام به ارائه خدمات متنوع از قبیل بازدید ، طراحی ، معرفی ، ارائه مشخصات فنی به صورت رایگان می نماید.', null, null, 'www.partstone.org', 'info@partstone.com', 'صنایع سنگ پارت', 1, 'انواع ماربل و تراورتن', '', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(142, 2, '', 'نار سنگ', null, '', '    /  /  ', '4574      ', '          ', null, null, 'مرمریت سفید آزادی   (آنتیک -چرمی -ساب خورده -پولیش  )', null, null, '', '', 'نار سنگ', 1, 'تولید و فراوری  انواع سنگهای ساختمانی      تراورتن کرم حاجی آباد  ،  شکلاتی کاشان', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(143, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kurdstone.com', '', 'کرداستون', 1, 'تولید سنگ مصنوعی', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(144, 2, null, null, null, null, null, null, null, null, null, 'مجری سازه های شیشه ای', null, null, null, null, 'صدرا استون', null, 'سنگ مصنوعی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(145, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایران استون', null, 'سنگهای مصنوعی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(146, 2, '', 'رزین قطعه سازان پارک', null, null, null, null, null, null, null, 'پنلهای  3  متر مربعی  خودرنگ   و  قابل شستشو  ', null, null, null, null, 'رزین قطعه سازان پارک', null, 'ورقهای کامپوزیتی طرح سنگ نقش برجسته ', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(147, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'استقامت جاودانه پارسیان', null, 'تولید سنگهای مصنوعی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(148, 2, '', 'تولیدی بازرگانی تیفانی', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.zzbs.ir', '', 'تولیدی بازرگانی تیفانی', 1, 'سنگهای مصنوعی', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(149, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.uranusstone.com', '', 'سنگ مصنوعی  اورانوس', 1, 'تولید سنگ مصنوعی', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(150, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نما گستر فارس', null, 'سنگ مصنوعی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(151, 2, '', 'نیک بسپار', null, null, null, null, null, null, null, '', null, null, null, null, 'بهار خراسان', null, 'لوله 7لایه تلفیقی و اتصالات پرسی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(152, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'یزد لوله', null, 'لوله و اتصاتات پلی پیلن ، راندوم ، کوپلیمر تک لایه', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(153, 2, null, null, null, null, null, null, null, null, null, 'تولید کننده دستگاه های جوش مدار پویش      تجهیزات سرمایشی  sgp  تجهیزات خورشیدی', null, null, null, null, 'گروه صنایع گیتی پسند', null, 'لوله 5 لایه نیوپایپ و اتصالات با ترکیب فلز', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(154, 2, null, null, null, null, null, null, null, null, null, 'جهت مصارف کشاورزی  ،   فاضلاب', null, null, null, null, 'بنیاد لوله', null, 'لوله پلی اتیلن', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(155, 2, '', 'بنیاد لوله', null, null, null, null, null, null, null, 'فاضلاب ، کشاورزی', null, null, null, null, 'بنیاد لوله', null, 'لوله پلی اتیلن', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(156, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نفیس پلیمر آبفشان ساحل شیراز', null, 'لوله  pvc', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(157, 2, null, null, null, null, null, null, null, null, null, 'از سایز  20  تا  400', null, null, null, null, 'پلی گستر تهران', null, 'تولید و پخش لوله واتصالات پولیکا و اتیلن', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(158, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لوله گستر گلپایگان', null, 'انواع لوله های پلی اتیلن و لوله و اتصالات        upvc', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(159, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سپاهان پویه', null, 'لوله و اتصالات پلی پروپیلن تک لایه -لوله و اتصالات  5  لایه', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(160, 2, null, null, null, null, null, null, null, null, null, 'از سایز   20    الی    200    میلیمتر', null, null, null, null, 'وینو پلاستیک', null, 'لوله و اتصالات   upvc  ', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(161, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.danizpipe.org', '', 'دنیز پایپ (سوسوز مشهد)', 1, 'لوله های پلیمری و اتصالات', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(162, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', '', 'یزد پوش فیت', 1, 'لوله و اتصالات  پوش فیت  فاضلابی', '                    ', 1, -1, '1391/12/09', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(163, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تک ستاره گلپایگان', null, 'لوله و پلیمرهای صنعتی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(164, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جوان پلاست', null, 'لوله های   pvc', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(165, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'یزد بسپار', null, 'لوله های نیو پایپ', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(166, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لوله سبز گستر شیراز', null, 'لوله  اب ،  لوله  سبز', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(167, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پلیمر گلپایگان', null, 'لوله و اتصالات  pvc', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(168, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لوله سازی شرق', null, 'لوله های   pvc    و  پلی اتیلن', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(169, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'خوشنام خراسان', null, 'لوله های پلی اتیلن  و  پی وی سی     و  کاروگیت', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(170, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'امید گلستان ', null, 'تولید قطعات  و  شیرالات چدنی و فولادی و لاستیکی  ،   با آلیاژ های  مختلف', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(171, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرین بسپار زنده رود', null, 'لوله و اتصالات  5  لایه نیو پایپ', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(172, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه  تولیدی موج', null, 'لوله و اتصالات سبز  ،  لوله سپید افروز  ، لوله  و  اتصالاتسپیدان بسپار', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(173, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'موسسه فنی شاهرخی', null, 'لوله فلکس آلومنیومی', null, 1, -1, '1391/12/09', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(174, 2, null, null, null, null, null, null, null, null, null, 'نمایندگی یزد پلیمر  ، سپید پلاستیک یزد ، چسب تارگت', null, null, null, null, 'سمنان پویش', null, 'لوله و لوازم تاسیسات  ، ', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(175, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پلیمر توس ', null, 'لوله و اتصالات ', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(176, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ییزد پلیمر', null, 'لوله و اتصالات فاضلاب', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(177, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لوله سازی شمال', null, 'لوله    pvc     بدون  اتصالات', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(178, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لوله و اتصالات سان پایپ', null, 'لوله تک لایه  و  5  لایه', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(179, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آریا کاوان قشم ', null, 'لوله و اتصالات  ،  مخزن  ،  ', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(180, 2, null, null, null, null, null, null, null, null, null, 'از سایز 20  تا   400', null, null, null, null, 'لوله گستر خادمی', null, 'لوله و اتصالات  upvc', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(181, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آذر گستر ساوج بلاغ', null, 'تولید لوله های سیمانی', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(182, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پرسیت', null, 'تولید لوله های سیمانی', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(183, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مشهد صدرا', null, 'تولید لوله و اتصالات   و  مخازن  فایبر گلاس', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(184, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بهین', null, 'لوله و اتصالات     upvc', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(185, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آتا پایپ', null, 'تولید لوله و اتصالات  5  لایه                            تولید لوله و اتصالات  upvc', null, 1, -1, '1391/12/10', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(186, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرین پایپ', null, 'تولید لوله 5 لایه  با جوش لیزر ', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(187, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نیک پلیمر', null, 'توله   upvc     ', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(188, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جکوزی ایران', null, 'تولید انواع ماساژور  (جکوزی )  ،  پیش ساخته', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(189, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آوا', null, 'وان ، جکوزی ، کابین دوش و سونا', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(190, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'زرین آب', null, 'محصولات بهداشتی حمام', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(191, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'هما پلاست', null, 'تولید مخازن پلی اتیلن چند لایه', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(192, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'وارد کننده دستگاه تصفیه آب خانگی ', null, null, 'www.abnoos-p.com', '', 'آبنوس پالایش', 1, 'مشاوره ، طراحی  و  ساخت  دستگاه  تصفیه  آب', '                    ', 1, -1, '1391/12/11', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(193, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.ttpaco.com', '', 'طنین توسعه پارس ', 1, 'شیر قطع کن اتوماتیک گاز حساس به زلزله', '                    ', 1, -1, '1391/12/11', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(194, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پمپ ارس', null, 'پمپ شوفاز', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(195, 2, null, null, null, null, null, null, null, null, null, 'وان جکوزی ، اتاق دوش ، زیر دوشی', null, null, null, null, 'پرشین استاندارد', null, 'لوازم بهداشتی ساختمان', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(196, 2, null, null, null, null, null, null, null, null, null, 'توالت ایرانی ، روشویی با پایه ، توالت فرنگی', null, null, null, null, 'تعاونی تولیدی چینی بهداشتی  ایساتیس', null, 'چینی آلات بهداشتی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(197, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'چینی بهداشتی آرمیتاژ', null, 'چینی بهداشتی ساختمان', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(198, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تهران استخر', null, 'لوازم استخر ، سونا ، جکوزی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(199, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مد وان', null, 'وان  و  جکوزی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(200, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهر آبسنگ آریانا ', null, 'وان ، جکوزی ، زیر دوشی  و  اتاق دوش', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(201, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آبریزان', null, 'شیرآلات بهداشتی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(202, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(203, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی آسمان ', null, 'شیرآلات بهداشتی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(204, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی اخوان ساز ', null, 'شیرآلات ساختمانی', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(205, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی ایران دوش', null, 'شیرآلات بهداشتی ساختمان', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(206, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی شودر ', null, 'شیرآلات ساختمانی اهرمی  کلاسیک', null, 1, -1, '1391/12/11', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(207, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی ریابی', null, 'شیرآلات بهداشتی و ساختمانی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(208, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی قهرمان', null, 'شیرآلات بهداشتی و فلاش تانک', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(209, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه صنعتی آبان ', null, 'شیرآلات تمام استیل', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(210, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیبه', null, 'سیرآلات ساختمانی ', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(211, 2, '', 'لاریس', null, null, null, null, null, null, null, 'طراحی روی شیشه ', null, null, null, null, 'لاریس', null, 'ساخت پارتیشین حمام  روی وان و جکوزی  ،  پارتیشین حمام روی زیر دوشی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(212, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عمران گستر', null, 'کف خواب  صنعتی ، توالت ایرانی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(213, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.metaldig.com', '', 'بخار گستر طبرستان', 1, 'تولید  دیگ بخار', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, '
         این شرکت  در سال   1371   فعالیت خود را در جهت تامین نیازهای داخلی در زمنه تاسیسات با نام تجاری متال دیگ آغاز نموده و همواره در پی 

        ارتقا  فنی و کیفی محصولات تولیدی خود  توانسته است تا سبد کاملی از محصولات شامل   :  

                           1   -   دیگ بخار فایر تیوب 

                          2   -    دیگهای بخار  واتر تیوب 

                          3    -  دیگهای فولادی آب گرم  و  آب  داغ

                          4   -   دیگ  آب  گرم ایستاده

                         5   -   بویلر  روغن  داغ

                          6    -   دی اریتور      7    -   فیلتر  شنی   8  -   هیتر  هوای گرم     9   -   سختی  گیر   10   -   مبدل  حرارتی   11  -  منابع  

                                     کوئل  دار     و     دو  جداره  ', null, null, null, null);
insert into [tblCustomerDesc] values(214, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.bokharsazeh.com', '', 'بخار سازه', 1, 'دیگهای بخار آب گرم و روغن داغ', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, ' شرکت بخار سازه یکی از تولید کنندگان مطرح دیگهای بخار ، آب گرم و روغن داغ در سطح کشور میباشد که توانسته در زمینه تولید انواع بویلرها و مخازن تحت فشار ، اعتماد متخصصین این رشته را به خود جلب نماید .                                                                                                                                          این شرکت با رعایت اصول هدفمند  و استقرار نظام کیفیت منطبق بر استانداردهای جهانی  موفق به دریافت نشان استاندارد ملی ایران و نشان   ایزو 9001  در مدیریت کیفیت گردید ، تا همواره  با افزایش روزافزون کیفیت محصولات ، بستر مناسبی برای ارتقائ گستره فعالیت خود در سطح بازارهای جهانی فراهم سازد .', null, null, null, null);
insert into [tblCustomerDesc] values(215, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مارپیچ صنعت', null, 'لوله های اسپیرال ساده  و  مشبک', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(216, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پدیده کریت پارس', null, 'پرده هوا', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(217, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.americanpro.net', '', 'نوین تهویه', 1, 'سیستم تهویه مطبوع آپارتمانی ، سرد و کرم', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(218, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایران رادیاتور', null, 'پکیج دیواری  ، رادیاتور آلومنیومی ، لوله  5 لایه', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(219, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع حرارتی مسعود', null, 'ماشین آلات و تجهیزات گرمایشی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(220, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.azartahvieh.ir', '', 'آذر تهویه سازان', 1, 'یونیت ، هیتر ، چیلر ، هواساز', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(221, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فیدر رادیاتور ', null, 'رادیاتور خانگی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(222, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.tahvehsabalan', '', 'تهویه سبلان', 1, 'هواساز آپارتمانی ، هواکش صنعتی', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(223, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'تهویه مطبوع ، مبدل های حرارتی', null, null, 'www.sarvarman.com', '', 'گروه آریا (  سرو  آرمان  )', 1, 'یونیت ،  هیتر  ، هوا ساز آپارتمانی ،  کوره هوای گرم ، پکیج پشت بامی  ، چیلر مدولار', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(224, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kiaelectra.com', '', 'کییا سپهر کیش    (  کیا الکترا کیش  )', 1, 'سیستم اسپیلت کانالی ،  فن کویل دکوراتیو', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(225, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.amat-co-ir', '', 'امات ', 1, 'رادیاتور فن کویل دار ، حوله خشک کن', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(226, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.toyo-ac.co.jp', '', 'کاوش انرژی', 1, 'تهویه مطبوع ، چیلر ، فن کویل سقفی', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(227, 2, '', 'مبنا انرژی', null, null, null, null, null, null, null, '', null, null, null, null, 'مبنا انرژی', null, 'پکیج ترمو تکنیک  و  رادیاتور پانل استیل', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(228, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.ntalborz.com', '', 'نیرو تهویه البرز', 1, 'طراحی و تولید سیستمهای گرمایشی نوین', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(229, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شفیع سازه شرق', null, 'پکیجهای گرمایشی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(230, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'طاها قالب توس', null, 'تولید مبدلهای حرارتی صفحه ای', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(231, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مشهد تهویه', null, 'پکیجهای گرمایشی ، دیواری ، دنو ترم   ،  و     فن کویل های ویکتور', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(232, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهندسی کارا  تهویه ', null, ' اجکتور بخار ، چیلر بخار ، برج خنک کننده ', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(233, 2, null, null, null, null, null, null, null, null, null, 'گازی  ،  گازوییلی', null, null, null, null, 'رعد مشعل طوس ', null, 'انواع مشعل', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(234, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سازه های صنعتی خراسان', null, 'پکیجهای گرمایشی آپارتمانی ، دیگهای فولادی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(235, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گرم ایران', null, 'مشعلهای صنعتی ، پکیج گرمایشی ، قطعات فشرده الومنیوم', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(236, 2, null, null, null, null, null, null, null, null, null, 'دوگانه سوز  و  سه گانه سوز ', null, null, null, null, 'آترا   پیشگامان  نور خراسان', null, 'مشعلهای  گاز سوز ، گازوییل سوز  ، مازوت سوز  ', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(237, 2, '', 'اسفیوخ', null, null, null, null, null, null, null, 'نماینده شرکتهای   زونگدای چین   ،               فیرات  ترکیه   ،   دورست آلمان', null, null, null, null, 'اسفیوخ', null, 'سیستمهای گرمایشی و سرمایشی', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(238, 2, null, null, null, null, null, null, null, null, null, 'نام تجاری : کاراهیت تریس', null, null, null, null, 'مدیران صنعت کارآمد', null, 'طراح و مجریسیستم گرمایش از کف               جلو گیری از یخ زدگی  داخل و خارج ساختمان  و  پشت بام ', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(239, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.tkj.ir', '', 'تهویه کاران مهر جوان', 1, 'سیستم شوتینگ زباله ، کانالهایتهویه هوا ،     دریچه تنظیم هوا', '                    ', 1, -1, '1391/12/12', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(240, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرگ فلز', null, 'شوت زباله  ، کمپرسور', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(241, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'برف آب ', null, 'کولر آبی آبگرمکن ، بخاری', null, 1, -1, '1391/12/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(242, 2, '', 'فابریک ایر', null, null, null, null, null, null, null, 'کانالهای پارچه ای جایگزین کانالهای فلزی', null, null, null, null, 'سورنا تهویه پارسه', null, 'سیستم توزیع هوای پارچه ای', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(243, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سوپر شوت', null, 'ارایه دهنده شوتینگ نخاله های ساختمانی ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(244, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.sappasargad.ir', '', 'گروه صنعتی پاسارگاد ', 1, 'برج خنک کننده ، مخازن فایبر گلاس', '                    ', 1, -1, '1391/12/13', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(245, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کار و اندیشه   ( تندیس مهر سلامت )', null, 'چیلرهای جذبی ، اکو انرژی ، چیلرهای گازسوز ، برج خنک کننده', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(246, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرهای ساختمانی و صنعتی ایران ', null, 'شیرهای بهداشتی اهرمی و الکتریکی ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(247, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'خوشه صنعتی دوریکا', null, 'لوازم بهداشتی ساختمان ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(248, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.bronzeshomal', '', 'برنز شمال', 1, 'شیر آلات  و  لوازم بهداشتی', '                    ', 1, -1, '1391/12/13', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(249, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرالات بهداشتی ساحل ', null, 'شیرالات بهداشتی و ساختمانی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(250, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بهریزان صنعت ', null, 'شیرالات بهداشتی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(251, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'هما صنعت رویان', null, 'شیرالات بهداشتی ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(252, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرالات بهداشتی وینا', null, 'شیر الات بهداشتی ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(253, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیرآلات بهداشتی سکه', null, 'شیرآلات بهداشتی ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(254, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'منو پمپ بهلول', null, 'تولید منو پمپ جهت انتقال بتن سبک  کفی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(255, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'منو پمپ آسیا ', null, 'تولید کننده منو پمپ جهت انتقال بتن سبک کفی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(256, 2, null, null, null, null, null, null, null, null, null, 'الکترو پمپ کفکش و لجن کش   شناور', null, null, null, null, 'حدید پمپ', null, 'پمپسیستم  فاضلاب  و  کفکش  ، ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(257, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پمپ ایران', null, 'پمپ  مکنده ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(258, 2, '', 'شرکت آبان اندیش شرق', null, null, null, null, null, null, null, '', null, null, null, null, 'شرکت آبان گستر شرق', null, 'نظارت بر کلیه کارگزاری های خرید و فروش', null, 3, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(259, 2, null, null, null, 'ایران -> استان هرمزگان -> بندر چارک', '1111/11/11', '1         ', '          ', null, null, '1', null, null, '', '', 'شرکت صدر صنعت1', 2, 'کارفرمای پروژه های مسکونی و انبوه سازی1', '                    ', 2, 745, '1391/12/13', 1, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(260, 1, 'امیر1', 'فتوحی1', 'محمد حسین', null, '1349/01/07', '76        ', '0452323185', null, null, '1', null, '09121900448         ', null, 'fotoohi@gmail.com', null, null, 'پیمانکار پروژه های مسکونی1', '                    ', 2, 775, '1391/12/13', 1, null, null, null, 1, 3, 'مهندسی زلزله', 1, 'فتوحی', null, null, null, '16,5,4');
insert into [tblCustomerDesc] values(261, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'pppppp', null, 'qqqqqqq', null, 2, 258, '1391/12/13', 0, null, null, null, null, null, null, null, 'zzzzzzz', null, null, null, null);
insert into [tblCustomerDesc] values(262, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تست', null, '', null, 2, 258, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(263, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '  کاشی کسری', null, 'تولید سرامیک لعابدار', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(264, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاله سرامیک ایران', null, 'سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(265, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی عقیق', null, 'تولید انواع کاشی کف و دیوار ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(266, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی زرین', null, 'کاشی دیوار', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(267, 2, null, null, null, null, null, null, null, null, null, 'پخت سوم', null, null, null, null, 'زر  سرام  یزد ', null, 'تولید کاشی دیواری', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(268, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی تیما', null, 'انواع کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(269, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی تیما', null, 'انواع کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(270, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی تیما', null, 'انواع کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(271, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ارژنگ نمای شهر کرد', null, 'تولید کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(272, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آپادانا سرام', null, 'کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(273, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'چینی بهداشتی مینا', null, 'چینی بهداشتی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(274, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'چینی بهداشتی کسری نوین کویر', null, 'چینی آلات بهداشتی', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(275, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع کاشی نیلوفر', null, 'کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(276, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.saratile.com', '', 'سارا کاشی', 1, 'کاشی سرامیک', '                    ', 1, -1, '1391/12/13', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(277, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی اطلس', null, 'کاشی سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(278, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی اطلس', null, 'کاشی ، سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(279, 2, null, null, null, null, null, null, null, null, null, 'عامل  پخش بلوکهای شیشه ای خارجی', null, null, null, null, 'کاشی شیشه ای  هلن ', null, 'طراحی و تولید کاشی و بلوک شیشه ای ', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(280, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آیدا سرام', null, 'کاشی و سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(281, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الماس کاشی', null, 'کاشی سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(282, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی نایین', null, 'کاشی سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(283, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سامان کاشی', null, 'کاشی سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(284, 2, null, null, null, null, null, null, null, null, null, 'سرامیک صنعتی جهت کوره نسوز', null, null, null, null, 'سرامیک اردکان', null, 'کاشی سرامیک', null, 1, -1, '1391/12/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(285, 2, null, null, null, null, null, null, null, null, null, 'مورد استفاده جهت کارخانه کاشی', null, null, null, null, 'سرامیک اقبال', null, 'سرامیک صنعتی ، قطعات نسوز کوره', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(286, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی مسعود ایران', null, 'کاشی', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(287, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی مریم میبد', null, 'کاشی سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(288, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی مرجان ', null, 'کاشی سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(289, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی فیروزه مشهد', null, 'کاشی سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(290, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تکسرام', null, 'سرامیک کف', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(291, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی گرانیتی مهسرام', null, 'کاشی کف ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(292, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نوین سرام', null, 'کاشی سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(293, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کیمیا سرام', null, 'کاشی سرامیک  کف دیوار', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(294, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی گلچین میبد ', null, 'کاشی سرامیک کف ، دیوار ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(295, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ارژنگ نما  شهر کرد', null, 'کاشی سرامیک ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(296, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تامر کاشی', null, 'کاشی سرامیک شیشه ای', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(297, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تیراژه آسمان البرز', null, 'تولید انواع رنگدانه و لعاب کاشی و سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(298, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سرامیک رضوان ', null, 'سفال  و  سرامیک  دست ساز   ،   نقش برجسته  هنری  ،  تابلو  و کاشی  برجسته', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(299, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی آسیا ', null, 'کاشی  سرامیک  کف', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(300, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گلدیس  کاشی یزد ', null, 'کاشی سرامیک ، چینی بهداشتی  ، قطعات  سرامیکی', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(301, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجتمع کاشی میبد', null, 'کاشی دیوار و کف', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(302, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سرامیک البرز', null, 'تولید سرامیک مینیاتوری ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(303, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشی الوند ', null, 'کاشی سرامیک', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(304, 2, null, null, null, null, null, null, null, null, null, 'قیچی ، میلگرد خم کن ، نورد میلگرد ', null, null, null, null, 'سبلان ماشین انتظاری', null, 'تولید دستگاه صنعتی ساختمانی', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(305, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(306, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه تولیدی جنرال', null, 'تولید دستگاه برش و خم میلگرد تا نمره 35', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(307, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ماشین سازی آریا تک برش', null, 'ساخت دستگاه میلگرد خم کن ، قطع کن میلگرد  و اره فولاد بر', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(308, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهندسی کارا فن', null, 'طراحی و تولید زنجیرهای انتقال مواد', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(309, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ماشین سازی کلار', null, 'دستگاه پاشش ملات و پلاستر  (شات کریت)', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(310, 2, '', 'آریا تراک میکسر', null, null, null, null, null, null, null, 'سیلوی سیمان باظرفیتهای مختلف ، تراک میکسر ، بچینگ  طرح نوار نقاله ای آلمان', null, null, null, null, 'آریا تراک میکسر', null, 'تولید میکسرهای بتن', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(311, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مورات', null, 'ماشین آلات تولید درب و پنجره ،  upvc  ,          آلومنیوم', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(312, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ASE', null, 'دستگاه های شات کریت حلزونی و پیستونی ، گچ پاش و ملات پاش ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(313, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تکنو بلوک', null, 'سازنده ماشیین آلات تولید قطعات بتنی', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(314, 2, null, null, null, null, null, null, null, null, null, 'چترهای سایبان متحرک', null, null, null, null, 'هیدرولیکی دقایق', null, 'ادوات  و  تجهیزات هیدرولیکی ، ', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(315, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پاش کار', null, 'تجهیزات پاشش فوم ،  پاشش رنگ ساختمانی ،  پاشش مواد تزیینی ، خطکشی جاده و خیابان', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(316, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.balansanat.com', '', 'بالان صنعت', 1, 'انواع بالابر صنعتی ساختمانی', '                    ', 1, -1, '1391/12/14', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(317, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.ARANPART.Com', '', 'آران پارت', 1, 'ماششین آلات راه سازی ، ساختمانی و معدنی', '                    ', 1, -1, '1391/12/14', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(318, 2, null, null, null, null, null, null, null, null, null, 'خرید  و  فروش', null, null, null, null, 'گروه ماشین آلات بهجو', null, 'ماشین آلات شن شویی  ، بچینگ  و  میکسر', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(319, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.stparsian.com', '', 'گروه بین المللی  اس تی پی  (سپاهان تکنیک پارسیان )', 1, 'تولید ماشین آلات ساخت درب و پنجره     و       شیشه دو جداره', '                    ', 1, -1, '1391/12/14', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(320, 2, '', 'تکین ماشین رازی', null, null, null, null, null, null, null, 'انواع  بتونیر ، انواع بچینگ ، انواع تراک میکسر  ، انواع دامپر  و  ماشین آلات مربوط به بتن', null, null, null, null, 'تکین ماشین رازی', null, 'تولید کننده ماشین آلات ساختمانی', null, 1, -1, '1391/12/14', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(321, 2, '', 'اریکه سازان', null, '', '    /  /  ', '          ', '          ', null, null, 'فن آوری های نوین ساختمان                         کوپلر انتهایی  ، کوپلر تبدیلی ، کوپلر ارتباطی', null, null, '', '', 'اریکه سازان', 1, 'وصلهمکانیکی کوپلر', '                    ', 1, -1, '1391/12/14', 0, null, 1, '', null, null, null, null, 'وارد کننده انواع کوپلر برای اتصال آرماتورها از سایز   16  الی  40  میلیمتر                                                                                                                           رزوه کاریآرماتور به روش دایرکتوری  رولینگ  از سایز   16  الی   40                                                                                                                                      شرکت اریکه سازان توس مشتمل بر سه بخش   مشاوره ،  اجرا  و  بازرگانی میباشد که میتواند در حالات زیر ارائه خدمات نماید  :                                          1  -  مشاوره   ، آنالیز  و  طراحی سازه                                                                                                                                                                             2  -  فروش کوپلر  ،  دستگاه های رزوه کاری                                                                                                                                                                     3 -  اجرای رزوه کاری  میلگرد در محل کارگاه یا کارگاه شرکت ', '', '', '100', '');
insert into [tblCustomerDesc] values(322, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'تجهیزات مختلف قابل نصب', null, null, 'www.dicaach', '', 'دراج رفسنجان ', 1, 'ماشینهای چند منظوره ، مینی لودر ، ', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(323, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.clir.com', '', 'بتن سبک آرتا ', 1, 'خط تولید بلوک بتنی سبک  (پرلکس )', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(324, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.navinsazan', '', 'نوین سازان', 1, 'تولید خط اتوماتیک تولید تیرچه   ،  مش', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(325, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ماشین سازی سپهر ', null, 'ماشین آلات  خط تولید   تری دی پانل', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(326, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کارگستران سماع ', null, 'ماشین آلات خط تولید فوم و  تی ری دی پانل', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(327, 2, '', 'ارماک', null, null, null, null, null, null, null, 'خط تولید کاویان بتن شرق ، انواع جداول بتنی پرسی ، بلوک سبک ، ', null, null, null, null, 'ارماک', null, 'ساخت خط تولید کفپوش بتنی ، بلوک سبک      جدول پرسی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(328, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دژ  آبسنگ  ', null, 'ساخت و راه اندازی خط تولید بلوک   C L C  و قطعات پیش ساخته سببک ', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(329, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فوم بتن ماشین طوس ', null, 'تولید ماشین آلات خط تولید  بتن سبک و دستگاه های ساخت بلوکه سبک ', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(330, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آسان خودرو ', null, 'ماشین الات صنعتی راه سازی معدنی   ،       دیزل  ژنراتور', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, 'شرکت آسان خودرو  (سهامی خاص ) دارای نمایندگی های انحصاری و رسمی فروش و خدمات پس از فروش تولید کننده های معتبر نظیر زوم لایون برای ماشین الات راه سازی و ساختمانی ،  شرکت ام . پی . ام . سی    برای لنواع دیزل ژنراتور  ، شرکت هلی برای انواع لیفتراک  و  دیگر تجهیزات انبار  بوده   و  با بهره گیری از کادر فنی آموزش دیده  و  مجرب  و  همچنین با تکیه بر توان بالای تخصصی خود آماده است در زمینه های ذیل خدمات لازم را انجام دهد :

             1  -  واردات و عرضه انواع ماشین آلات  راه سازی و  ساختمانی مانند  :  بیل  ، بلدوزر  ،  تاور کرین  ،  پمپ بتن

            2   -   واردات  و  عرضه  انواع  دیزل ژنراتور  با  توان های  از  25  الی     2080     (  K V A   )  مجهز به بهترین موتور  و  ژنراتور  مصرفی در ایران 

            3   -  واردات و عرضه انواع  لیفتراک با ظرفیتهای   1   الی   46   تن  و با سوخت های دیزلی ، بنزینی ،دوگانه  سوز  (  گاز  و  بنزین  )  و  برقی  

            4  -  ارائه پشتیبانی  و  خدمات  پس از فروش برای کلیه ذستگاه های فوق مطابق دستور العمل  و  استاندارد  کارخانه جات سازنده 

           5  -  تامین اغلب قطعات یدکی  (  اصلی  )  ماشین الات زوم لایون  ، لیفتراک  هلی و  دیزل ژنراتور   ا م  پی  ا م  س ی     از محل موجودی 

           6  -ارائه کلیه خدمات فنی  (سرویس  و  تعمیرات )  مطابق با استاندارد های کاخانه جات سازنده 

           7  -  ارائه خدمات آموزشی ( تامین کتب تعمیرات  و  برگزاری دوره های آموزشی  )

          8  -   توانایی در انجام مشاوره جهت انتخاب بهینه ماشین الات با بهره گیری از تجارب نیرو های زبده 

          9  -    ارسال مجلات  ، کاتالوگ  ،  بروشور  و  اطلاع رسانی  مرتبط  


                               شایان ذکر است که این شرکت علاوه بر ارائه خدمات فنی در تعمیر گاه مرکزی خود ، توان اعزام تیم های فنی سیار به سایت محل استقرار ماشین آلات در اقصی نقاط کشور را دارا می باشد .', null, null, null, null);
insert into [tblCustomerDesc] values(331, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صد صنعت ', null, 'دستگاه های سنگبری ساختمانی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(332, 2, '', 'گروه فنی مهندسی صنایع سپاهان تکنیک پارسیان', null, null, null, null, null, null, null, '               ', null, null, null, null, 'تکنو بلوک', null, 'خط تولید در  و  پنجرهUPVC   و    دو  جداره', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(333, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پمپ بتن البرز', null, 'ساخت و منتاژ پمپ بتن  و  ساخت  میکسر     بچینگ  و  پمپ   ثابت', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(334, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.KHAMOOTGOSTAR.IR', '', 'خاموت گستر ', 1, 'دستگاه های برش  و  خم میلگرد  زیکزاک زن   و  خاموت  زن  برقی', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(335, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایمن ابزار نظری', null, 'تولید ابزار آلات صنعتی و لوازم ایمنی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(336, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.BIOSABETON.COM', '', 'شرکت تعاونی دانش بنیای بیوسا بتن ', 1, 'سازنده خط تولید اتوماتیک بتن سبک   c l c ', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(337, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.NOVIN-SAZEH.COM', '', 'نوین سازه پایا ', 1, 'بلوک سبک بتنی  ، راه اندازی خط تولید بلوکهای بتنی سبک ', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(338, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'اینورتر  تکفاز   با الکترود  پوششدار', null, null, 'www.GAAMELECTRIC.COM', '', 'رکتی فایر جوشا  (گام الکتریک)', 1, 'تولید دستگاه جوشکاری', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(339, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kiadieselspadan.com', '', 'کیادیزتل اسپادان', 1, 'دستگاه مولد برق ، دیزلی و گازی', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(340, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'خزر ترانسفو', null, 'دستگاه های جوشکاری', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(341, 2, '', ' ارکا گستر ', null, '', '    /  /  ', '          ', '          ', null, null, 'مونتاژ کننده دستگاه                                       فروش اقلام', null, null, 'www.arkagostar.com', '', ' ارکا گستر ', 1, 'دیزل ژنراتور', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(342, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'راد الکتریک ', null, 'ماشین آلات جوش و برش', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(343, 2, null, null, null, null, null, null, null, null, null, 'واردات ، مونتاژ ، تولید', null, null, null, null, 'ساینا دیزل', null, 'ژنراتور دیزلی و گازی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(344, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دنیای جوش و برش', null, 'رکتی فایر تکفاز', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(345, 2, '', 'توس دیزل', null, null, null, null, null, null, null, 'ماشین آلات جوشکاری', null, null, null, null, 'توس دیزل', null, 'مولد های برق', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(346, 2, '', 'ماموت', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.mammut-khorasan.com', '', 'ماموت', 1, 'خانه پیش ساخته ، کانکس  ، اتاقهای ایزوله', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(347, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه مهندسی پردیسان', null, 'ساختمانهای با فناوری پیش ساخته  R P C  و صنایع  hitech', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(348, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.KANEXSAZAN.Com', '', 'کانکس سازان ', 1, 'انواع کانکس نگهبانی  ، کارگاهی ، آلاچیق  ،  نما ، سقف کاذب ', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(349, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آریا کانکس ', null, 'کانکس', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(350, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فهیم کاران', null, 'خانه های پیش ساخته چوبی و آلاچیق', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(351, 2, null, null, null, null, null, null, null, null, null, 'دفاتر کارگاهی و تجاری ، واحد های اداری مسکونی ، ایمنی و اورژانس  ، درمانگاه و کلینیک صحرایی', null, null, null, null, 'بننا گر', null, 'سازه های پیش ساخته', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(352, 2, null, null, null, null, null, null, null, null, null, 'پانل دکوراتیو با چوب صنعتی', null, null, null, null, 'آریا بارون توس', null, 'کانکس تاشو ، کانکس ثابت و سیار ', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(353, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'زیبا کانکس آسیا صنعت', null, 'خانه پیش ساخته', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(354, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'اینگکو', null, 'ابزارآلات برقی و دستی ', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(355, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'معدن شرق', null, 'ابزار ساختمانی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(356, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شهاب فر طوس ', null, 'سبدهای صنعتی قرقره  سیم ، کابل  و  تراسفورماتور', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(357, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه صنعتی شیراز بست', null, 'تولید انواع بست فولادی ، آلومنیوم گالوانیزه،  پلی اتیلن  جهت لوله های فلزی و پولیکا', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(358, 2, '', 'آ تی صنعت پیشگام', null, null, null, null, null, null, null, '', null, null, null, null, 'اتی صنعت پیشگام', null, 'نوارهای مدولار پلاستیکی  ، تسمه های صنعتی  ، و ساخت نوار نقاله', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(359, 2, '', 'گروه صنعتی سهند ', null, '', '    /  /  ', '          ', '          ', null, null, 'کوپلر  راستگرد  ،  کوپلر چپ و راست  ،   کوپلر تبدیل ،  کوپلر جوش ،  کوپلر انتهایی ', null, null, 'www.sahandsplices.com', '', 'گروه صنعتی سهند ', 1, 'اتصالات مکانیکی ارماتور', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(360, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.jsig.com', '', 'فولاد جویباران', 1, 'سیم مفتول ، رابیتس ، فنس ، توری حصاری', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(361, 2, null, null, null, null, null, null, null, null, null, 'بازرگانی مش و توری البرز  ، نماینده فروش محصولات  کارخانه مش و توری البرز', null, null, null, null, 'مش و توری البرز ', null, 'مش و توری ', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(362, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'از سایز  M  6     تا   M   30        ', null, null, 'www.irtoco.com', '', 'ایران توحید', 1, 'پیچ و مهره فولادی به روش فورج سرد', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(363, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بنا تدبیر البرز   ( بتا )', null, 'گلمیخ ساختمانی  ، جهت سقفهای عرشه فولادی', null, 1, -1, '1391/12/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(364, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.HUselsefety.com', '', 'حاصل', 1, 'میخ پرچ ، گلمیخ   جهت اسلحه  بادی', '                    ', 1, -1, '1391/12/15', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(365, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تک پاییزان ', null, 'تولید دستگیره و پلاک ، جهت دربهای چوبی و  آلومنیوم ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(366, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.Behrizan.com', '', 'بهریزان ', 1, 'دستگیره  ، یراق آلات ساختمان ', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(367, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.winacc.ir', '', 'ویناکس', 1, 'یراق آلات  در و پنجره       U P V C', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(368, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'یراق مرکزی سانترال', null, 'یراق آلات ، دستگیره ، لولا  ،  ریل', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(369, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع قفل ایمن ', null, 'تولید انواع قفل کتابی  و حلقه ای', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(370, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'قفل رجبی ', null, 'قفل', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(371, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'هفله', null, 'یراق آلات کابینت  ، مبلمان و ساختمان', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(372, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کارخانجات تولیدی شیشه ایمنی شرق ', null, 'شیشه  ساختمانی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(373, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'به جام خراسان', null, 'شیشه دو جداره', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(374, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیشه ایمنی خراسان', null, 'شیشه سکوریت ،  چند جداره ، لمینیت  ، نمای اسپایدری', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(375, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیشه شاخص خراسان ', null, 'شیشه های رفلکس ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(376, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بلوک شیشه ای لار ', null, 'فراوری شیشه  جهت  تزیین داخل ،  نمای خارج', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(377, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بیتا شیشه ', null, 'شیشه سکوریت  و  دو جداره ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(378, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیشه ایمنی کبیر ', null, 'شیشه ساختمانی ، شیشه ایمنی ، ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(379, 2, null, null, null, null, null, null, null, null, null, 'دو    و   چند  جداره', null, null, null, null, 'پارس شیشه', null, 'انواع شیشه ساختمانی ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(380, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شیشه ایمنی زرین خراسان', null, 'سکوریت ساختمانی  ، تزیینی ، صنعتی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(381, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پلیمر طلایی یزد', null, 'ورقهای  دو  و  چند جداره رفلکس', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(382, 2, null, null, null, null, null, null, null, null, null, 'ابزار زنی شیشه و آینه', null, null, null, null, 'الماس ترنم پاسارگاد', null, 'شیشه دو جداره  ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(383, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.aryasanat.biz', '', 'روژان   (  آریا صنعت خراسان   )', 1, 'سیستم انرژی خورشیدی  در گرماش   ( استخر  ،  مخازن  ،  آبگرمکن  ،  پکیج   )', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(384, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'انرژی های تجدید پذیر', null, null, 'www.AFSHIDCO.', '', 'آفشید', 1, 'تولید آبگرمکن خورشیدی', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(385, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نسکو  ایران ', null, 'نیروگاه خورشیدی  ،   سیستم روشنایی  ،  گرمایش  و  سرمایش  ، ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(386, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فروزش جستجو', null, 'تولید صنایع روشنایی و سیستمهای  نوین خورشیدی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(387, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آویسا  فناوران انرژیخای سبز', null, 'آبگرمکن خورشیدی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, 'انرژی خورشیدی یکی از منابع تامین انرژی رایگان پاک  و عاری از اثرات مخرب زیست محیطی می باشد  .  که از دیر باز به روشهای گوناگون مورد توجه بشر قرار گرفته است  . بحران انرژی در سالهای اخیر  ، کشورهای پیشرفته  و صنعتی جهان را بر آن داشت که با مسائل مربوط به انرژی برخوردی متفاوت نمایند که در این میان جایگذینی انرژی های فسیلی با انرژی های خورشیدی به منظور کاهش    و صرفه جویی در مصرف انرژی   کنترل  عرضه  و تقاضای انرژی فسیلی  و کاهش انتشار گازهای آلایندهبا استقبال فراوانی روبرو  شده است . 

     شرکت فناوران انرژی های سبز    سرانجام پس از سالها تحقیق در خصوص انرژی های نو  طی مذاکره با یکی از معتبر ترین دانشگاه های جهان  ، اقدام به انتقال دانش فنی  و راه اندازی بزرگترین کارخانه تولید آبگرمکن خوشیدی در خاورمیانه  نموده است  . ', null, null, null, null);
insert into [tblCustomerDesc] values(388, 2, null, null, null, null, null, null, null, null, null, 'نمایندگی شرق کشور', null, null, null, null, 'عمارت', null, 'آبگرمکن خورشیدی ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(389, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.Kiaparslaye.com', '', 'کیا پارس لایه ', 1, 'عایقهای رطوبتی', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(390, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.sedaguir.ir', '', 'صدا گیر ', 1, 'دیوار پیش ساخته گچی  صدا گیر ', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(391, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایزوگام شرق', null, 'ایزوگام', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(392, 2, null, null, null, null, null, null, null, null, null, 'مظروف سازی  ، بشکه سازی  ، قیر بصورت  فله', null, null, null, null, 'پالایش نفت جی', null, 'تولید انواع قیر ،', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(393, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.roofing.ir', '', 'چتر پیروز گام آسیا ', 1, 'عایق رطوبتی    (ایزوگام )', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(394, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.irn.sika-com', '', 'سیکا پارسیان ', 1, 'پلیمر عایق کاری ، چسب کفپوش صنعتی ', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(395, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.Isolasion.com', '', 'ایزولاسیون شمشیری', 1, 'تولید ایزوگام و پیروز بام   گلبهار', '                    ', 1, -1, '1391/12/16', 0, null, 1, '', null, null, null, null, 'واحد صادر کننده نمونه سال 1391     ،     واحد صادر کننده  نمونه سال 1390  ، واحد نمونه سازمان صنعت ، معدن و تجارت استان اصفهان   سال  1390  ،     واحد نمونه سازمان صنایع  و  معادن استان خراسان  سال   1384   ،   واحد نمونه اداره استاندارداستان خراسان سال  1382   ،  دارنده گواهینامه کیفیت کشور آلمان  سال  1374   ،   دارنده گواهینامه   ایزو   9001   ،  دارنده  گواهینامه    ایزو   14001    ،   دارنده گواهینامه    ایزو   18001   ،   دارنده گواهینامه   C E   اروپا    ،  عضو اتحادیه تولید کننده گان  و  صادر کننده گان مصالح ساختمانی خراسان  رضوی   ،    عضو انجمن عایقهای  رطوبتی خراسان رضوی  .', null, null, null, null);
insert into [tblCustomerDesc] values(396, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پیروز بام شرق', null, 'عایق رطوبتی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(397, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پیروز بام گلبهار ', null, 'ایزوگام قیر  ', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(398, 2, '', 'پوششهای ضد حریق ', null, null, null, null, null, null, null, 'پوششهای ضد حریق                                     پشم سنگ  ، تولید اصفهان', null, null, null, null, 'پوششهای ضد حریق ', null, 'ورمیفایر   ،   ورمیکس', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(399, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه انرژی نانو  تکنولوژی', null, 'عایقهای پاششی پلی یورتان', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(400, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نانو پوشش طوس', null, 'آب بندی و لاینینگ سازه ها و مصالح ساختمانی  با فناوری نانو', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(401, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دنا کو ', null, 'فراورده های عایق پرایمر  ، چسب کاشی', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(402, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایزوگام تهران ', null, 'تولید ایزوگام پشت بام', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(403, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پشم شیشه پارس', null, 'تولید پشم شیشه', null, 1, -1, '1391/12/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(404, 2, null, null, null, null, null, null, null, null, null, 'انعطاف پذیر  و  فاقد خطر ترک خوردگی  ، مقاوم در برابر  آب  ، قابل اعمال  بر  روی   سطوح مرطوب', null, null, null, null, 'پولی گام', null, 'عایق  سرد   ،  جهت بام  سرویس لهداشتی  و  دیوار', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(405, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایزونام', null, 'عایق بام عایق لوله', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(406, 2, '', 'آسیا بام ظفر ', null, null, null, null, null, null, null, '', null, null, null, null, 'آسیا بام ظفر ', null, 'تولیدانواع عایقهای رطوبتی ، انواع قیرهای  صنعتی و پلیمری ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(407, 2, null, null, null, '', '    /  /  ', '285       ', '          ', null, null, 'در دو نوع فویل دار  ، پودری و مشتقات ', null, null, 'www.', '', 'ایزوگام شایان بام دلیجان ', 1, 'تولید انواع ایزوگامهای پلیمری ، ', '                    ', 1, -1, '1391/12/17', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(408, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایزوگام کیمیا شرق', null, 'عایق رطوبتی', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(409, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پیروز بام آسیا', null, 'عایقهای رطوبتی ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(410, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'چتر بام عایق', null, 'عایقهای ضد رطوبت ،  خمیرهای مربوطه بسته بندی فیر ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(411, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'حبیب صنعت', null, 'ایزوگام حبیب مخصوص  ،  ایزوگام حبیب فویل دار ، پرایمر       p 2000   ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(412, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عایق بام سایبان ', null, 'ایزوگام', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(413, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرتا  برج ', null, 'ورق عایق xps   ،در  و  پنجره   upvc   ،     پوششهای  سقفی  طرح سفال  pvc ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(414, 2, '', 'ورزایران', null, null, null, null, null, null, null, 'ورز فلکس  ،  ورز پلاست  ،  ورز روف', null, null, null, null, 'ورزایران', null, 'تولید انواع قیر اصلاح شده پلیمری  ، ماستیک  ف امولسیون قیری  ، عایق رطوبتی', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(415, 2, null, null, null, null, null, null, null, null, null, 'درز کاشی  ،  آب  بندی  ،  جلا دهنده ، ', null, null, null, null, 'عایق رطوبتی  و  رزین  سنگ  الکاور', null, 'ضد آب کننده کلیه سطوح ، ', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(416, 2, null, null, null, null, null, null, null, null, null, 'آب بندی بتن   ،   افزایش مقاومت فیزیکی  ، جایگزین  ایزوگام  ،  عایق سازی ساختمان ', null, null, null, null, 'دا صا   (   دانش افروز صالح    )', null, 'مواد ضد آب کننده بتن', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(417, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مسینا', null, 'آب بند  ، ملات پلیمری آماده  ویژه  نما', null, 1, -1, '1391/12/17', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(418, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.g-w-b.com', '', 'ثمین صنعت تیراژه', 1, 'تولید دیوار سبز   (   XPS   )   ', '                    ', 1, -1, '1391/12/17', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(419, 2, '', 'پایهان بتن', null, '', '    /  /  ', '          ', '          ', null, null, '1-  قطعات بتنی خاص  2-  دیوار پیش ساخته  3  -  دالهای بتنی  مسلح  و  ساده   4 -   جداول  و  تایلهای پرسی   ', null, null, 'www.payhanbeton.com', '', 'پایهان بتن', 1, 'بتن آماده   ،   بلوک سبک', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(420, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیناد بتن', null, 'بتن آماده  و  فراورده های بتنی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(421, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.shargh-cement-products.com', 'info@sharghcement-products.com', 'شرکت فرآورده های سیمان شرق', 1, 'تولیدکننده بتن آماده  ، تیرچه پیش تنیده ، لوله های بتنی  ، شن و ماسه شسته و شکسته', '', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, 'این شرکت از سال 1352 با نام کارخانه بتن سقف که از واحد های داخلی در مجموعه شرکت سیمان شرق ( سهامی عام ) محسوب می گردید فعالیت داشته و از ابتدای سال 1383 به شرح ذیل مستقل شده است .
شرکت فرآورده های سیمان شرق در تاریخ 25اسفندماه1382بصورت ( سهامی عام ) تاسیس شده و طی شماره 218857 مورخ 25 اسفند82 در اداره ثبت شرکتها و مالکیت صنعتی تهران به ثبت رسیده است . شرکت در ابتدا با سرمایه ای بالغ بر یک میلیارد ریال آغاز و مطابق نیاز و با توجه به طرحهای توسعه و افزایش فعالیتها نسبت به افزایش سرمایه اقدام نمود لذا در آذر ماه 1383 سرمایه شرکت به مبلغ پنجاه میلیارد ریال افزایش یافت . مرکز اصلی شرکت نیز از تهران به محل کارخانه واقع در مشهد کیلومتر5. 3  جاده مشهد به قوچان طبق موافقت مجمع فوق العاده مورخ25 بهمن 85 انتقال و در اداره ثبت شرکتها و مالکیت صنعتی مشهد به شماره 28483 به ثبت رسیده است . 
موضوع فعالیت شرکت طبق ماده 3 اساسنامه عبارت از تهیه و تولید انواع فرآورده های بتنی و سیمانی ، اکتشاف ، استخراج و بهره برداری و انجام معاملات بازرگانی که به موضوع شرکت مربوط باشد و نیز مشارکت با شرکتهای صنعتی و کلیه معادن معدنی در حدود موضوع شرکت . 
محل قانونی شرکت در مشهد کیلومتر5. 3 جاده مشهد به قوچان میباشد .', '', '', '', '1');
insert into [tblCustomerDesc] values(422, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تکین بتن', null, 'بتن آماده  ،    قطعات بتنی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(423, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صدر بتن', null, 'بتن آماده ،  تیرچه سیمانی  ،  ', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(424, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بنیان بتن', null, 'بتن آماده  و  قطعات بتنی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(425, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن  سخت  آریان', null, 'روکشهای سخت بتنی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(426, 2, null, null, null, '', '    /  /  ', '38495     ', '          ', null, null, '', null, null, 'www.', '', 'پوشش عمران حامی', 1, 'کفپوش صنعتی سخت', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(427, 2, null, null, null, null, null, null, null, null, null, 'طراح و مجری پروژهای عمرانی', null, null, null, null, 'مات بتن', null, 'بتن آماده ، فراورده های بتنی   ، بلوک سبک', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, 'شرکت مسکن سازان آبادگر توس یا مات بتن علاوه بر طراحی و اجرای پروژهای عمرانی ، تولید بتن اماده و ساخت بلوک سبک فومی PERELEX در ابعاد مختلف را نیز بر عهده دارد.
این شرکت با استفاده از مدرن ترین دستگاه های روز دنیا و اختلاط مرغوب ترین مصالح موجود در بازار با بهره گیری از فراینده دقیق مهندسی ساخت و تولید بتن توانسته است اطمینان و رضایت خاطر مشتریان خود را در کیفیت تولیدات جلب نماید.
تامین انحصاری بتن بزرگترین پارکینگ طبقاتی و تجاری خاورمیانه در میدان هفده شهریوه و اخذ اولین استاندارد بتن در بچینگهای موقت در شرق کشور  خودگواهی است در سطعی و تلاش مدیران متخصصان و پرسنل پرتلاش شرکت در ارتقای سطح کیفی محصولات و تولیدات بتنی مات بتن.
این شرکت مفتخر است که با تامین بتن بزرگترین پروژهای عمرانی سطح شهر مشهد گامی هرچند کوچک جهت تسریع در عمران و آبادانی پایتخت معنوی ایران بر دارد', null, null, null, null);
insert into [tblCustomerDesc] values(428, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'همکار بتن', null, 'بتن آماده', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(429, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سما بتن اسپادانا', null, 'بلوک سبک دیواری', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(430, 2, null, null, null, '', '/  /      ', '', '', null, null, 'دانش فنی ، طراحی و ایجاد خط تولید', null, null, 'http://www.lcpasargad.com', '', 'بتن سبک پاسارگاد', 1, 'بتن سبک و سنگین بلوکه بتنی سبک قطعات پیش ساخته بتنی پرسی ، بلوکه دیواری ، بلوکه سقفی ، جدول، کف پوش', '', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, 'در راستای نیاز مشتریان جهت محوطه سازی پروژه های ساختمانی بر آن شدیم تا با راه اندازی خط تولید قطعات پرسی اعم از انواع کف پوش و جدول در جهت تامین نیاز مشتریان خود گام برداریم، راه اندازی این خط تولید را اعلام نموده و مفتخریم تمامی نیازهای محوطه سازی پروژه های ساختمانی را با حداکثر توان خود برآورده نماییم', '', '', '', '');
insert into [tblCustomerDesc] values(431, 2, null, null, null, '', '/  /      ', '9064', '', null, null, 'مطابق با مبحث 18 و 19 مقررات ملی ساختمان ایران', null, null, 'www.pooladkhesht.com', 'info@pooladkhesht.com', 'پولاد خشت خراسان', 1, 'تولید کننده انواع بلوک های سبک بتنی CLC (فوم بتن) ساده - فاق و زبانه دار', '', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, 'شركت پولاد خشت خراسان به شماره ثبت 9064 تحت پوشش وزارت صنايع و معادن ايران با 35 سال تحقيق و تجربه در صنعت ساختمان اقدام به طراحي ‌‌‌‌‌‌‌‌‌‍ ِ ساخت و نصب و راه اندازي كارخانجات آجرمتعددي با ساختار تمام فولادي با ظرفيت توليد بالا در ايران و سراسر جهان نموده است . همچنين شركت در زمينه تحقيق و توسعه (R&D ) ِ ضمن تكميل و نوآوري در صنعت آجر موفق به طراحي و ساخت خط توليد جديدي از بتن سبك ( C.L.C ) شده است كه خود در ايران صنعتي نو ميباشد و تحولي عظيم در صنعت ساختمان ايجاد ميكند و هدف شركت ساخت با كيفيت مناسب با شرايط اقليمي و نياز مشتري با بهره گيري از تكنولوژي روز بوده و آماده راه اندازي كارخانجات آجر و بتن سبك در سراسر جهان ميباشد.', '', '', '', '');
insert into [tblCustomerDesc] values(432, 2, null, null, null, null, null, null, null, null, null, 'برای ساخت سقفهای بتن مسلح   ،  قالبهای سقف', null, null, null, null, 'پل بن آب', null, 'بلوک تو خالی   ،  قالبهای پلاستیکی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(433, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سبک سازان شرق ', null, 'بتن سبک  ،   هبلکس', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(434, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'بتن سبک گازی غیر اتو کلاو ،  بتن سبک فومی ، بلوک گازی ساده ، بلوک گازی ساده ، بلوک ساده فومی ،  بلوک فاق و زبانه فومی  ،   ', null, null, 'www.nikansanat-pars.com', '', 'گروه صنعتی بازرگانی نیکان صنعت پارس', 1, 'بتن سبک', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(435, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجتمع تولیدی ساختمانی مهر نگار', null, 'بلوک فوق سبک سیمانی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(436, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.Betonrazavi.com', '', 'بتن و ماشین قدس رضوی', 1, 'هبلکس ،  بتن اماده', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(437, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن شیمی ', null, 'بلوک سبک ،  افزودنهای بتن ، واتر استاپ  و  اسپیسر', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(438, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.partsaman.ir', '', 'پارت سامان', 1, 'پرلکس  ،  بلوک سبک', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(439, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پرین بتن آمود', null, 'بلوک سبک   ،  هبلکس', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(440, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'اعتماد بنای توس', null, 'بلوک سبک  ، سبکدانه لیکا', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(441, 2, null, null, null, null, null, null, null, null, null, 'اتو  کلاو  شده', null, null, null, null, 'سیلکس آرا', null, 'بتن سبک  ، سیلکس   ', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(442, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.betonjavid.com', 'Betonjavid@gmail.com', 'بتن سبک جاوید', 1, 'تولید کننده انواع بلوک های سبک بتنی', '', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(443, 2, '', 'هبلکس بیرجند', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.agr.sazman.omran.ir', '', 'بلکس بیرجند', 1, 'هبلکس', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(444, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن بسط توس', null, 'فراورده های بتنی   ،  جدول  ،  کفپوش', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(445, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.aptusiran.com', 'info@aptusiran.com', 'آپتوس ایران', 1, '1 . تیرچه و بلوک
2 . قطعات بتنی
3 . پانل بتنی
4 . بلوک بتنی
5 . جدول بتنی
', '                    ', 1, -1, '1391/12/18', 0, null, 1, '', null, null, null, null, 'شرکت " آپتوس ایران" در سال 1360 شمسی (1981 میلادی) به منظور انجام فعالیت تولیدی ، بصورت یک شرکت سهامی خاص تأسیس گردید. 
در طی روند پر شتاب سازندگی و گسترش صنعت ساختمان کشور ، چشم انداز و سیاستهای نوین این شرکت نیز مبتنی بر توسعه حیطه فعالیتها مورد بازبینی قرار گرفت و با اتکا به دانش و تجربه نیروی انسانی متخصص و ساختار مدیریتی آن، شرایط فعالیت در عرصه های مختلف کاری فراهم آورده شد.
در حال حاضر شرکت آپتوس ایران با تجربه سه دهه فعالیت در عرصه صنعت ساختمان، به عنوان یکی از شرکتهای فعال در صنایع بتن ، فولاد، ساختمان کشور شناخته شود .

اهم فعالیت های شرکت آپتوس را می توان در چند عنوان ذیل خلاصه نمود :

• فعالیت های تولیدی(همچون تولید بتن آماده و قطعات بتن و ...)

• سرمایه گذاری داخلی و خارجی.

• فعالیتهای بازرگانی شامل تأمین کلیه تجهیزات و مصالح ساختمانی

• فعالیتهای تحقیقاتی و پژوهشی(R&D)

• پیمانکاری عمومی با داشتن بالاترین رتبه های مرتبط کشور و بین المللی.

• ساخت پروژه های ساختمانی و عمرانی


لازم به ذکر است که مجموعه فعالیتهای سازمان در راستای عناوین مذکور با هدف تغییرات ، بصورت ساختار یک هلدینگ ، به شدت در حال پیگیری می باشد. به عبارت دیگر این مورد در آینده ای نه چندان دور مورد نظر می باشد که شرکت آپتوس به عنوان شرکت اصلی ، مجموعه شرکتهای تابعه که بصورت تخصصی در یکی از عرصه های فوق فعالیت می نمایند را بصورت ساختار هلدینگ پوشش دهد .
', '', '', '', '1');
insert into [tblCustomerDesc] values(446, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پرلیکا ', null, 'بلوک سبک  ،  سبک دانه صنعتی', null, 1, -1, '1391/12/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(447, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پوکه و  بلوک سبک پرلیکا', null, 'پوکه صنعتی ،  بلوک سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(448, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پوکه سازان خراسان ', null, 'تولید پوکه معدنی', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(449, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجد بنای توس', null, 'بلوک سیمانی سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, 'شرکت مجد بنای طوس به منظور داشتن نقشی کوچک در ساختن هرچه بهتر و سریع تر فردای ایران تاسیس گردید است که در مقایسه با آجر سفال و سایر بلوک های سبک از مزایای قابل قبولی برخوردار است این شرکت در جهت تحقق این آرمان ملی با استفاده از تجربیات قبلی و نیاز امروز صنعت ساختمان شروع به تولید محصولات مختلف از بتون سبک نمود. گفتی است این شرکت با توجه به تمامی موارد ذکر شده و همچنین تنوع اقلیمی موجود در کشور با توجه به تمامی موارد ذکر شده و همچنین تنوع اقلیمی موجود در کشورمان نسل جدیدی از انواع بلوک تولید شده و همچنین بتون سبک را با افزودن مصالحی از قبیل الیاف پلی پروپیلن ، یونولیت ، پوکه صنعتی (لیکا، پرلیت) پوکه معدنی و غیره ... تولید       می کند', null, null, null, null);
insert into [tblCustomerDesc] values(450, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پوکه معدنی غروه ', null, 'پوکه معدنی ', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(451, 2, null, null, null, null, null, null, null, null, null, 'فاقدار  ، زبانه دار', null, null, null, null, 'رسام سازه آریا توس', null, 'بلوک سبک دیواری', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(452, 2, null, null, null, null, null, null, null, null, null, 'کف سازی  ،  شیبب بندی', null, null, null, null, 'فوم بتن توس', null, 'بتن سبک ، پانلهای جداکننده غیر بارور ، ', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(453, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بلوک سبک    C L C   -   L G B', null, 'تولید کننده بلوکهای سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(454, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سبک بنای گلستان', null, 'بتن سبک  ،  بلوک  سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(455, 2, null, null, null, '', '    /  /  ', '40819     ', '          ', null, null, '', null, null, 'www.', '', 'آشیان سازه سناباد', 1, 'بلوک سبک  CLC', '                    ', 1, -1, '1391/12/19', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(456, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'هومان صنعت ایاز', null, 'بلوک بتنی سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(457, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نگین بتن پردیس', null, 'بلوک سبک    ،     C L C', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(458, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن سبک نوین ', null, 'بلوک سبک  C L C  ', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(459, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن سبک طاق آهنگ', null, 'بلوک سبک ،   C L C', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(460, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فوم بتن بارثاوا', null, 'بلوک سبک   C L C     ', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(461, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.aratabeton.clcir.com', '', 'بتن سبک آرتا ', 1, 'بلوک سبک     C L C   ', '                    ', 1, -1, '1391/12/19', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(462, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتن سبک مهتا توس', null, 'بلوک سبک   ،    C L C   ', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(463, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مصالح نوین ساختمانی', null, 'بلوک سبک ،     perlex', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(464, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سبک بلوک نوین بارثاوا', null, 'بلوک سبک هوادار', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(465, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سازه گستر', null, 'بلوک سبک  ، بتن سبک', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(466, 2, null, null, null, '', '    /  /  ', '38855     ', '          ', null, null, '', null, null, 'www.', '', 'ارشیا فوم توس', 1, 'تری دی پانل ، فوم قالب سقفی', '                    ', 1, -1, '1391/12/19', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(467, 2, null, null, null, '', '    /  /  ', '4241      ', '          ', null, null, '', null, null, 'www.', '', 'جهان فوم اریا', 1, 'بلوک سقفی نسوز ، ورقهای پلی استایرن ، پانل های دیواری', '                    ', 1, -1, '1391/12/19', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(468, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بارون ', null, 'پانل سه بعدی ،  بلوکه های سقفی  ، ساندویچ پانل  ، کامپوزیتهای دکوراتیو', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(469, 2, '', 'سوپر پانل', null, '', '    /  /  ', '          ', '          ', null, null, 'بدون نیاز  به  تیرچه پیش ساخته                      دیوار باربر    ، پارتیشن', null, null, 'www.', '', 'سوپر پانل', 1, ' اجرای  ساختمانهای   بتن مسلح  با قالب  عایق ماندگار مسطح پانلی', '                    ', 1, -1, '1391/12/19', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(470, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1391/12/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(471, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'توس پانل', null, 'دیوار سبک ،  بلوک سقفی  پلی استایرن    و   بلوک دیوار ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(472, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع مفتولی تهران گستر', null, 'تری دی پانل  ،  بلوک پلی استایرن سقفی ،   توری های مش  ، اتصالات', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(473, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پارت فوم ابتکار ', null, 'بلوکهای سقفی ورقی  و  پلاستوفوم ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(474, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.sefidfoam.com', '', 'سفید فوم ', 1, 'تولید پانلهای سقفی و ورقهای عایق ', '                    ', 1, -1, '1391/12/20', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(475, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.mashhadpanel.com', '', 'مشهد پانل', 1, 'پانل سه بعدی  (  تی ری دی  )    بلوک سقفی', '                    ', 1, -1, '1391/12/20', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(476, 2, null, null, null, null, null, null, null, null, null, 'خط کامل پلاست فوم', null, null, null, null, 'فوم ایران ', null, 'فوم  سقفی  ،   تی ری دی پانل ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(477, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کاشانه بتن مقاوم', null, 'دیوارهای سه بعدی ،  تی ری دی پانل ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(478, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جنرال پانل', null, 'ساندویچ پانل دیواری سبک بلوک سقفی پلاستو فوم  ، ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(479, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کیان ', null, 'ساندویچ پانل  ، سقفی   و  دیواری', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(480, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'هامون ', null, 'دیوارهای پیش ساخته سبک سه بعدی  ،  بلوکه های سقفی  ،  تی ری دی پانل', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(481, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایستا فوم', null, 'تولید پانل ، بلوک سبک ، دیوارهای پیش ساخته   سبک', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(482, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نوین پانل شرق', null, 'پلاست فوم سقفی ،  دیوار سه بعدی            تری دی  پانل ', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(483, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه فوم بتن باران', null, 'بلوک سبک ، فوم بتن', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(484, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دفتر مرکزی', null, '', null, 4, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, '7');
insert into [tblCustomerDesc] values(485, 2, null, null, null, '', '    /  /  ', '39156     ', '          ', null, null, 'خط تولید  و  تامین ماشین آلات ', null, null, 'www.', '', 'کار گستران نواندیش سما', 1, 'تی ری دی  پانل ، پانل سه بعدی ، قالب سقفی  ', '                    ', 1, -1, '1391/12/20', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(486, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.clc.ir.com', '', 'انجمن صنفی تولید کنندگان بلوک سبک', 1, 'بتن سبک سلولی ، بتن سبک C L C   بتن آماده سبک', '                    ', 1, -1, '1391/12/20', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(487, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پایا پانل ', null, 'دیوار پیش ساخته ، تیریدی پانل، سوپر پانل', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(488, 2, null, null, null, '', '/  /      ', '356801', '', null, null, 'بتن سبک', null, null, 'http://www.mihan-concrete.com/', 'info@mihan-concrete.com', 'آسان سازان بتن میهن', 1, 'ای پی اس   پلی استارین منبسط شده', '', 1, -1, '1391/12/20', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(489, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع عمرانی ایستا', null, 'اسکلتهای سبک فلزی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(490, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع پروفیل سینا شرق', null, 'پروفیل فولادی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(491, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پارس کشش', null, 'انواع میلگرد  و  شش پر', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(492, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پروفیل آسیا ', null, 'پروفیل فولادی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(493, 2, '', 'ذوب آهن اصفهان', null, null, null, null, null, null, null, '', null, null, null, null, 'ذوب آهن اصفهان', null, 'آهن شاخه ، شمش ، ورق', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(494, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجتمع فولاد خراسان ', null, 'فراورده های فولادی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(495, 2, '', 'آهن فولاد جهان سپاهان ', null, null, null, null, null, null, null, 'مجری ساخت سوله و سازه های فلزی', null, null, null, null, 'آهن فولاد جهان سپاهان ', null, 'پروفیل فولادی  ، مورد استفاده در  پنجره دو جدار ه                                                           پروفیل تقویتی گالوانیزه', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(496, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دنا سوله  و  صنعت  شرق', null, 'تولید سوله ، استراکچر های فلزی ، پل ها  و   دکل های فلزی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(497, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مشهد کوثر', null, 'سازه های سبک سرد نود شده', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(498, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجتمع فولاد آلیاژی اصفهان', null, 'تولید انواع   فولادهای آلیاژی  در گروه های مختلف', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(499, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهندسی خوردگی  غدیر      (گالواتور ) ', null, 'تولید میلگردهای مقاوم در برابر خوردگی', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(500, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نورد نصر ابر کوه', null, 'انواع میلگرد صنعتی ، میلگرد عاجدار ، تسمه سنگین', null, 1, -1, '1391/12/20', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(501, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فولاد نطنز', null, 'تولید انواع میلگرد شاخه و کلاف فولادی  ،      تولید شمش فولادی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(502, 2, null, null, null, null, null, null, null, null, null, 'الیاف فولادی جایگزین مش در سقفهای عرشه فولادی', null, null, null, null, 'صنایع مفتولی زنجان ', null, 'تولید کننده الیاف فولادی بتن ', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(503, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پروفیل  راگا', null, 'تولید کننده پروفیل سرد نورد شده   L S F  ', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(504, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عرش دامون', null, 'تولید کننده  و   اجرای   متال دک', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(505, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عرش دک', null, 'تولید تیرچه بتنی و فلزی   و  اجرای سقف  ،   کامپوزیت و سقفهای عرشه فولادی   و  اسکلت فلزی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(506, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.akamparmis.com', '', 'آکام پارمیس', 1, 'سقفهای مرکب عرشه فولادی', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(507, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.K S D rof', '', 'کی  اس  دی  روف', 1, 'سقف کامپوزیت با ورق گالوانیزهذوزنقه شکل   آجدار بدون قالب بندی  و  میلگرد ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(508, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'های دک', null, 'سقفهای عرشه فولادی مرکب  ( متال دک )', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(509, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهندسی آیکار', null, 'سقفهای عرشه فولادی  ( متال دک  )            تولید گلمیخهای برش گیر', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, 'شرکت مهندسی   آیکار   با هدف ارائه خدمات  مشاوره ،  طراحی و اجرای پروژه های ساختمانی در سال   1386  تشکیل شده است  .

فعالیت عمده این تیم کاری متمرکز بر ساختمان  وتاسیسات  با تکیه بر توانمندی  نیروهای فنی و اجرایی مجموعه های فوق الذکر میباشد  که شامل   26  نفر  نیروی کارشناس ارشد  و کارشناس در رشته های  معماری  ، عمران  ،  مکانیک   ، و  برق  و  همچنین بالغ بر  20   اکیپ اجرایی  در زمینه ساختمان  و تاسیسات است  . 
طراحی ، محاسبه  ،  اجرا و تامین ملزومات کلیه خدمات مربوط به سازه  و  تاسیسات ساختمانی مجموعه کاملی از خدمات این گروه را تشکیل می دهد  . ', null, null, null, null);
insert into [tblCustomerDesc] values(510, 2, '', 'سقف نکوسازان', null, null, null, null, null, null, null, '', null, null, null, null, '', null, 'سیستم قالب مدولار و پنجره ها ', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(511, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'سقف  کاذب  ، سقف مشبک', null, null, 'www.ARNA1010.com', '', 'مهندسین بناگستر  آرنا', 1, 'سقف کامپوزیت با عرشه فولادی ، متال دک ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(512, 2, null, null, null, null, null, null, null, null, null, 'با عرض مفید 960میلمتر', null, null, null, null, 'پایا دک ', null, 'تولید  کننده ورقهای عرشه فولادی ', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(513, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.p f k -co.com', '', 'پوشش فلز خشایار ', 1, 'تولید کننده و مجری سقفهای مرکب عرشه فولادی ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(514, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع فولاد مسیحا', null, 'سقفهای دک استیل  (عرشه فولادی  مرکب )', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(515, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پل دک  سازه', null, 'تولید سقفهای عرشه فولادی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(516, 2, null, null, null, null, null, null, null, null, null, 'تولید کننده و مجری', null, null, null, null, 'کیان سهاد ', null, 'سقف دال  عرشه مرکب ', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(517, 2, '', 'سازه های کامپوزیت  ایستا ', null, '', '    /  /  ', '          ', '          ', null, null, 'سقف کامپوزیت  عرشه فولادی', null, null, 'www.esta.ir', '', 'سازه های کامپوزیت  ایستا ', 1, 'تولید ساختمانهای پیش ساخته  با قالبهای  ساده  مرکب  فولادی -  بتنی  ، همراه دیوار برشی  بتن ارمه ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(518, 2, '', 'پارسیان قالب شرق', null, '', '    /  /  ', '          ', '          ', null, null, 'تجهیزات قالب بندی  فلزی  بتن                      متعلقات  قالب بندی                                     جکهای  سقفی                                           داربستهای مدولار', null, null, 'www.EAST-PARSIAN-GHALEB.COM', '', 'پارسیان قالب شرق', 1, 'تولید تجهیزات قالبهای فلزی', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(519, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.SANSAZEH.COM', '', 'سان سازه ', 1, 'تولید و اجرای قالب سقف   سان دک  بار بر', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(520, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.KURT.IR', '', 'قطعه و ساختمان  کرت', 1, 'تولید کننده عایق ماندگار بتن', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(521, 2, null, null, null, null, null, null, null, null, null, '1 - قالبهای مدولار   2 - قالبهای پلای وود      3 - داربست آویز      4 - بلت مهاری                 5 - قالب بندی شالوده   6 - سیستم قالب بندی دیوار نما 7 - سیستم قالب بندی بالا رونده', null, null, null, null, 'گروه صنعتی بوذرجمهر', null, 'صنایع و تجهیزات قالب های فلزی بتن', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(522, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.PArstircheh.com', '', 'پارس تیرچه', 1, 'تولید کننده خرپا  ، تیرچه سقف  سبک با  سیستم مکانیزه  ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(523, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.cobiaxiran.com', '', 'کوبیاکس ایران', 1, 'قالب بندی سقف به روش خاص', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(524, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'دهنه بزرگ ، ارزانی  ،  سادگی اجرا  ، سبک سازی  ،  کاهش تعداد  ستون  ، ایمنی بالا  ، اجرا  بدون شمع', null, null, 'www.beygit.com', '', 'خلاقان جوان شرق', 1, 'سقف بیگیت', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(525, 2, null, null, null, null, null, null, null, null, null, 'تولید  ، فروش ،  اجرا', null, null, null, null, 'حامی تیرچه', null, 'تیرچه های کرومیت', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(526, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'ماشین آلات ساختمانی ', null, null, 'www.sgmedhat.com', '', 'سازه گستر مدحت', 1, 'سازنده قالبهای تونل فوم  ، قالب فلزی بتن ، ', '                    ', 1, -1, '1391/12/21', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(527, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سهند سازه ', null, 'تولید جک و قالبهای ساختمانی و تجهیزات بتنی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(528, 2, null, null, null, null, null, null, null, null, null, 'قالب بندی  پیشرفته سازه بتنی', null, null, null, null, 'آپادانا بنا', null, 'قالبهای ساختمانی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(529, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فولاد سازه خزر ', null, 'تولید خرپای میلگردی  ،  تیرچه  به روش اتوماتیک', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(530, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه صنعتی پادیر', null, 'تیرچه پادیر ، تولید تیرچه های فلزی بتنی ، سفالی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(531, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پرچین', null, 'پوشش پیشرفته  سقفهای شیبدار', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(532, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الوند سازه بنا گستران پارسیان', null, 'تیرچه فولادی ، تولید انواع یونولیت  صنعتی و ساختمانی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(533, 2, null, null, null, null, null, null, null, null, null, 'تولید لوله های آب رسانی تحت فشار از مواد اولیه سیمان  و  الیاف', null, null, null, null, 'ایرانیت', null, 'تولید انواع ورقهای موجدار   ، پوشش سقفهای صنعتی   ، و  ساختمانی', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(534, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بتون آرا  پیشه ', null, 'قالبهای فلزی ساختمان', null, 1, -1, '1391/12/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(535, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پری پارس', null, 'تجهیزات قالب بندی بتن  و  داربستهای هوشمند ، ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(536, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پل بن آب  ', null, 'ارائه دهنده  سقفهای یوبوت در ایران', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(537, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کلالیت', null, 'تیرچه و قالب نوین سقفی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(538, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.mpco1380ir', '', 'مشبک پردازان ', 1, 'سازنده تجهیزات قالب بندی بتن   ،  سیستم های   داربستی  ،   قالبهای  یکپارچه', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(539, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kormitpars.r', '', 'کرمیت پارس ', 1, '', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(540, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.tirch-co.com', '', 'شهر سازان ', 1, 'تولید کننده انواع تیرچه کرمیت ', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(541, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ملامینه سروستان ', null, 'سه میل لمینت   ، نئوپان ملامین   M DD F   ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(542, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مبلمان پاندا', null, 'تولید کننده تخصصی میز و صندلی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(543, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'استیل گاز', null, 'تجهیزات آشپزخانه صنعتی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(544, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کالای چوب هخا منش', null, 'تولید کالای چوب', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(545, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.nks.ir  ', '', 'نور خاور شید', 1, 'نوار P V C    لبه   M D F    اپن', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(546, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه صنعتی بهزاد ', null, 'نرده استیل و پلکان داخلی ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(547, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.barayandgroup.com', '', 'ایده پژوهان مگا تروییک برایند', 1, 'لوستر معلق متحرک ، گوی میله ای', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(548, 2, '', 'کابینت تولیکا', null, null, null, null, null, null, null, 'لوازم اداری ', null, null, null, null, 'کابینت تولیکا', null, 'تولید کابینت تولیکا با بکارگیری  محصولات بلوم', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(549, 2, '', 'شیمی آسایش پردیس ', null, null, null, null, null, null, null, 'کفپوش رزینی ، کفپوش صنعتی پایه سیمانی ،  ماستیگهای درز بندی  ،  پوششهای محافظ و ضد خوردگی', null, null, null, null, 'شیمی آسایش پردیس ', null, 'کفپوش صنعتی ، پوششهای ضد خوردگی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(550, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پپسا', null, '', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(551, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آلومین', null, 'تولید پانلهای آلومنیوم کامپوزیت', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(552, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نما سازان  امروز', null, 'ورقهای کامپوزیت الومنیوم  ، ساندویچ پانل دکوراتیو', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(553, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'روانساز راه ابریشم', null, 'پرده کرکره ایزوله بین شیشه دوجداره   ، درب  و  پنجره آلومنیوم ،     طراحی تولید  و  نصب،  پارتیشن تا شو  ، داربست آلومنیوم متحرک ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(554, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'روکش گچ فردو', null, 'پانل گچی ،  تایل روکش  P V C   بتونه', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(555, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'چوب پلاست  ما مطیر', null, 'نمای ساختمان  ، کفپوش  ،  کنار استخر  ، قرنیز  ،  صفحه  کابینت', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(556, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بیصدا', null, 'تولید کننده سقفهای کاذب آلومنیوم  و  گالوانیزه  ، سازه های سقف  و  دیوار  خشک   ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(557, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تکنو گارد استیل', null, 'انواع  پله های پیش ساخته  درب  و نرده های استیل ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(558, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لونا وود', null, 'چوب خالص  مخصوص نمای ساختمان  و  کفپوش  فضای  باز ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(559, 2, '', 'چوب پلاست      (توسکا  )', null, null, null, null, null, null, null, 'پروفیلهای  کف پوش  سقف نما ،  نرده  قرنیز   مبلمان شهری  ، بر پایه پلیمر های مختلف', null, null, null, null, 'چوب پلاست  ', null, 'تولید گرانول  و  پروفیلهای کامپوزیت  چوب  پلاستیک', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(560, 2, '', 'پرده  پردیس', null, null, null, null, null, null, null, 'درب کشویی چرمی  ، پرده بامبو (حصیری )  پرده شید (بالارو )  و  پلیسه', null, null, null, null, 'پرده  پردیس', null, 'پرده عمودی  ، افقی  ، آلومنیوم  ، چوبی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(561, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه صننعتی رض  کو  ', null, 'طراحی تولید  و  تجهیز سالونهای  اجتماعات  سینما  و آمفی تاتر', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(562, 2, '', 'دانا پرداز سیستم نوین آرارات', null, null, null, null, null, null, null, 'سبکترین سفقف با  وزن کمتر از   100  گرم     در هر متر مربع                                             قابلیت اجرا  در   70    متر بصورت  یکپارچه', null, null, null, null, 'دانا پرداز سیستم نوین آرارات', null, 'نماینده انحصاری سقفهای کش سان  D P S   در ایران   ،  طراح  و  مجری دکور داخلی  و نما', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(563, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پارسیان آذین زند', null, 'ککاغذ دیواری ساخت آلمان', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(564, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کو بو آ', null, 'پانلهای  P V Cجهت دکور داخلی', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(565, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.arashco', '', 'مبلمان اداری آرش', 1, 'ورقهای ملتی استایل اتریش', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(566, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تکال گستر ', null, 'کف کاذب   ،  سنگفرش خشک', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(567, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.dikaasia.com', '', 'دیکا آسیا', 1, 'طراحی تولید و اجرای  پارتیشن های اداری     و   پارتیشن تک جداره تمام شیشه', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(568, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرمان ', null, 'تولید رنگ پودری الکترو استاتیک  ، ورقهای کامپوزیت  آلومنیومی ', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(569, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', '', 'آکپا  ایران', 1, 'تولید پروفیلهای اختصاصی  آلومنیومی با رنگ الکترو استاتیک', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(570, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'کفپوش پارکت ', null, null, 'www.nat-wpc.com', '', 'تعاونی دانش بنیاد نیل افشان توس', 1, 'انواع گرانول و پروفیل  نانو چوب پلاست', '                    ', 1, -1, '1391/12/22', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(571, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آلمیکو ', null, 'تولید سقف کاذب  و  نمای  آلومنیوم', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(572, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مارال پنجره شرق', null, 'در  و  پنجره آلومنیوم  و   U P V C  نماهای  شیشه ای', null, 1, -1, '1391/12/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(573, 2, '', 'آلو  پارس', null, null, null, null, null, null, null, '', null, null, null, null, 'آلو  پارس', null, 'پانلهای کامپوزیتی آلومنیوم', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(574, 2, '', 'پوشش  سازان شرق', null, null, null, null, null, null, null, 'ذوزنقه ای  ، کرکره ای  ، شادولاین', null, null, null, null, 'پوشش  سازان شرق', null, 'ورقهای پوشش سقف و بدنه ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(575, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بازرگانی وارسته', null, 'تولید و فروش  مصالح گرانولیت -  کنیتکس  -   و  پوششهای سلولزی', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(576, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شادی رنگ ایساتیس', null, 'انواع رنگ ساختمانی ، رنگهای استاتیک', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(577, 2, '', 'سورا', null, null, null, null, null, null, null, '', null, null, null, null, 'سورا', null, 'نمای آلومنیوم  ،  دبهای اتوماتیک   ،  صنایع روشنایی', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(578, 2, '', 'آورده های چوبی کارینا ', null, null, null, null, null, null, null, '', null, null, null, null, 'آورده های چوبی کارینا ', null, 'کفپوش  ،  پارکت  ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, 'ادمونتر موکا مجموعه ای نفیس و بی همتا از کفپوشهای چوبی است که طیف وسیعی از رنگهای تیره که در حال حاظر بسیار مورد تقاضا می باشند  را شامل می شوند . ما با بهره گیری از فرایند حرارت دهی مبتکرانه  و منحصر بفرد خود  توانسته ایم چوبهای عریض اروپایی را در رنگهای بسیار گرم و با شکوه عرضه نماییم . بطور معمول حرارت دادن چوب در دمای بیش از  200  درجه سانتیگراد  سبب تیره تر شدن رنگ چوب میشود  . با تنظیم شدت و مدت زمان حرارت دهی  رنگرنگهای تیره متفاوتی قابل دستیابی است  .  این فرایند طبیعی مارا قادر ساخته است تا دامنه انتخابی گسترده ای از کفپوشهای تیره رنگ را بدون استفاده از هر گونه مواد شیمیایی و یا رنگی  ارائه نماییم .', null, null, null, null);
insert into [tblCustomerDesc] values(579, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'رای آوند ', null, 'ارائه دهنده ی سیستمهای  کابینت پیش ساخته ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(580, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'راسا', null, 'ماکت  پروژه ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(581, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آذران پلاستیک', null, 'پانل دو جداره کامپوزیتی   ، دیوار پوش سقف کاذب', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(582, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مجریان اندیشه برتر', null, 'آب  نما', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(583, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آلو  ویستا', null, 'تولید ورق آلومنیوم   کامپوزیت ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, '    شرکت تولیدی صنعتی ویستا صنعت پارت  (صنعت مدرن ساختمان سابق )  فعالیت خود را از سال  1382  در زمینه واردات ، طراحی و اجرای ورقهای آلومنیوم کامپوزیت   aluband  روسیه بصورت انحصاری در سراسر کشور آغاز نموده است .                                                                                                                                                                                                                                         
اکنون پس از سالها کسب تجربه این شرکت با همکاری شرکت    gencellinternational Corp . انگلستان  و با اهداف رسیدن به خودکفایی ، استقلال صنعتی ، ایجاد اشتغال  ، فراهم نمودن موجبات توسعه پیشبرد امور صنفی  و  استفاده بهینه از نیروی انسانی و امکانات بالقوه در راستای سیاستهای اقتصادی کشور و ارائه خدمات مطلوب به انبوه سازان ، معماران و مهندسان محترم اقدام به تولید ورقهای آلومنیوم کامپوزیت با کیفیتی قابل رقابت با انواع مشابه اروپایی با نام تجاری   (آلو  ویستا  ALUVISTA  )  نموده است  .                                                                                                                                                                                                                                                                                                                                                                          شرکت تولیدی آلو ویستا صنعت پارت  تاکید فراوانی بر علم و فن آوری و نیز کنترل کیفی دقیق دارد . کلیه مواد اولیه و محصولات تولیدی این گروه با دقت به کمک تجهیزات وارد شده از انگلستان و آلمان مورد تستو آزمایش قرار میگیرند .این تستها عبارتند از تست مقاومت در برابر پوسته شدن در دمای  180 درجه  و  آزمایش خصوصیات دینامیکی مواد خام با استفاده از دستگاه پیشرفته تستر یونیورسال ، تست اختلاط رنگ  ،  تست مقاومت در  برابر پاشش نمک  ،  تست مقاومت در برابر آب جوش  ،  تست ضخامت لایه پوشش  ، تست مقاومت در برابر ضربه و آزمایشهای دیگری که کیفیت  درجه یک محصولات   آلو ویستا   را تضمین می کند  . 

ظرفیت این واحد تولیدی در فاز اول برابر با    5400  تن  در سال معادل یک ملیون و دویست هزار متر مربع می باشد . 
از آنجایی که نام تجاری محصول ما آلو ویستا از ویستا که ریشه ی  کلمه اوستا به معنی انش و فرهنگ گرفته شده است امید است بتوانیم با دانش و درایت اصیل ایرانی و به همراه تکنولوژی روز گامی موثر در جهت پیشبرد صنعت مدرن ساختمان برداریم .  ', null, null, null, null);
insert into [tblCustomerDesc] values(584, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بلکا', null, 'پوشش نما ،  جایگذین  رنگ  و  کاغذ دیواری', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(585, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنعت چوب شمال ', null, 'نئوپان خام  ، نئوپان ملامینه   و    M D F  ملامینه', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(586, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کیان چوب ', null, 'تولید کامپوزیتهای چوبی  ، پایه pre   ،  قرنیز  ، دیوار پوش ،   کفپوش', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(587, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سنا', null, 'M D F     سه میل با روکش ملامینه ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(588, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'جایگذین گچبری سنتی', null, null, 'www.azarantile.com', '', 'تایل  آذران پلاستیک ', 1, 'تولید کننده تایلهای سقف کاذب  آکوستیک ', '                    ', 1, -1, '1391/12/23', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(589, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.tehrannoorgir.com', '', 'تهران نورگیر  ', 1, 'نورگیرهای سقفی', '                    ', 1, -1, '1391/12/23', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(590, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرا  در', null, 'دربهای ضد سرقت  و  فانتزی', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(591, 2, '', 'سازه های پیش ساخته پرچین ', null, null, null, null, null, null, null, 'صفحه سیمانی الیاف دار', null, null, null, null, 'سازه های پیش ساخته پرچین ', null, 'نمای مدرن  فایبراسمنت ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(592, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.aluparab.com', '', 'آلو پاراب', 1, 'پانل کامپوزیت آلومنیوم', '                    ', 1, -1, '1391/12/23', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(593, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'نما و سقف کاذب آلومنیوم ', null, null, 'www.KadKan.com', '', 'کدکن', 1, 'تولید انواع ورق متال و غیره ', '                    ', 1, -1, '1391/12/23', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(594, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مدولار   دکینگ', null, 'کفپوش چوبی مدولار   ،  نمای  چوبی ساختمان  ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(595, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پاپیروس', null, 'کاغذ دیواری ،  پارکت  ،  کفپوش   ', null, 1, -1, '1391/12/23', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(596, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع p v c', null, 'پانلهای دوجداره   U P V C  و اتصالات  مربوطه ', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(597, 2, null, null, null, null, null, null, null, null, null, 'نماینده انحصاری    PEN  PAK   ترکیه ', null, null, null, null, 'نما پوشش خراسان ', null, 'U P C                                                                      پوشش جدار  خارجی  (  پدسایدینگ)', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(598, 2, null, null, null, null, null, null, null, null, null, 'وارد کننده سقفهای کاذب  -  تایل گچی  با   روکش     p v c  ', null, null, null, null, 'نما پلاست رباط', null, 'دیوار پوش پلی استایرن  و  p v c   ،  قرنیز   و  ابزار آلات   ،  سقف کاذب', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(599, 2, null, null, null, '', '    /  /  ', '41287     ', '          ', null, null, 'تولید کننده و مجری ', null, null, 'www.', '', 'سپید آلومنیوم اعتماد خراسان', 1, 'درب و پنجره آلومنیوم  و نمای کریستین وال   و  نمای ورقهای کامپوزیت', '                    ', 1, -1, '1391/12/27', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(600, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'داتیس', null, 'دیوار پوش و سقف کاذب   P V C  ', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(601, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'بسپار نما بنا ', null, 'ابزار الات   P V C   ', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(602, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پلیمر طلایی  یزد', null, '', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(603, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.varaghkar.com', '', 'ورق کار', 1, '', '                    ', 1, -1, '1391/12/27', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(604, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.kabirpanel-co.com', '', 'کبیر پانل ', 1, 'پانل  ،  دیوار پوش ،  سقف  پوش', '                    ', 1, -1, '1391/12/27', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(605, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'گلدن مجیک  :  پوششهای نوین دکوراتیو   پشت چسب دار                                            پوکامیکس  :   محصولات دکوراتیو  پیش ساخته  سبک  از جنس پلی ییورتان                ', null, null, 'www.ajirakborj.com', '', 'آژیراک برج ', 1, 'پوششهای نوین دکوراتیو آلومنیومی  ،  پشت چسب دار', '                    ', 1, -1, '1391/12/27', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(606, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آذر نسب', null, 'پایه نرده های استیل', null, 1, -1, '1391/12/27', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(607, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع جوشکاری و الکترود ', null, 'تولید انواع الکترود جوشکاری', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(608, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.j.v.o.c.ir', '', 'جوش و اکسیژن  ایران ', 1, 'تولید الکترود جوشکاری', '                    ', 1, -1, '1391/12/28', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(609, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جوش گستر آسیا ', null, 'تولید الکترود  و  سیم جوشکاری', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(610, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تیک تاک', null, 'تولید  سیم جوش - مفتول  -  میخ پرچ', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(611, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترود یزد ', null, 'الکترود   -   سیم جوش ', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(612, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترود رضا', null, 'الکترود  و جوش اکسیژن', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(613, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترود لیزر ', null, 'انواع الکترود  جوشکاری  ،  ساختمانی  ،  صنعتی   و  تولید   انواع رابیتس', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(614, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترود پارس', null, 'الکترود ف سیم جوش  با  گاز  محافظ   c o2', null, 1, -1, '1391/12/28', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(615, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'اسپیسر', null, null, 'www.pozzolan.com', '', 'پوزولان', 1, 'فاصله نگهدار پلاستیکی ', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(616, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.spacer-rp.com', '', 'آرپیکو    (روبین تراش )', 1, 'تولید کننده  اسپیسر پلاستیکی بتن', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(617, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'افزودنی های بتن', null, null, 'www.capcoir.com', '', 'همگرایان تولید', 1, 'اسپیسرهای پلاستیکی بتن ', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(618, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.rbbco.com', '', 'رزین بتن  برتر ', 1, 'افزودنی های بتن ', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(619, 2, null, null, null, null, null, null, null, null, null, 'تولید کننده مجاز   ژل   میکرو   سیلیس', null, null, null, null, 'فن اوران بتن ایرانیان', null, 'مواد افزودنی بتن ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(620, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.betonpas.com', 'info@betonpars.com', 'شرکت شیمیایی بتن پاس مشهد', 1, 'تولیدکننده انواع افزودنی های بتن و چسبهای ساختمانی', '', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, 'شرکت بتن پارس از سال 83 فعالیت خود را در زمینه اجرای سازه های بتنی ، ترمیم بتن ، آب بندی و تقویت سازه های بتن آرمه آغاز نمود و در سال 85 موفق به اخذ پروانه بهره برداری از اداره کل صنایع و معادن استان فارس جهت تولید مواد شیمیایی ساختمان گردید.
این شركت در واحد تحقیق - توسعه وتولید خود مجهز به تجهیزات  آزمایشگاهی- کارگاهی پیشرفته بوده وبا بهره گیری از افرادی متخصص و مجرّب  در زمینه تولید مواد افزودنی بتن و دیگر مواد شیمیایی ساختمان فعالیت دارد .ما اعتقاد داریم که می توانیم به شما در زمینه بالا بردن کیفیت سازه های بتنی و نیز اصلاح عیوب احتمالی آنها کمک نماییم .', '', '', '', '');
insert into [tblCustomerDesc] values(621, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'کفپوش سخت صنعتی  ، الیاف  جاگذین آرماتور  مخصوص کف سازی ، ایزولاسیون صنایع بتنی ،  عایق پلیمری سرد  جایگذین ایزوگام ', null, null, 'www.peypolsazan.com', '', 'پی پل سازان', 1, 'افزودنی های بتن ،  عایقهای پلیمری ', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(622, 2, null, null, null, null, null, null, null, null, null, 'ژیکاتکس ( ماده رنگی سیمانی  جهت نما سازی', null, null, null, null, 'صنایع شیمیایی  ژیکاوا ', null, 'افزودنی های بتن  ،  چسب کاشی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(623, 2, null, null, null, null, null, null, null, null, null, 'روان کننده  ، چسب', null, null, null, null, 'مصالح نوین ', null, 'افزودنی های بتن ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(624, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ابتکار شیمی البرز ', null, 'افزودنی های بتن  ،  مواد شیمیایی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(625, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع شیمیایی  چسب  سامد ', null, 'رزین اوره  ، جسب چوب  ،  چسب موکت', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(626, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.kimiyaneshan.com', 'info@kimiyaneshan', 'کیمیا نشان تاک', 1, 'مواد افزودنی بتن', '', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(627, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سازه  و  راه ایرانیان ', null, 'افزودنیهای بتن  ،  چسب ساختمانی  ، ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(628, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عمران پارسه آریا ', null, 'افزودننی های بتن  ، ساختمانی بازرگانی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(629, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'فوق روان کننده   ، رنگ نمای بتن  ،  رنگ استخری  ، آب بند سطوح ، چسب کاشی      ضد یخ بتن', null, null, 'www.bcs-jahedi-com', '', 'بتن شیمی ', 1, 'افزودنی های بتن  ، واتر استاپ  و  اسپیسر   بلوک سبک', '                    ', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(630, 2, null, null, null, '', '/  /      ', '', '', null, null, 'چسب کاشی سرامیک - چسب پودری  ، چسب خمیری  ،  ملات بر پایه سیمان و  پلیمر ، روان کننده  بتن', null, null, 'www.surelevel.com.au', 'info@sureleveliran.com', 'شورلول ایران', 1, 'تولید محصولات شیمیایی ساختمان با مشارکت شورلول استرالیا', '', 1, -1, '1392/01/04', 0, null, 1, '', null, null, null, null, 'شرکت شور لول(Sure Level) استرالیا با 20 سال سابقه فعالیت در زمینه تهیه فرمولاسیون و تولید مصالح شیمیایی ساختمان در چند سال اخیر با سرمایه گذاری در کشورهای      خاور میانه و شمال آفریقا از جمله ایران،امارات متحده عربی، عربستان سعودی، سوریه، لیبی، مصر و اربیل عراق قصد دارد بازار خود را در این منطقه تثبیت کند. محصولات شورلول استرالیا در بزرگترین ومرتفع ترین برجهای جهان مورد استفاده قرار گرفته اند که می توان برج یوریکا ( Eurika tower ) در ملبورن استرالیا با ۹۸ طبقه مسکونی و برج دبی ( Dubai tower) در امارات متحده عربی را به عنوان مثال ذکر نمود. شرکت شورلول استرالیا با انتقال دانش فنی خود به شرکتهای تابعه خود در خاور میانه و شمال افریقا توانسته است سهمی در ارتقای این صنعت در منطقه داشته باشد. 
شرکت شور لول استرالیا با سرمایه گذاری مستقیم و به همراه سرمایه گذاری شرکای ایرانی خود اقدام به تاسیس شرکت شورلول ایران در سال ۲۰۰۶ نمود. شورلول ایران پس از دو سال کوشش فراوان با همکاری کارشناسان استرالیایی و ایرانی در بهار 1387 به بهره برداری رسیده است. شورلول ایران افتخار دارد با محصولات خود که بر پایه آخرین فن آوری روز دنیا تولید می شوند در ارتقاء صنعت ساختمان گامی نوین بردارد. 
شور لول ایران با استفاده از سرمایه های داخلی و دانش فنی شور لول استرالیا توانسته است محصولات خود را با کیفیتی برتر و قیمتی نازل به بازار عرضه کند. شورلول ایران می تواند با استفاده از دانش فنی که شور لول استرالیا در اختیار وی قرار داده است نیاز های مختلف ساخت و ساز را با توجه به ویژگی های هر پروژه مرتفع سازد. شورلول ایران متعهد است که با تکیه بر تحقیق و نو آوری فنی کیفیت تولیدات خود را همه روزه ارتقاء بخشد. 
ارتباطات بین المللی شرکت شورلول باعث شده که این شرکت موفق به اخذ نمایندگی از برترین شرکت جهان kryton کانادا در زمینه آب بندی و نفوذ گرهای بتن شده است', '', '', '', '1');
insert into [tblCustomerDesc] values(631, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه تحقیقاتی شیمیایی  حربا ', null, 'چسب پلیمر مخصوص خورندگی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(632, 2, null, null, null, null, null, null, null, null, null, 'عایق پلیمری ، پرایمر ، اب بند نانو ، چسب سنگ پودری ،', null, null, null, null, 'دناکو', null, 'چسب  کاشی و سرامیک', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(633, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دماوند سفید', null, 'افزودنی های بتن ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(634, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نوین صنعت ساختمان ', null, 'افزودنی های بتن ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(635, 2, '', 'شیمی آسایش پردیس', null, null, null, null, null, null, null, 'کفپوش رزینی ، کفپوش صنعتی پایه سیمانی  ، ماستیکهای درزبندی   ،  پوششهای  محافظ  و  ضد  خوردگی', null, null, null, null, 'شیمی آسایش پردیس', null, 'کفپوش صنعتی ، پوششهای ضد خوردگی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(636, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پلیمر پوشش ایرانیان', null, 'کفپوش صنعتی ، پوشش   ضد حریق ، سند پلاست  ، رنگ نما', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(637, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیکا پارسیان ', null, 'آب بندی ،  درز بندی  ، صدا گیری ، مقاوم سازی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(638, 2, '', 'بازرگانی  نیما  شیمی', null, null, null, null, null, null, null, 'تامین کننده محصولات', null, null, null, null, 'بازرگانی  نیما  شیمی', null, 'افزودنی ها  ، اسپیسر  ، انواع چسب ،  ماستیک  پلی یورتان', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(639, 2, null, null, null, null, null, null, null, null, null, 'تنها تولید کننده پودر بند کشی در  30  رنگ مختلف  در  ایران                                            چسبهای مخصوص کف ، مخصوص دیوار ، مخصوص نما', null, null, null, null, 'شورفیکس ', null, 'پودر بند کشی', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(640, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کنام', null, 'پودر بتونه نقاشی ', null, 1, -1, '1392/01/04', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(641, 2, '', 'فرایند پوشش ایرانیان', null, '', '    /  /  ', '          ', '          ', null, null, 'پوششهای  پلی یورتان  و  اکرلیک   ،              ملات ترمیم کننده بتن  ، آنی گیر  سیمانی    نفوذ  گیر بتن  ،  پودرهای بند کشی ، چسبهای کاشی و  سرامیک  ', null, null, 'www.fpi.co.ir', '', 'فرایند پوشش ایرانیان', 1, 'مشاور  و  مجری پروژه های آب بندی ', '                    ', 1, -1, '1392/01/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(642, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.saelevator-com', '', 'آسانسور سپهر آریا', 1, 'تولید درب و کابین آسانسور ', '                    ', 1, -1, '1392/01/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(643, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پرشین توس', null, 'کابین آسانسور', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(644, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'تسین کروپ آسانبر ', null, 'آسانسور ،  پله برقی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(645, 2, '', 'ایده نگار گیتی ', null, null, null, null, null, null, null, 'نمایندگی   fuji', null, null, null, null, 'ایده نگار گیتی ', null, 'آسانسور  و  پله برقی فوجی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, 'شرکت ایده نگار به این افتخار نائل گردیده که با کادری مجرب و متخصص در امر طراحی ،  براورد ، نصب ، راه اندازی ،  سرویس و نگهداری ، نصب چشم الکترونیک  ، برنامه نویسی   پی  ال  سی  ،  ساخت تابلو های فرمان و نیز طراحی کلیه قطعات استیل  پله های برقی  فعالیت نماید .                                 این شرکت برای اولین بار در ایران اقدام به فروش پله برقی فوجی نمود که با کیفیتی بینظیر و تحت نظارت تکنولوژی برتر  ژاپن تولید میشوند  .                     کلیه آپشنهای روز دنیا در این دستگاه تعبیه گردیده و مورد تایید اتحادیه اروپا میباشد   .  پله برقی فوجی به صورت پیش فرض دارای سیستم چشم الکترونیک بوده که این امر سبب کاهش 70درصد مصرف برق میگردد .                                                                                                                                همچنین به جهت تضمین در قطعات این شرکت اقدام به تحویل تعدادی از قطعات مصرفی مورد نیاز از جمله  استپ ،  شانه  و  .....  در هنگام خرید می نماید ', null, null, null, null);
insert into [tblCustomerDesc] values(646, 2, null, null, null, null, null, null, null, null, null, 'نمایندگیی میتسو بیشی  ژاپن  و  چین ', null, null, null, null, 'نوین بالابر', null, 'آسانسور  و  پله برقی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(647, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پارس   ( پویا  آفرینان   راه   سامان  )', null, 'آسانسور  و پله برقی                                      نماینده    اوریول  


نمایندگی  اوریول 

آسانسور  و  پله برقی   ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(648, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مه فخر ', null, 'نماینده انحصاری  آسانسور  و  پله برقی         I M E M     اسپانیا  در  ایران ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(649, 2, null, null, null, null, null, null, null, null, null, 'دربها ی    اتوماتیک', null, null, null, null, 'آسانسور سیفیه  ', null, 'تولید کابین  ،  درب  کابین  ،  قطعات                نصب  و   راه  اندازی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(650, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سرمایه گذاری صنعتی ایستا صدر ', null, 'تولید آسانسور کارگاهی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(651, 2, null, null, null, null, null, null, null, null, null, 'وارد کننده   و   تولید کننده', null, null, null, null, 'اپکو', null, 'در بازکن تصویری  همراه با حافظه فیلم برداری', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(652, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'محصول فرانسه  -  وارد کننده  و  نماینده فروش', null, null, 'www.kalot .ir', '', 'کالوت  ', 1, 'صاعقه گیر  الکترونیکی', '                    ', 1, -1, '1392/01/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(653, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سطوح طوس', null, 'نماینده انحصاری تجهیزات  نقشه برداری', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(654, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهد ایران', null, 'تجهیزات پارکی  و  خدمات شهری', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(655, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'اصفهان  آلومین ', null, 'چراغ  ،  تجهیزات   پارکی  و  خیابانی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(656, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آنتن تصویر', null, 'انواع  آنتن  و  آنتن  مرکزی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(657, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'میلاد نور  مشهد ', null, 'انواع چراغهای  روشنایی و  تزئینی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(658, 2, null, null, null, null, null, null, null, null, null, 'تولید کننده  و  وارد  کننده ', null, null, null, null, 'صنایع  الکتریکی  البرز', null, 'کلید  و  پریز  و  لوازم برقی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(659, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکتریک  و  الکترونیک  بهینه سازان', null, 'لامپ  کم  مصرف', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(660, 2, null, null, null, null, null, null, null, null, null, 'نورپردازی', null, null, null, null, 'صنایع روشنای  نور  سامان  شرق', null, 'تولید انواع چراغ  و  پایه  چراغهای  پارکی   و   صنعتی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(661, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع روشنایی حسام صنعت شرق', null, 'چراغ پارکی  و  خیابانی  و  محصولات   L E D  ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(662, 2, null, null, null, null, null, null, null, null, null, ' از   16   الی    630  آمپر  در  اینچ  ', null, null, null, null, 'فیوز صنعت ', null, 'فیوز  و  پایه  فیوز  کاردی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(663, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فروزش جستجو', null, 'صنایع روشنایی و  سیستمهای نوین انرژی خورشیدی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(664, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نیان الکترونیک ', null, 'طراح  و  تولید کننده  منابع تغذیه  سوئیچینگ و  تجهیزات نیروی مخابراتی - صنعتی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(665, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ماشینهای الکتریکی بهروز خراسان ', null, 'تولید الکتروموتور  و  ژنراتورهای  فشار قوی', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(666, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'ارائه کننده روشهای نوین هوشمند سازی ساختمان  :
     مشاوره
    طراحی 
    فروش
    اجرا
  ', null, null, 'www.Ariaz.ir', '', 'فناویهای  راهبردی آریاز', 1, 'سیستمهای امنیتی ، نظارت تصویری ،  اعلام حریق ، ', '                    ', 1, -1, '1392/01/05', 0, null, 1, '', null, null, null, null, 'اتوماسون ساختمانی و ساختمان هوشمند 
مدیریت سیستم انرژی
شبکه های کامپیوتری و راه حلهای مبتنی بر   I T
سیستم مخابراتی و مراکز تلفن  V O I P  
سیستمهای نظارت تصویری پیشرفته 
تلویزیونهای تحت شبکه  I P T V', null, null, null, null);
insert into [tblCustomerDesc] values(667, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.nabsanat.blogfa.com', '', 'ناب صنعت بارثاوا ', 1, 'تابلو برق صنعتی', '                    ', 1, -1, '1392/01/05', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(668, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دفتر فنی برق  توس ', null, 'مشاور ، طراح  و  مجری سیستم حفاظتی  و  امنیتی ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(669, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترو برق آسان ', null, 'سیستم اعلام حریق ، ', null, 1, -1, '1392/01/05', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(670, 2, null, null, null, '', '/  /      ', '40952', '', null, null, 'منازل - ویلا', null, null, '', '', 'دربهای اتوماتیک درسا در شیشه چی', 1, 'دربهای تمام اتوماتیک                                    شیشه ای  ، کرکره ای  ،  پارکینگی', '', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(671, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کیمیا در', null, 'دربهای اتوماتیک ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(672, 2, null, null, null, '', '/  /      ', '', '', null, null, 'این شرکت با توجه به حوزه فعالیت خود در سرتاسر ایران فعالیت داشته و آماده ارائه خدمات درب های اتوماتیک به مشتریان می باشد.', null, null, 'www.dorisdoor.com', 'info@dorisdoor.com', 'درب های هوشمند دریس در', 1, 'انواع درب های اتوماتیک شیشه ای ، پارکینگی ، کرکره برقی ،آکاردئونی و انواع درب های اتواتیک خاص', '', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, 'شرکت درب های هوشمند دریس در با توجه به نیاز روز افزون صنعت ساختمان به فن آوری های برتر با هدف اجرای انواع درب اتوماتیک در سال 1380 تاسیس گردید و در حال حاضر با همکاری مهندسین متخصص و تکنسین های مجرب ارائه دهنده انواع درب های هوشمند می باشد.', '', '', '', '');
insert into [tblCustomerDesc] values(673, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سوشانت   پاسارگاد  خاوران ', null, 'دربهای اتوماتیک', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(674, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'عرش گستر', null, 'دوربین مدار بسته  ،  بردهای الکتریکی', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(675, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'نمایندگی دوربینهای    MoBoTix', null, null, 'www.baatees.com', '', 'تصویر برتر باتیس', 1, 'دوربین مدار بسته', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(676, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'رایان در', null, 'ساخت دربهای اتوماتیک ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(677, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صبا حافظ نور ', null, 'طراح  ،  تولید  و   مجری   سیستمهای   نظارت  ، حفاظت   ،   امنیت', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(678, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.atabay-ed-co-ir', '', 'طراحان الکترونیک آتابای', 1, 'دوربین مدار بسته ، درب باز کن تصویری ، حفاظت فیزیکی ، اعلام  و  اتفاع حریق اتوماتیک  ، ', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(679, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکتروپیک ', null, 'در بازکنهای صوتی  و تصویری ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(680, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'مهسان ', null, 'پریز ایمنی  و  محافظ دار ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(681, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.mazinor.com', '', 'صنایع روشنایی  مازی  نور', 1, 'انواع لامپ روشنایی', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(682, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع روشنایی  لوماک', null, 'لوستر های سه بعدی  حجمی ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(683, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایمن پارس شرق', null, 'کالای ایمنی  و آتش نشانی', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(684, 2, '', 'پرشین صنعت پژواک', null, null, null, null, null, null, null, 'سیستم روشنایی صنعتی تجاری ،  مجری     مدرن ترین سبکهای نور پردازی', null, null, null, null, 'پرشین صنعت پژواک', null, 'پرژکتور  ، نورافکن           R G B', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(685, 2, '', 'مهندسی  پژواک', null, null, null, null, null, null, null, 'فروش  ،  اجرا', null, null, null, null, 'مهندسی  پژواک', null, 'سیستمهای اعلام  و  اطفاء حریق', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(686, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.zamanelectric.ir', '', 'زمان الکتریک', 1, 'کلید ،  پریز  ،  لوازم  برقی', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(687, 2, null, null, null, '', '    /  /  ', '34158     ', '          ', null, null, 'مشاور   و   طراح', null, null, 'www.modamkar.com', '', 'مدامکار ', 1, ' سیستم ایمنی  و آتش نشانی', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(688, 2, null, null, null, null, null, null, null, null, null, 'الکتریکی ،  مکانیکی', null, null, null, null, 'قدرت سنج توس', null, 'تابلو برق صنعتی ، فایر باکس ، آنتن مرکزی ،   سیستم ارتینگ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(689, 2, null, null, null, null, null, null, null, null, null, 'مشاور  در  خرید ', null, null, null, null, 'مهر آذین', null, 'مجری  ،  نصب   و  نگهداری   تابلو های             L E D     و    W M S                                     ارتقاء   سنج ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(690, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'نما  پردازش  آوان ', null, 'سیستمهای  نظارتی  ،  امنیتی  ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(691, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'تولید  پست  مدولار ،  پست سیار  ،  خطوط انتقال  ،   شبکه  توزیع  ', null, null, 'www.msgroup.ir', '', 'مهام شرق', 1, 'انتقال نیرو   و  مخابرات  شرق  ', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(692, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سامان  تابلو پارس', null, 'تابلو های  چند کنتوره ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(693, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع روشنایی  سوتارا', null, 'لوازم  و  تجهیزات برقی   و  روشنایی', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(694, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.sabetelectrik.com', '', 'ثابت الکتریک ', 1, 'کلید  ،  پریز  ،  قطعات  همردیف', '                    ', 1, -1, '1392/01/06', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(695, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ایمن گستر ره آورد نوین', null, 'دوربین مدار بسته  ،  درب اتوماتیک، دزد  گیر', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(696, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع   روشنایی  رضا  نور  ', null, 'لامپ  ،   پرژکتور    ،   نور  افکن   ،   چراغ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(697, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آسیا   الکتریک', null, 'کلید  و   پریز', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(698, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آرامین ', null, 'دربهای اتوماتیک  شیشه ای ،  پارکینگی ،  فروشگاهی ،    راه بند  اتوماتیک  ،                 جاروی مرکزی', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(699, 2, null, null, null, null, null, null, null, null, null, 'طراحی  نظارت  و  اجرا', null, null, null, null, 'گروه  فنی  مهندسی  پاژ', null, 'سیستمهای  نظارتی  ،  امنیتی   ،  اطفاء  حریق  ،  و  سیستم دوربین  مدار  بسته', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(700, 2, null, null, null, null, null, null, null, null, null, 'طراحی ، نظارت ، اجرا', null, null, null, null, 'موژان گوهر طوس', null, 'سیستمهای  اعلام  و   اتفاء   حریق', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(701, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آمود آرای طوس', null, 'انتتقال نیرو ،  تاسیسات  و تجهیزات   ارتینگ   حفاظت  در  برابر  صاعقه ', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(702, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فضل الکتریک', null, 'کلید  و  پریز', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(703, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لامپ افروغ', null, 'لامپهای  روشنایی  ،  رشته ای  و  کم  مصرف', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(704, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لامپ  پارس   شهاب ', null, 'لامپهای  فلوروسنت ،  کم  مصرف ، رشته ای ،  گازی  ،   L E D', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(705, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'لامپ سازی نور افشان', null, 'لامپهای گازی ، بخار  سدیوم  ،  بخار   جیوه', null, 1, -1, '1392/01/06', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(706, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جهان الکتریک ', null, 'کلید  و  پریز ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(707, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دربهای اتوماتیک  یاس', null, 'دربهای اتوماتیک  کرکره ای - پارکینگی - شیشه ای ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(708, 2, '', 'ثمین سازه پاژ', null, '', '/  /      ', '35739', '', null, null, '', null, null, '', '', 'بیلان در', 1, 'سیستم دربهای اتوماتیک', '', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(709, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آویسا   گارانتی ', null, 'حفاظتی  ، امنیتی  ، دوربین  مدار بسته ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(710, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع روشنایی  آساره  ', null, 'چراغها  و  لوسترهای  سقفی  فلورسنت', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(711, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.maxdoor.ir', 'info@maxdoor.ir', 'مکث در', 1, 'دربهای  اتوماتیک  کرکره ای  ،  جکهای  اتوماتیک ، دربهای  اتوماتیک  شیشه ای', '', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, 'شرکت فنی مهندسی مکث در پاسارگاد:
در تلاش است با استعانت از خداوند متعال و به پشتوانه کادری مجرب، تکنیسین های کارآزموده و خدمات پس از فروش شبانه روزی و حضور موفق چندین ساله خود در حوزه طراحی، تولید و نصب انواع درب های اتوماتیک بخش کوچکی از رفاه و آسایش شما هموطنان گرامی را فراهم سازد و به عنوان مشاوری امین برای شما، محصولاتی ایده آل و مورد تایید شما را فراهم نماید.', '', '', '', '');
insert into [tblCustomerDesc] values(712, 2, '', 'پرتو افشان  یزد', null, '', '    /  /  ', '          ', '          ', null, null, 'نوع   L E D   وارداتی  از چین                          مورد استفاده  در  سقف  کاذب  ', null, null, 'www.partoafshan.ir', '', 'پرتو افشان  یزد', 1, 'پنل  لایت   L E D      چراغهای    L E D            مسکونی ،  اداری  ،  تجاری  ،  صنعتی', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(713, 2, null, null, null, '', '    /  /  ', '42875     ', '          ', null, null, '', null, null, 'www.', '', 'ثمین سازه پاژ ', 1, 'دربهای اتوماتیک  ', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(714, 2, null, null, null, null, null, null, null, null, null, 'خدمات  مهندسی  روشنایی', null, null, null, null, 'شب فروز', null, 'محصولات روشنایی ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(715, 2, null, null, null, '', '    /  /  ', '39839     ', '          ', null, null, 'تامین تجهیزات  تاسیسات الکتریکی   ،   مشاوره  و  اجرا ،  افزایش بهره وری ', null, null, 'www.', '', 'نیک سازان برق مشهد ', 1, 'تابلو برق ، سیستم ارتینگ ، سیستمهای امنیتی', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(716, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'دلند', null, 'کلید  و  پریز ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(717, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'آذر برزین', null, 'طراحی ،  فروش  ،  اجرا   سیستمهای   مدیریت  ساختمان ، و  بهینه سازی مصرف انرژی ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(718, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترو سیم هدایت', null, 'سیم و کابل برق  و  مخابراتی', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(719, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و  کابل  آرین ابهر', null, 'انواع سیم  و کابل  برق ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(720, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم و کابل قزوین', null, 'انواع  سیم و کابل  برق  و  مخابرات', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(721, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کابل  کاشان', null, 'انواع سیم و کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(722, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'ولتا  کابل  کرمان ', null, 'انواع  سیم  و  کابل  برای  مصارف  ساختمانی', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(723, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.khorasanmomtaz.com', '', 'سیم  و  کابل  کوثر  ممتاز خراسان ', 1, 'سیم وکابل برق  و  مخابرات', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(724, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.simiacable.com', '', 'سیمیا ', 1, 'انواع سیم  و  کابل', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(725, 2, '', 'صنایع خیام الکتریک', null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.khayamelectric-ir', '', 'صنایع خیام الکتریک', 1, 'سیم  و  کابل     ،    انواع کلید  و  پریز   و   قطعات   هم ردیف', '                    ', 1, -1, '1392/01/07', 0, null, 1, '', null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(726, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و کابل   پیشرو  رفسنجان', null, 'انواع  سیم و کابل  ،  برق  و  مخابرات ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(727, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'زر سیم  ', null, 'سیم  و  کابل ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(728, 2, '', 'سیم  و  کابل  بجنورد', null, null, null, null, null, null, null, '', null, null, null, null, '', null, 'سیم  و  کابل   برق', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(729, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و  کابل  قدس', null, 'سیم  و  کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(730, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و   کابل  مغان', null, 'سیم  و  کابل  ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(731, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع  سیم  و  کابل  همدان', null, 'انواع  سیم  و  کابل  برق  و  مخابرات', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(732, 2, '', ' شرکت  صنعتی الکتریک خراسان', null, null, null, null, null, null, null, '', null, null, null, null, 'صنعتی الکتریک خراسان', null, 'انواع  سیم  و  کابل   L V   قدرت                     ابزار دقیق  و  کنترل  مقاوم  در  برابر  آتش', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(733, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'کابل  باختر', null, 'سیم  و  کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(734, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و  کابل  آمل  ', null, 'سیم  و  کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(735, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فروزنده', null, 'سیم  و  کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(736, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'جهان  سیم  اصفهان', null, 'انواع   سیم  و  کابل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(737, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'راهدار  صنعت کرمان', null, 'سیم  و  کابل  نسوز  سیلیکونی', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(738, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'خیام کابل خراسان', null, 'انواع سیمهای افشان ، سیمهای مفتولی ،    کابلهای مخابراتی ،  کابلهای کنترل', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(739, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و  کابل  ابوالفضل  کاشان', null, 'سیمهای  افشان  از   سایز   0/5  الی   10', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(740, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم  و  کابل  مشهد  ', null, 'سیم  و کابل ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(741, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سیم و کابل  مخابراتی  و  قدرت  خراسان ', null, 'سیم  و  کابل   ', null, 1, -1, '1392/01/07', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(743, 2, null, null, null, '', '    /  /  ', '5497      ', '          ', null, null, '', null, null, 'www.cafesakhteman.com', '', 'توسعه و عمران آبادگران ', 1, '', '                    ', 1, -1, '1392/03/05', 0, null, 1, '', null, null, null, null, 'شرکت توسعه وعمران آبادگران با نام تجاری کافه ساختمان فعالیت خودرا با ایده بهره گیری از فناوری و هنر صنعت ساختمان آغاز کرده است . این شرکت ، با محوریت مهندسان عمران و معمار و ایجاد مجموعه ای به منظور هم اندیشی تخصص های مختلف ساختمانی ، بر آن است تا با نگاهی جدید ، نه تنها به عناصر معماری ، بلکه سازه و تاسیسات ، حس یگانگی معماری گذشته را در آثار خود متبلور سازد . از سویی دیگر ، به منظور جلوگیری از افت کیفیت محصولات نهایی ، خدمات طراحی ، فروش و اجرای پروژه های ساختمانی در این شرکت به صورت یکپارچه ارایه می گردد .از جمله این محصولات می توان به پوشش های pvc، انواع پنل های دکوراتیو ، پلکسی ، بلوک شیشه ای ، پارکت ، کناف ، سقف کاذب باریسول ، لوازم بهداشتی ساختمان ودربهای ضد سرقت وداخلی و.... در زمینه طراحی داخلی وواردات و فروش مصالح ساختمانی و فراورده های نوین از جمله سیستم ، سیستم ، نانو عایق ، تاسیسات مکانیکی والکتریکی و ... علاوه بر افزایش سرعت ساخت وکیفیت بالا ، اغلب توجیه اقتصادی در دراز مدت را نیز به همراه دارد .', '', '', '', '');
insert into [tblCustomerDesc] values(744, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'نام تجاری: نگین کویر', null, null, '', '', 'نگین سفال کویر', 1, 'مصالح و ابزار ساختمانی', '                    ', 1, -1, '1392/03/05', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(745, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'gfsdf', null, '', null, 4, -1, '1392/03/06', 0, null, null, null, null, null, null, null, null, null, null, null, '7');
insert into [tblCustomerDesc] values(746, 2, null, null, null, '', '1379/01/01', '          ', '          ', null, null, '', null, null, 'http://www.shayanmosaic.com', '', 'شایان موزائیک', 1, 'تولید کننده و پخش کننده انواع موزاییک های واش بتن ', '                    ', 1, -1, '1392/03/06', 0, null, 1, '', null, null, null, null, 'مشخصات شرکت :
شرکت شایان موزاییک بزرگترین  تولید کننده و پخش کننده انواع موزاییک های واش بتن وحیاطی بابیش از12سال سابقه درخشان در استان تهران والبرزمیباشد.
انواع واش بتن (موزاییک شسته که سنگ دانه های ان به طور برجسته نمایان است)در سایز های 30*60/40*40/50*50/30*30/ودر ضخامت های 3.5و4سانت.وانواع پله واش بتن در سایز(100*35)وجدول واش بتن در سایز(50*30)ودوردرختی واش بتن (چهار تکه در سایز40*40) وواش بتن های چراغ دار در بیش از 20نوع رنگ بندی تولید میگردد.  
انواع موزاییک های حیاطی: سکه ای( 40*40/33*33)و ستاره(40*40) وساده(30*30 مخصوص پشت بام وزیر پارکت)در ضخامت 2.5 سانت
موزاییک پوست ماری (20*20/40*40 درضخامت های 4/5/5.5 سانت )شیاری نابینایان(20*20)بادبر نما(15*30)
انواع جدول هخامنش سرباز/فروهر(50*35) شیاری(50*12/20*50/25*50) هلالی وگنبدی(50*30)
صخره ای (50*70)                          ////  بزودی خط پرسی راه اندازی خواهد شد////.
این کارخانه مجهز به آزمایش کنترل کیفی بوده ودارای ضمانت میباشد.
', '50', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(747, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.esatlas.blogfa.com', 'atlas.saze@yahoo.com', 'شرکت اطلس', 1, 'سازه های پیش ساخته', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, ' دیوار 3D Panel برای مواردی از جمله ویلا سازی , انبوه سازی مسکونی , دیوار محوطه و دور باغ , دیوار سوله و کارخانه , برج سازی اعم از مسکونی و تجاری و ... کاربرد دارد.

    شرکت " اطلس " عرضه کننده و مجری دیوار پیش ساخته  3D پانل در تهران و شمال کشور , عهده دار پروژه های بزرگ از قبیل مسکن مهر بوده و آماده ارائه خدمات به کارفرمایان و پیمانکاران محترم در اقصی نقاط کشور می باشد.


برخی از مزایای استفاده از تری دی پانل ( تریدی پنل )  :
1)سرعت اجرایی بالا
2)وزن کم دیوار (150KG/M ) و تا ثیر آن در کاهش وزن اسکلت و کاهش مقاطع شناژ و فونداسیون
3)کاهش ضخامت دیوار از 35 یا 45 سانتیمتر به 15 سانتیمتر
4)خاصیت جذب انرژی و نیروی ارتعاش و ضربه به ماشین و چرثقیل های مورد استفاده در سالن
5)ضریب هدایت حرارتی پایین و تاثیر آن بر کاهش پرت حرارتی
6)قابلیت اجرای پانل برای دیواری های بلند تا ارتفاع 9 متر و دهانه 6متر
7)کاهش آلودگی صوتی در محیط تولید
8)کمک به سازه ساختمان در جهت تحمل بارهای وارده
9)پایداری سیستم فوم در برابر طو فان و زلزله های مخرب
                
پروژه ها :
ویلا ساختمان سوله برج  طراحی نظارت  نصب شاتکریت طراحی جزئیات اجرایی 3d panel   دیوار پیش ساخته  تری دی پانل تهران گیلان ( رشت انزلی استانه لاهیجان و ... )
 
', '', '8 الی 18', '', '2');
insert into [tblCustomerDesc] values(748, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.behsacompany.com', 'info@behsacompany.com', 'بهین سازان ایستاتیس (به سا)', 1, 'تولید کننده درب و پنجره های دوجداره یو پی وی سی
نصب پنجره
تعویض پنجره های قدیمی 
', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, null, '', '8:30 الی 17', '', '10,2');
insert into [tblCustomerDesc] values(749, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.exciton.ir', ' Excitonco@yahoo.com', 'شرکت اکسایتون', 1, ' قطعات بتنی
لوله و اتصالات
آجر
کاشی و سرامیک
', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, 'شرکت اکسایتون با بیش از 32 سال حضور موفق در زمینه‌ی طراحی و ساخت انواع کوره‌های الکتریکی،از ابتدای سال 1379 نسل جدید سامانه‌‌های حرارتی خود را با لایه‌ی نسوز اول از جنس کمپوزیت سرامیک-سرامیک پیشرفته بر پایه‌ی سیلیسیم کاربایدα-SiC به مصرف‌کنندگان عرضه نموده است.
این طرح تحت عنوان «کوره‌های عملیات حرارتی ویژه» یکی از جوایز برتر نوزدهمین جشنواره بین‌المللی خوارزمی را به خود اختصاص داده است. 
کوره‌های الکتریکی مذکور از لحاظ مشخصات کیفی و قیمت تمام شده با سایر کوره‌های رایج داخلی دارای محفظه‌ی حرارتی از جنس جرم ریختنی پایه‌ی آلومینا آجر یا فیبر سرامیکی، قابل مقایسه نیستند. با اطمینان می‌توان گفت کوره‌های انحصاری ساخت اکسایتون اکنون از نظر کیفیت نسبت به رقبای خارجی نیز هیچ نقصانی ندارد. علاوه ‌بر آن‌ از لحاظ قیمت و خدمات پس از فروش در مقایسه با مشابه خارجی دارای ارجحیت¬ بارزی می‌باشد.
ضمناً شرکت اکسایتون تمامی محصولات خودرا به مدت یکسال گارانتی کرده و 
تأمین قطعات یدکی و خدمات پس از فروش به مدت 10 سال تضمین می‌کند.
', '20', '8 الی 16', '', '2');
insert into [tblCustomerDesc] values(750, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.sefidbam.ir', ' inf@sefidbam.ir', 'سفید بام کرمانیان', 1, ' رنگ ساختمانی
 عایق رطوبتی
 چسب کاشی و سرامیک
 مصالح ساختمانی جدید
', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, 'شرکت سفیدبام کرمانیان با سالها سابقه به عنوان  بزرگترین و مجهز ترین کارخانه تولید کننده و توزیع کننده عایق سفید ، عایق الیاف دار ، نماهای مینرال ،افزودنی های بتن، روان کننده ها، نمای پایه سیمان، ملات های آماده ، ضدیخ بتن ، پرایمر ، ماستیک،عایق های رطوبتی مایع، چسب های ساختمانی، ژل های میکروسیلیس، رنگ ها و نماهای تیس در جنوب و شرق کشور با نام تجاری تیس و با بهرگیری از دانش روز متخصصین خود و هم چنین دستاوردهای محققین داخلی و خارجی سعی در تولید محصولاتی کارا منطبق بر استاندارد های  روز دنیا دارد از این رو با تلاش مستمر در سال 90 موفق به دریافت گواهینامه  ISO 14001, ISO 9001 ,OHSAS 18001  گردید.
این کارخانه هم اکنون با همکاری نمایندگان خود افتخار توزیع محصولات تولیدی خود را در سراسر کشور دارد.تعداد زیاد مشتریان محصولات مختلف سفید بام و استقبال از این محصولات خود گواهی بر برتری محصولات این شرکت بر  سایر همکاران در این بخش را دارد .
', '', '8 الی 16:30', '', '2,1');
insert into [tblCustomerDesc] values(751, 2, null, null, null, '', '1385/03/01', '          ', '          ', null, null, '', null, null, '', 'rangpour_ramin@yahoo.com', 'بازرگانی کاسپین', 3, 'مرکز پخش و توزیع کاشی و سرامیک،چینی آلات بهداشتی،شیرآلات،آجر نمای ساختمان', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, null, '', '', '', '2');
insert into [tblCustomerDesc] values(752, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'rezashahab37@yahoo.com', 'شرکت خشت اول', 1, 'مصالح ساختمانی', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, 'مرکز بازاریابی و فروش خشت اول با کادری مجرب و حرفه ای در زمینه بازاریابی و فروش زنجیره ای مصالح ساختمانی به سازندگان صاحب نام  وجدید ترین دریافت کنندگان مجوز ساخت با حدود 35 کارخانه تولید مصالح ساختمانی در ارتباط مستمر و روزانه است. ضمنا  این مرکز  با تهیه وتوزیع سریع ، آسان ، ارزان و استاندارد  انواع مصالح ساختمانی از جمله انواع تیغه های سفالی و سقفی ، آجر فشاریی،10 سوراخ، قزاقی نما، پلاک بلوک سیمانی ، لیکا ،دیوار گچی و تیرچه بلوک در اقصی نقاط تهران بزرگ توانسته رشد شتابان و چشمگیری به توسعه مویرگی فعالیت های خود داده و در ادامه توسعه این فعالیتها فاز تهیه و توزیع انواع بتن  ،سیمان و گچ وهمچنین مصالح نوین ساخت و ساز را در برنامه خود دارد .', '', '8:30لی 18', '', '');
insert into [tblCustomerDesc] values(753, 2, null, null, null, '', '1384/05/01', '          ', '          ', null, null, '', null, null, '', ' h.j252@yahoo.com', 'شرکت سنگ غدیر', 1, ' سنگ های ساختمانی
 سنگ مرمریت
 مصالح ساختمانی
 مصالح ساختمانی (متفرقه )
 نمای ساختمان
', '                    ', 1, -1, '1392/03/07', 0, null, 1, '', null, null, null, null, 'این شرکت در زمینه تولید سنگ کرم دهبید در ابعاد مختلف فعالیت دارد و به دلیل داشتن 3 مجموعه سنگبری توانایی آن را دارد که در تکمیل پروژه های بزرگ پیمانکاران را همرایی کند.', '57', '8 الی 18', '', '1');
insert into [tblCustomerDesc] values(754, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '  http://www.armitastep.blogsky.com', 'armitaco@yahoo.com', 'شرکت آرمیتا استپ', 1, 'پله پیش ساخته
 نرده استیل
 مصالح ساختمانی
 سازه های پیش ساخته
 محصولات دکوراسیون داخلی
', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'آرمیتا استپ با اجرای بیش از 35سازه پلکان با طرح های متفاوت وکاملا خاص وتولید ونصب پلکان ونرده بصورت کاملا حرفه ای ومهندسی اهتمام دارد..ساخت شاسی های فلزی پلکان ها وانواع سازه ها ی سه بعدی وشکل دادن سه بعدی چوب نیز از دیگر خدمات ماست.تکنولوِژی ما منحصربفرد است .
پلکان ترکیبی ودوپیچ.....38 مدل متفاوت پلکان رزومه ماست ...--شاسی---فریم--نرده بان---سازه سه بعدی ---شاسی آهنی
مهندس یحیی نوروزی- برای مشاوره در طراحی وساخت واجراانواع سازه پلکان ها در تمام مدت روز آمادگی پاسخگویی وراهنمایی شما عزیزان میباشد
   طراحی .ساخت .نصب انواع پلکان پیش ساخته با متریال مختلف وانواع شاسی وشمشیری سازه پلکان ها یی با فریم آهنی کاملا مهندسی ودارای گارانتی ....
', '', '', '', '10,3');
insert into [tblCustomerDesc] values(755, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://cementplast-s.mihanblog.com', 'mohammad4349@gmail.com', 'شرکت سمن سنگ', 1, ' محصولات دکوراسیون داخلی
محوطه سازی
 مصالح ساختمانی
 کاشی و سرامیک
', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'تولید کننده تخصصی سنگهای ساختمانی سمنت پلاست (شامل سنگ نما , سنگ آنتیک و دکوراتیو , موزاییک , سنگ فرش , کفپوش , قرنیز , پله , زیر پله و جدول  اعطاء نمایندگی فروش محصولات سنگ مصنوعی سمنت پلاست در سراسر کشور', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(756, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.arakpoodr.com', 'Payman_khavarifar@yahoo.com', 'شرکت اراک پودر', 1, 'مصالح ساختمانی', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'شرکت اراک پودر آماده تولید انواع بنتونیت سدیمی و کلسیمی با مش 325 وبالاتر را دارد .بنتونیت جذبی و بنتونیت ایلدی برای مصرف متالوژی و حفاری و انواع بنتونیت برای کشاورزی دام و طیور متالورژی و ریخته گری . این شرکت تولید انواع پودر بنتونیت را به سفارش مشتری به صورت فله بسته بندی در کیسه های یک تنی و 30 کیلوئی با قیمت و کیفیت تضمینی آماده تحویل به مشتریان می باشد .

بنتونیت چیست؟
واژه بنتونيت را نخستين بار در سال ١٨٩٨ دانشمندي به نام نايت، به کار برده است. اين واژه از اصطلاح محلي به نام شيل هاي بنتون واقع در ايالات وايومينگ آمريکا گرفته شده است. استفاده از بنتونيت به زمان هاي ما قبل تاريخ بر مي گردد. اين کاني ها داراي اثرات شفا بخش در برخي بيماري هاي گوارشي و زخم ها بوده است.همچنين قابليت جذب فلزات سنگين، باکتري ها و مواد ضد تغذيه اي را دارا مي باشد.', '', '', '', '1');
insert into [tblCustomerDesc] values(757, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.bonyanamirzadeh.com', 'fabka92@gmail.com', 'بنیان توسعه اقبصادی و کارآفرینی امیرزاده', 1, ' بتن و فرآورده های بتنی
 پنجره
 پنجره UPVC
 تیرچه و بلوک
', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'فروش تیرچه در سایز های 40سانتیمتری تا 9 متری با انواع تقویت تیرچه 20 و تیرچه 25 و تیرچه پله
بنیان توسعه اقتصادی و کارآفرینی امیرزاده بزرگترین تولید کننده تیرچه و بلوک در جنوب کشور و تولید کننده پنجره  
دوجداره و بتن آماده و اجرای سقف
', '', '7:30  الی 20', '', '2');
insert into [tblCustomerDesc] values(758, 2, null, null, null, '', '1391/03/00', '          ', '          ', null, null, '', null, null, 'www.', 'info@rabinbeton.com', 'شرکت رابین بتن', 1, 'بتن و فرآورده های بتنی
 سازه های پیش ساخته
 مصالح ساختمانی
', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'آماده همکاری با سازندگان وانبوه سازان کشور 
مفتخریم بتوانیم با توجه به توانمندی های این واحد تولیدی وبهرگیری از کارشناسان مجرب
محصولی با کیفیت ومطابق استانداردهای مقررات ملی ساختمان ارائه نماییم .
', '24', '9 الی 17', '', '2');
insert into [tblCustomerDesc] values(759, 2, null, null, null, '', '1390/00/00', '          ', '          ', null, null, ' محصولات دکوراسیون داخلی
ابزار آلات ساختمانی
 دیوار پوش ها
 محصولات دکوراسیون داخلی
 مصالح ساختمانی
', null, null, ' http://www.hamiranco.com', 'info@hamiranco.com', 'شرکت حمیران', 1, 'محصولات اداری و محصولات دکوراتیو', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'شرکت ارمان تجارت حمیران (سهامی خاص) فعالیت خود را بصورت رسمی از سال 1390 اغاز نموده است.
حمیران با پشتوانه تجربه و تخصص  مدیران و پرسنل خود در زمینه های دکوراسیون اداری ,تجاری ومسکونی در مدت زمان
 فعالیت خود توانسته اعتماد مشتریان خود را جلب نماید .
شهرت ما در طیف گسترده محصولات است که در دو گروه اصلی:
 1) محصولات اداری               2) محصولات   دکوراتیو          گرداوری   شده اند .
تمامی محصولات حمیران همسو با نگرش تخصص ما , جهت تامین استانداردهای کیفی , زیست محیطی , رعایت اصول 
ارگونومی ,انتروپومتری , زیبایی و هارمونی فضا طراحی و عرضه می گردد.
ما صرفا یک تامین کننده نیستیم , بلکه بهترین خدمات پس از فروش و اجراء را نیز به مشتریان مان ارایه می دهیم.
تیم های کارازموده حمیران در عملیات اجرایی پروژه ها ,با سالها تلاش و تجربه , به تعهد و دانش روز اعتبار یافته اند.
', '', '9 الی 17', '', '3,2');
insert into [tblCustomerDesc] values(760, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.borjsazanemotahed.com', 'borjsazan_najafi@yahoo.com', 'برج سازان متحد', 1, ' بتن و فرآورده های بتنی
 سنگ های ساختمانی
مصالح ساختمانی
 کاشی و سرامیک
 سنگ های ساختمانی
', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'ارائه وعرضه کلیه محصولات با قیمت مناسب وضمانت ', '', '9الی 13    18 الی 20', '', '2');
insert into [tblCustomerDesc] values(761, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'تاسیسات ساختمان
 عایق ها
 محوطه سازی
مصالح ساختمانی
', null, null, 'http://www.sakhtemoon.com', 'mersa2012@yahoo.com', 'ایزوگام شرق گستر دلیجان', 1, '', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'امتیازات ایزوگام شرق گستر دلیجان
پیوند پذیری عالی و درزبندی یکنواختی را ایجاد می کند.
در برابر پانچ استاتیکی و ضربات وارده مقاوم است.
در مقابل پارگی و فشار هیدرواستاتیکی مقاوم است.
بسیار اقتصادی و مقرون به صرفه است.
احتیاج به برف روبی ندارد.
در مقابل سرما و گرما مقاومت زیادی دارد.
نصب آن اسان است.
کاربردش منجر با آلودگی هوا نمی شود.
در مقابل اشعه UV مقاوم بوده.
وزن زیادی ندارد و از بار اضافی سقف جلوگیری می کند
به علت سبکی و مقاومت زیاد به تنهایی یک عایق کامل جهت پشت بام، پی ساختمان، حمام و استخر، مخازن آب، تونلهای آبیاری، سردخانه ها، لوله های گاز و نفت و غیره استفاده میشود .
', '', '9 الی 18', '', '1');
insert into [tblCustomerDesc] values(762, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '1 . ابزار آلات ساختمانی
2 . پنجره
3 . محصولات دکوراسیون داخلی
4 . تاسیسات ساختمان
5 . مصالح ساختمانی', null, null, 'http://www.sakarco.com', 'SAKAR_PEN@YAHOO.COM', 'شرکت توری سازان ساکار', 1, '', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'تولید کننده توری های ثابت و رولینگ و پلیسه ای
کیفیت رمز موفقیت ماست
تحویل 5 روز کاری
جهت اخذ نمایندگی و دریافت کاتالوگ و سفارش کالا با شماره های زیر تماس حاصل فرمائید.
', '', '', '', '1');
insert into [tblCustomerDesc] values(763, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, 'قطعات بتنی
 بلوک بتنی
تیرچه و بلوک
', null, null, ' http://www.Block-Az.com', 'khalil.alizadeh@gmail.com', 'شرکت بلوک آذر نگین', 1, 'تولید کننده تیرچه و انواع بلوکهای عایق و سبک پرلیکا', '                    ', 1, -1, '1392/03/08', 0, null, 1, '', null, null, null, null, 'تولید کننده تیرچه و انواع بلوکهای عایق و سبک پرلیکا(رس منبسط شده) و پوکه معدنی -----نماینده رسمی شرکت عمران پارس(پرلیکا) در استان آذربایجان شرقی', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(764, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, ' ابزار آلات ساختمانی
 تاسیسات ساختمان
 مصالح ساختمانی
نمای ساختمان
یراق آلات
', null, null, 'http://www.rtdgroup.ir', 'rangintejarat@gmail.com', 'شرکت بازرگانی رنگین تجارت درین', 1, 'نماینده انحصاری پانل های کامپوزیت Maxbond در ایران ', '                    ', 1, -1, '1392/03/09', 0, null, 1, '', null, null, null, null, 'شرکت بازرگانی رنگین تجارت درین
شرکت رنگین تجارت درین در سال 1384 فعالیت خود را آغاز نموده است. این شرکت در ابتدا صرفاً به اجرای ورق های کامپوزیت پرداخته و در این زمینه بسیار موفق عمل کرد. این حرکت تا سال 1387 ادامه داشت و رزومه بسیار قوی از خود به جا گذاشت و در همین سال هیئت مدیره شرکت تصمیم بر این گرفت که بخش بازرگانی شرکت را فعال نماید و نام این شرکت به گروه بازرگانی رنگین تجارت تغییر کرد. در سال 1388 پس از عقد قرارداد با شرکت Maxchance  این شرکت به عنوان نماینده انحصاری پانل های کامپوزیت Maxbond در ایران شناخته شد. ما با تکمیل کادر پرسنلی مجرب و با لطف و عنایت پروردگار و تلاش شبانه روزی مسئولین توانستیم به سمت پیشرفت حرکت نماییم. بعد از مدتی چشم انداز شرکت ترسیم شد:
حرکت به سمت تبدیل شدن به بزرگترین کلینیک تخصصی نمای ساختمان با امکانات و تجهیزات منحصر به فرد و خدمات متمایز در زمینه نمای ساختمان.
چشم انداز ما جنبشی بزرگ در داخل ساختار شرکت ایجاد کرد و قدم بعدی شرکت که عقد قرارداد با شرکت Trespa بود برداشته شد و هم اکنون گروه بازرگانی رنگین تجارت درین  به عنوان نماینده انحصاری پانل های HPL  (نمای چوب) Trespa معرفی می شود.
همچنین در این شرکت کارگاه های آموزشی جهت بالا بردن کیفیت اجرای نمای HPL برای عموم برگزار می شود. 

شرکت رنگین تجارت خدمات ذیل را ارائه می دهد:
*بیش از 25 رنگ و طرح کامپوزیت آلومینیوم در ابعاد مورد درخواست شما
*بیشتر از 150 رنگ و طرح ورق های چوبی HPL در ابعاد مورد نظر شما
*تولید کلیه پروفیل های مورد نظر شما با کیفیت و حساسیت
*ارائه طرح و نقشه های تخصصی سازه و زیرکار توسط گروه طراحی مجرب شرکت
*تأمین کننده موادی همچون: پیچ، پرچ و انواع چسب های سیلیکون و پلی اورتان برای خدمات
امید است روزی نزدیک برای دستیابی به چشم انداز شرکت.
', '', '8:30 الی 16:30', '', '10,2');
insert into [tblCustomerDesc] values(765, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.nano-p-toos.com', ' nano_p_tb@yahoo.com', 'شرکت نانو پوشش طوس ', 1, 'بتن و فرآورده های بتنی
آب بند بتن
عایق ها
 عایق رطوبتی
مصالح ساختمانی
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'شرکت نانو پوشش طوس 
مجری متخصص ضد آب سازی کامل ساختمان ها و سازه ها با فناوری نانو زایکوسیل ( zycosil ) نماینده انحصاری شرکت اکسیر شرق در استانهای خراسان
آب بندی و لاینینگ خاک , فونداسیون , دیوارهای حائل , مخازن آب شرب , استخر و جکوزی , سرویسهای بهداشتی , بام , نماهای سنگی , آجری و سیمانی با فناوری نانو زایکوسیل
', '', '8:30 الی 13:30   16:30 الی 20:30', '', '3');
insert into [tblCustomerDesc] values(766, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.novin_beton.com', 'karbazar94@yahoo.com', 'شرکت نوین فوم بتن ', 1, 'سبک سازی و کاهش بار مرده سازه ها ', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'فعالیت خود را از سال 1387 با هدف نیاز روز افزون صنعت ساختمان در راستای سبک سازی و کاهش بار مرده سازه ها و خصوصیات حرارتی و صوتی با استفاده ازمصالح نوین و بهره گیری از دانش فنی و پشتوانه تحقیقاتی اغاز نمود .
 در این راستا این شرکت  توانسته تولیدات خود را در زمینه ساخت ماشین آلات سیار فوم بتن در چندین تیپ مختلف و ساخت دستگاه سیار فوم بتن تکفاز برای اولین بار در ایران به اکثر نقاط و راه اندازی خطوط بلوک سبک c.l.c و تا به امروز دارای رزومه درخشان بوده و با توجه به توان تولیدی امروز خود، آماده ساخت دستگاه پرتابل در کمتر از 10 روز  و راه اندازی خط تولید بلوک سبک در مدت زمان کمتر از 30 روز می باشد.
فعالیت های گروه  محدود  به ساخت  ماشین آلات و  تولید قطعات نشده و   این گروه  توانسته در زمینه تولید و فروش بلوک سبک  c.l.c و تامین فوم (پروتئینه و شیمیایی )  و الیاف پلی پروپیلن روند چشمگیری داشته باشد همچنین اجرائیات خود را با دارا بودن چندین دستگاه پرتابل و کادری مجرب و کارآمد در زمینه تولید و اجرای فوم بتن دراکثر نقاط ایران در دسترس انبوه سازان قرار دهد .
', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(767, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'save_insulation@yahoo.com:', 'شرکت بلورین نما', 1, ' تاسیسات ساختمان
 عایق ها
 مصالح ساختمانی
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'نصب و اجرای انواع عایق EPDM-NBR.مشاوره و فروش انواع عایق صوتی -حرارتی', '', '', '', '2');
insert into [tblCustomerDesc] values(768, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.stoksole.com', ' stocksole@ymail.com', 'شرکت سوله استوک', 1, ' تاسیسات ساختمان
مصالح ساختمانی
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'تخصصی ترین مرکز تامین سوله دست دوم و تجهیز کارگاه های ساختمانی و راه سازی و سازه های گلخانه ای با ده ها رزومه معتبر در سراسر کشور و خاورمیانه', '', '9 الی 17', '', '2');
insert into [tblCustomerDesc] values(769, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'parsstoneco@yahoo.com', 'شرکت پارس استون', 1, ' مصالح ساختمانی
 مصالح ساختمانی جدید
 نمای ساختمان
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'پارس استون جدید ترین پوشش نمای داخلی و خارجی ساختمان به همت مبتکران جوان ایرانی برای اولین بار  در خاورمیانه      
  ضد آب و 100% قابل شستشو
ضد آتش , عایق صوتی و عایق حرارتی
طول عمر بالا با صرفه اقتصادی
عدم رنگ پریدگی در اثر تابش خورشید
قابلیت انعطاف پذیری و عدم شکنندگی و ترک
ساخته شده با مواد معدنی و فاقد هر گونه مواد شیمیایی
اجرای سریع و آسان و قابل بهره برداری بعد از 24 ساعت
در رنگ بندی متفاوت با طراحی دلخواه شما
قابل اجرا بر روی سطوح مختلف
قیمت مناسب
پذیرش اخذ نمایندگی فعال رسمی در خاورمیانه
', '', '', '', '10,9,3');
insert into [tblCustomerDesc] values(770, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', ' cedar_white_chalk@yahoo.com', 'تعاونی سپید گچ سرو', 1, 'تولید گچ ساختمانی و دیوار گچ
گچ، سیمان و آهک
 مصالح ساختمانی جدید
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'شرکت تعاونی سپید گچ سرو تولید کننده گچ ساختمانی و گچ دیوار ', '', '7 الی 19', '', '1');
insert into [tblCustomerDesc] values(771, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.barokazhand.com', 'barokazhand@yahoo.com', 'شرکت باروک آژتد', 1, 'دیوار پوش ها
محصولات دکوراسیون داخلی
 مصالح ساختمانی
کفپوش ها
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'این شرکت فعالیت خود را از سال 1382در زمینه طراحی و اجرای دکوراسیون داخلی آغاز کرده است.
پروژه های تجاری اداری شرکت شامل تعدادی از واحد های تجاری برج قائم(میدان آرادگان)،فرمانداری کرج،فروشگاه فرس (شعبه حهار راه طالقانی)،فست فود آیدا(شعبه عظیمیه)،رستوران تیروژ(جاده چالوس)،املاک دی (میدان رستاخیز)،آرایشگاه هادی(بلوار رستاخیز)و.......می باشد.
همچنین اقدام به همکاری با مجرب ترین سازنده های کرج ار جمله آقایان فردوسی،عدنان،فلاح،بیات،فرهمند و....نموده است.

از سال 1390 اقدام به واردات پارکت با برند فیت فلور نموده است.
این شرکت علاوه بر طراحی مجری و فروشنده ی کناف،کاغذ دیواری،پارکت،لمینت،کفپوش،چوب،کابینت،سنگ،نورپردازی با کادری مجرب می باشد.
', '', '', '', '10,2');
insert into [tblCustomerDesc] values(772, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.kavehcompany.com', 'kaveh.company@yahoo.com', 'شرکت کاوه ', 1, ' مصالح ساختمانی', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'تولید کننده انواع پیچ سوله - پیچ چرخ - استد بولت
دارای گواهی از وزارت نفت و گاز جهت تولید انواع پیچ و مهره
درکنترل کیفیت ISO9001 - ISO/TS 29001  دارای
', '', '7 الی 17', '', '1');
insert into [tblCustomerDesc] values(773, 2, null, null, null, '', '1388/07/00', '          ', '          ', null, null, '', null, null, '', 'BANASAZANCHEHELSOTOON.CO@GMAIL.COM', 'شرکت بنا سازان چهل ستون ایران', 1, 'شیر آلات
 مصالح ساختمانی
 کاشی و سرامیک
', '                    ', 1, -1, '1392/03/10', 0, null, 1, '', null, null, null, null, 'تامین سیمان و مصالح ساختمانی، مشاوره، طراحی و ساخت پروژه های عمرانی
ارسال سیمان به استان‌های تهران، قم، مرکزی، همدان، خوزستان و سایر استانهای جنوبی کشور بدون هزینه حمل و مالیات در کوتاه ترین زمان




پروژه ها :



نام پروژه	موضوع پروژه	کارفرما	ارزش	مکان	شروع	پایان
مجتمع فرهنگیان ماهشهر	تعاونی مسکن فرهنگیان	موج سبز آرامش	100,000,000,000	ماهشهر	فروردین 1389	شهریور 1392
مسکن مهر پرند1	تعاونی مسکن مهر	آرش آرمه	300,000,000,000	پرند	اسفند 1390	اسفند 1392
مسکن مهر پرند2	تعاونی مسکن مهر	آرش آرمه	300,000,000,000	پرند	فروردین 1391	فروردین 1393
مسکن مهر قزوین	تعاونی مسکن مهر	آرش آرمه	250,000,000,000	قزوین	دی 1389	فروردین 1392
مسکن مهر شهرجدید پردیس	تعاونی مسکن مهر	آرش آرمه	400,000,000,000	شهر جدید پردیس	آبان 1391	آبان 1393
', '20', '9 الی 18', '', '13,2');
insert into [tblCustomerDesc] values(774, 2, null, null, null, '', '1390/04/00', '          ', '          ', null, null, '', null, null, 'www.niksazehco.com', 'info@niksazehco.com', 'شرکت پرسان پلاست نیک سازه ', 4, 'واردات تایل گچی 60*60
واردات شاسی کلیک
واردات گچبرگ
فروش پلی کربنات
فروش پارت صفحه
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'واردات تایل گچی 60*60
واردات شاسی کلیک
واردات گچبرگ
فروش پلی کربنات
فروش پارت صفحه
', '18', '8 الی 19', '', '3');
insert into [tblCustomerDesc] values(775, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'sssssss', null, '', null, 3, -1, '1392/03/11', 1, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(776, 1, 'qqq', 'aaaa', 'gjh', null, '1392/02/02', '44444     ', '8888888888', null, null, '', null, 'hjhj                ', null, 'hjh', null, null, '', '5454                ', 3, -1, '1392/03/11', 1, null, null, null, 2, 2, '52', 1, null, null, null, null, '13,10,9,3,2,1');
insert into [tblCustomerDesc] values(777, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.tbarsmetal.com', ' tbars_metal@yahoo.com', 'صنایع فلزی سقف متین', 1, 'محصولات دکوراسیون داخلی
 سقف کاذب و سقف کناف
 مصالح ساختمانی
 مصالح ساختمانی جدید
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'تولید کننده سقف و دیوار کادب (Drywall) پانل گچی-سازه های گالوانیزه سقفی و دیواری(مشبک و نور مخفی)-تایل و ...
این شرکت تولید کننده سقف و دیوار کاذب است که میتوان از محصولاتی نظیر پانل گچی روکشدار، سازه های گالوانیزه سقفی و دیواری، سقف مشبک اعم از ریل و تایل نام برد. این کارخانه دارای نشان استاندارد ایران میباشد. تمامی تلاش این شرکت برپایه بومی سازی سیستم درای وال و ارتقای کیفیت هر چه بیشتر محصولاتمان است تا بتوانیم رضایت شما مشتریان گرامی را جلب نماییم.
افتخار ما خدمت به شماست    
', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(778, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.spadanastone.com', 'bestjob1292@yahoo.com', 'شرکت سنگ مصنوعی اسپادا', 1, 'مصالح ساختمانی
بتن و فرآورده های بتنی
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'سنگ مصنوعی اسپادا
سنگ مصنوعی سنگ مصنوعی اسپادانا دارای بزرگترین مرکز تولید و پخش سنگ های مصنوعی (کف نما پله)در بالا ترین تنوع
سنگ مصنوعی اسپادانا تولید و فروش انواع قالب سنگ مصنوعی سنگ مصنوعی اسپادانا دارای بزرگترین مرکز تولید و پخش سنگ های مصنوعی (کف نما پله)در بالا ترین تنوع ابعاد /طرح /رنگ و قیمتی ارزانتر از سنگ طبیعی و مهندسی ساخت قالبهای سنگ مصنوعی:اماده همکاری باکلیه انبوه سازان و واحد های تولیدی سنگ مصنوعی میباشد.
', '', ': 8 صبح تا 8 شب', '', '1');
insert into [tblCustomerDesc] values(779, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'green_sea912@yahoo.com', 'شرکت کیمیا پودر صدف', 1, ' سنگ های ساختمانی
 مصالح ساختمانی
 مصالح ساختمانی (متفرقه)
مصالح ساختمانی جدید
 چسب کاشی و سرامیک
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'شرکت کیمیاگر صدف تولید کننده مواد اولیه مینرال ، پیگمنت های غیر آلی ، گچ های پاششی ، چسب های پودری و غیره', '', '8:30 الی 17', '', '1');
insert into [tblCustomerDesc] values(780, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.may-co.ir', 'movahedin@yahoo.com', 'شرکت تعاونی موحدین آسفالت یزد', 1, ' بتن و فرآورده های بتنی
 سازه های پیش ساخته
 سنگ های ساختمانی
مصالح ساختمانی
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'تولید انواع آسفالت سرد و گرم
تولید مصالح دانه بندی شده شامل بیس و ساب بیس ، نخودی و بادامی طبیعی و شکسته
تولید ماسه شسته دانه بندی شده
تولید قطعات بتنی پیش ساخته شامل باکس بتنی، المان پل، دستک ، نیوجرسی ، لوله بتنی وغیره
تولید بتن آماده با استاندارد آزمایشگاهی
انجام پروژه های عمرانی راهسازی و اجرای آسفالت
', '', '7 الی 15', '', '1');
insert into [tblCustomerDesc] values(781, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.derka-novin.com', 'info@derka-novin.com', 'شرکت درکا نوین نما', 1, 'مصالح ساختمانی
 عایق حرارتی
 عایق صوتی
 نمای ساختمان
مصالح ساختمانی جدید
 سنگ دکوراتیو و مصنوعی
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'تولیدات این شرکت به شرح ذیل می باشند:
ملات مینرال

          ملات مینرال، قابلیت چسبندگی بر هر سطح صافی را دارد، بنابراین استفاده از آن به جای سنگ، آجر، سیمان، ... در نمای خارجی و یا داخل ساختمان امکان پذیر است.
نمای مینرال یکی از مقاوم ترین مصالح مورد استفاده در نما، در برابر خطر بزرگ زلزله است. یکی دیگر از ویژگی های مینرال، تنوع رنگ و فرم‌های ویژه برای نماهای خارجی و داخلی ساختمان است.


نمای دکوراتیو عایق

     نمای مذکور شامل یک لایه ملات نازک از مواد پلیمری و معدنی است که بر روی "ای پی اس" (یونولیت کند سوز) اجرا شده و از مقاومت بسیار بالایی برخوردار است.
این نما که در طرحهای متفاوت (از جمله رومی،مدرن و ...) ارائه می شود وعایق رطوبتی،حرارتی و صوتی کامل میباشد، اتلاف انرژی را در ساختمان تا ۶۰% کاهش میدهد.
علاوه بر مزایای ذکر شده در عین حال زیبا، بسیار سبک (۱٠ کیلوگرم در متر مربع ) با ساختاری بسیار مقاوم و دارای قابلیت رنگ پذیری بالا و مقاوم در برابر اشعه UV است. این محصول مطبق با تمامی شرایط مطرح شده در مبحث ۱۹ مقررات ملی ساختمان است و قابل اجرا در کلیه شرایط آب و هوایی است.
محصول ارائه شده توسط این شرکت از تکنولوژی بسیار بالا در ساختار مواد اولیه برخوردار است.
', '', ' 9 الی 16:30', '', '2');
insert into [tblCustomerDesc] values(782, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.izogum.blogfa.com', ' izogumdelijan@yahoo.com', 'ایزوگام اعتماد شرق دلیجان', 1, ' عایق ها
 مصالح ساختمانی
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'ایزوگام اعتماد شرق دلیجان
 مناسب جهت انواع پروژه های ساختمانی
ایزوگام دلیجان بعنوان بهترین عایق رطوبتی بام سرویسهای بهداشتی پل ها و استخرها مورد استفاده قرار می گیرد ایزوگام دلیجان با 5 سال بیمه ایران و ضمانت نامه کارخانه محصولات خود را تایید می نمایدو دارنده استاندارد بین المللی اروپا و ایزو 9001-2008 می باشد .
محصولات شرکت ایزوگام دلیجان شامل: دو لایه فویلدار درجه یک دو لایه فویلدار درجه دو و پودری ساده یا بدون فویل در ضخامت های مختلف جهت مصارف مشتریان خود قبول سفارش نموده و تولید می کند .
متقاضیان می توانند جهت خرید مستقیما با ما تماس بگیرند .
شرکت عایق رطوبتی ایزوگام دلیجان آماده شرکت در استعلام قیمت کلیه ادارات نهادها و شرکت های خصوصی و تعاونی های مسکن با شرایط ویژه پروژه های ساختمانی می باشد .
شرکت ایزوگام دلیجان در ضخامت های مختلف و با قیمت متفاوت محصولات را با توجه به نیاز مشتری تولید نموده و به بازار ایران و جهان ارائه می کند.
', '', '8الی18', '', '1');
insert into [tblCustomerDesc] values(783, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.betonparse.com', 'BETONPARSE@YAHOO.COM', 'شرکت بتن پارسه ', 1, ' بتن و فرآورده های بتنی
 تاسیسات ساختمان
 مصالح ساختمانی
یراق آلات
ابزار آلات ساختمانی
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'شرکت بتن پارسه 
تولیدوعرضه کننده افزودنیهای بتن 

تولید و عرضه کننده اسپیسرهای پلاستیکی

تولید و عرضه کننده واتر استاپ 

آب بندی پروژه های آبی 

عرضه سیمان .فله و پاکت 
', '', '', '', '2,1');
insert into [tblCustomerDesc] values(784, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.thermowood.asia', 'INFO@THERMOWOOD.ASIA', 'شرکت پاراکس', 1, ' مصالح ساختمانی
 نمای ساختمان
 رنگ
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'چوب نما-چوب ترمووود-مخصوص نما و کف محصول کشور فنلاند
با 10 سال بیمه کیفیت محصول و 35 سال گارانتی
مخصوص استفاده در نمای بیرونی ساختمان و کف ( دکینگ ) و ساخت فلاورباکس و آلاچیق و پرگولا و سازه های چوبی و... (چوب نما -نمای چوبی)
تنوع بیش از 160گونه چوب ترمووددر ضخامت های مختلف و عرض های متفاوت ودر 18 پرده رنگی از رنگهای مخصوص ترموود با امکان تحویل یک روزه
مقاوم در برابر سرما ، گرما ، رطوبت ، بارندگی و UV آفتاب
با 10 سال بیمه نامه کیفیت محصول و 35 سال گارانتی رسمی خاورمیانه
تنها ترموود دارای بیمه نامه کیفیت محصول و قیمت مناسب
وارد کننده چوبهای ترموود و رنگهای مخصوص فضای باز(نمای بیرونی ساختمان) از کشور فنلاند
', '', '8:30 الی 17', '', '3');
insert into [tblCustomerDesc] values(785, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.shahabsang.com', ' Info@shahabsang.com', 'شرکت شهاب سنگ فرتاک ', 1, 'تجهیزات شهری و ترافیکی
دیوار پوش ها
سنگ های ساختمانی
 مصالح ساختمانی
نمای ساختمان
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'شرکت شهاب سنگ فرتاک 
تکنولوژی سمنت پلاست بعنوان نسل جدیدی از سنگهای مصنوعی با استفاده از فناوری نانو توانسته محصولات جدیدی تولید نماید که از خصوصیات آن می توان به مقاومت بالا(در حدود 3برابر بتن)،نفوذ رطوبت پائین،مقاوت فشاری،خمشی و نیز کششی ایده آل،فرسایش کمتر و وزن پائین تر نسبت به سنگهای طبیعی اشاره کرد.
با استفاده از این تکنولوژی طیف وسیعی از محصولات شامل : انواع کفپوش ،سنگ دکوراتیو نمای بیرونی و داخلی ساختمان،سنگ پله،قرنیز،جدول و ... در ابعاد و رنگهای مختلف قابل تولید است.
شرکت شهاب سنگ فرتاک در همین راستا و در جهت فراگیر کردن این صنعت نو و کارگشا کلیه محصولات مذکور را با کیفیتی بی همتا و قیمت بسیار پایین تر از بازار از درب کارخانه به فروش می رساند.
', '', '7:30 الی 20', '', '2');
insert into [tblCustomerDesc] values(786, 2, null, null, null, '', '1363/07/00', '          ', '          ', null, null, '', null, null, ' http://www.shahabsang.com', 'vilakarco@gmail.com', 'شرکت فنی و مهندسی ویلا کار ', 1, 'سازه های پیش ساخته  
محصولات دکوراسیون داخلی 
مصالح ساختمانی 
نمای ساختمان 
بتن و فرآورده های بتنی 
', '                    ', 1, -1, '1392/03/11', 0, null, 1, '', null, null, null, null, 'شرکت فنی مهندسی ویلا کار  
مهندسی و اجرای پروژه های ساختمانی و صنعتی 
طراح و مجری سبک سازی سازه ها با تغییر روش تحلیل و مصالح نوین 




پروژه ها :
ام پروژه	موضوع پروژه	کارفرما	ارزش	مکان	شروع	پایان
فروشگاه زنجیره ای امیران	طراحی و اجرا	شخصی	10,000,000,000	میاندوآب	خرداد 1382	مرداد 1384
ساختمان مسکونی 7 طبقه سازه ای	طراحی و اجرا	شخصی	8,000,000,000	تبریز - ولیعصر	اردیبهشت 1384	خرداد 1386
ساختمان v.i.p گسترش فولاد تبریز	مدیریت پروژه	G.F.T	4,000,000,000	تبریز - ایدم	شهریور 1390	اسفند 1390
یارد تعمیراتی شرکت گاز ایران	مدیریت پروژه	شرکت ملی گاز ایران	7,000,000,000	ارومیه	فروردین 1389	آذر 1389
ساختمان پزشکان بوعلی	سرمایه گذار و طراح و مجری	ویلاکار	15,000,000,000	میاندوآب	خرداد 1383	مهر 1385
کارخانه نورد گرم میلگرد	نظارت عالیه عمرانی	گسترش فولاد تبریز G.F.T	 	تبریز	فروردین 1391	اسفند 1391
بانک مسکن شعبه مرکزی	اجرا	بانک مسکن	1	بوکان	خرداد 1365	اردیبهشت 1366
ساختمان مرکزی بنیاد شهید	اجرا	بنیاد شهدا	1	میاندوآب	فروردین 1366	تیر 1367
', '', '9الی 13  16 الی 19', '', '10,2');
insert into [tblCustomerDesc] values(787, 2, null, null, null, 'ایران -> استان هرمزگان -> بستک1', '1380/08/08', 'shomare1  ', '2221      ', null, null, 'tozihat1', null, null, 'adas.com1', 'hgdf@gfdg.com1', 'sabti1', 4, 'noe faalat1', '1115                ', 1, 258, '1392/03/11', 0, null, 2, '654641', null, null, null, null, '1darbaretaminkonannde', '10', '8', '42.00', '2,3,9,13');
insert into [tblCustomerDesc] values(788, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'saeed_nabipoor@yahoo.com', 'شرکت بادگران میهن سرافراز ', 1, 'سنگ های ساختمانی 
مصالح ساختمانی 
کاشی و سرامیک 
', '                    ', 1, -1, '1392/03/12', 0, null, 1, '', null, null, null, null, 'این شرکت با داشتن انبار سنگ بزرگ در شهر قزوین و دفتر مرکزی در تهران ، و موجودی حدود 60 هزار متر مربع در این انبار مخصوصا سنگ مرمریت کرم نمین 
تهیه و دپوی از بزرگترین تولید کننده سنگ های تزئینی در کشور و همچنین توزیع سریع در زمان نیاز پروژه های در حال ساخت مشاوره توسط کارشناس فروش شرکت در طراحی سنگ جهت کف و نمای ساختمان تنوع بسیار زیاد انواع سنگ در متراژ بالا و ابعاد مختلف در انبار قزوین کرایه حمل مناسب جهت خربدار از قزوین تا تهران و حومه 
', '', '8 الی 18', '', '2');
insert into [tblCustomerDesc] values(789, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ggdco.com', 'ggd_co@yahoo.com', 'شرکت قطعه گستر دانش', 1, 'پیچ ، مهره ، واشر ،آلن ، استاد بولت ، رول بولت ، کوپلر ، خار', '                    ', 1, -1, '1392/03/12', 0, null, 1, '', null, null, null, null, 'شرکت قطعه گستر دانش 
با توجه به اهمیت پیشرفت روز افزون صنعت و بمنظور ارتقا کیفیت محصولات صنایع مختلف این مجموعه بعنوان تامین کننده و پیچ و مهره های صنعتی خواص و قطعات صنعتی با بهره گیری از ماشین الات مجهز و پیشرفته همچنین شناخت صحیح از نیازهای صنایع مختلف در طی یک دهه گذشته نوانسته خدمات و محصولات متنوعی به جامعه صنعتی کشور ارائه نماید . حاصل این مجموعه طراحی و ساخت قطعات صنعتی ، پیچ و مهره خواص با استانداردهای رایج بین المللی نظیر ANSI/ISO/DIW/ASTM/DBL/MBN  و همچنین کلیه قطعات صنعتی (غیر استاندارد) مطابق با نقشه و مشخصات فنی و ندارک ارائه شده توسط خریدار را با  کیفیتی بالا ارائه می نماید.
', '', '9 الی 17 ', '', '1');
insert into [tblCustomerDesc] values(790, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.azarakhshsang.com', 'azarakhshston.co@gmail.com', 'آذرخش سنگ (سمنت پلاس)', 1, ' سنگ های ساختمانی
 محصولات دکوراسیون داخلی
 مصالح ساختمانی
 نمای ساختمان
 کفپوش ها
', '                    ', 1, -1, '1392/03/12', 0, null, 1, '', null, null, null, null, 'تولید سنگ های مصنوعی ( سمنت پلاست ) و بتنی

سنگ های ساختمانی نما، پله، زیر پله، جدول، دکوراتیو، موزائیک، کفپوش در سایزهای 30*30 ، 40*40 و 60*60 

کاربرد : سنگ نما در بیرون و خارج ساختمان ، دیوارها، پله ها، فضای سبز، ویلاها، کف حیاط ، حیاط باغ ، پیاده رو فضای

 سبز، پیاده ور شهرسازی، دیوار های شهرسازی، پارک ها ، آب نما ، جداول کنارجاده ها ، جدول فضای سبز ، آبرو ،قرنیز


خدمات:
     آموزش و راه اندازی خط تولید سمنت پلاست و تولید سنگ های بتنی
تهیه تجهیزات راه اندازی خط تولید
تهیه مواد اولیه خط تولیت:رنگ ، رزین، قالب 
', '', '9 الی 18', '', '1');
insert into [tblCustomerDesc] values(791, 2, null, null, null, '', '1111/11/11', '1         ', '1         ', null, null, '1', null, null, '1', '1', '1', 1, '1', '1                   ', 3, -1, '1392/03/12', 0, null, 1, '1', null, null, null, null, null, '11', '11', '1', '8,6');
insert into [tblCustomerDesc] values(792, 1, '1', '1', 'تناتاا', null, '1111/11/11', '42632     ', '22222     ', null, null, '1', null, 'ااا                 ', null, 'للللا', null, null, '1', '2222                ', 3, -1, '1392/03/12', 0, null, null, null, 1, 2, '222', 1, '111', null, null, null, '13,10,3,1');
insert into [tblCustomerDesc] values(793, 1, '2', '2', '1', null, '1111/11/11', '1         ', '1         ', null, null, '2', null, '1                   ', null, '1', null, null, '2', '1                   ', 3, -1, '1392/03/12', 0, null, null, null, 1, 2, '1', 2, null, null, null, null, '8,6');
insert into [tblCustomerDesc] values(794, 1, '11', '11', null, null, null, null, null, null, null, '11', null, null, null, null, null, null, '11', null, 3, -1, '1392/03/12', 1, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(795, 1, '22222', 'بلبلب', 'ش', null, '    /  /  ', 'ش         ', 'ش         ', null, null, 'بل', null, 'ش                   ', null, 'ش', null, null, 'بلبل', 'ش                   ', 3, -1, '1392/03/12', 0, null, null, null, 1, 2, 'ش', 1, null, null, null, null, '13,9,2');
insert into [tblCustomerDesc] values(796, 1, '4', '4', null, null, null, null, null, null, null, '4', null, null, null, null, null, null, '4', null, 3, -1, '1392/03/12', 1, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(797, 1, '33', '33', null, null, null, null, null, null, null, '33', null, null, null, null, null, null, '33', null, 3, 791, '1392/03/12', 1, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(798, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(799, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(800, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(801, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(802, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(803, 1, '11', '11', null, null, null, null, null, null, null, '11', null, null, null, null, null, null, '11', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(804, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(805, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 2, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(806, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 4, -1, '1392/03/12', 0, null, null, null, null, null, null, null, null, null, null, null, '7');
insert into [tblCustomerDesc] values(807, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(808, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(809, 1, '', '', null, null, null, null, null, null, null, '', null, null, null, null, null, null, '', null, 3, -1, '1392/03/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(810, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شرکت جی لیان جی', null, 'پله برقی
ایستگاه اتوبوس
 محوطه سازی
مصالح ساختمانی (متفرقه)
', null, 1, -1, '1392/03/13', 0, null, null, null, null, null, null, null, 'شرکت جی لیان جی
تولید کننده ورق های پلی کربنات ، کروگیت ، پلی کربنات تخت ، پلی کربنات دو جداره ، پلی کربنات سه جداره ، پلی کربنات سه جداره مثلثی ، ورق های آکریلیک
', null, null, null, null);
insert into [tblCustomerDesc] values(811, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'sazepaydarazar@yahoo.com', 'مجریان سازه پایدار آراز ', 1, 'خدمات طرح وترسیم نقشه- اجرا -مجری- مدیریت پیمان ساختمان-مشارکت در ساخت وساز- فروش مصالح نوین ساختمان', '                    ', 1, -1, '1392/03/13', 0, null, 1, '', null, null, null, null, 'خدمات طرح وترسیم نقشه -اجرا ومدیریت پیمان ساختمان-مشارکت در ساخت وساز- فروش مصالح نوین ساختمانی -خدمات مجری انجام امورات شهرداری ونظام مهندسی', '', '9 الی 20', '', '2');
insert into [tblCustomerDesc] values(812, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 2, -1, '1392/03/13', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(813, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.khuzestan-cement.ir', 'info@khuzestan-cement.ir', 'شرکت سیمان خوزستان', 2, '', '                    ', 1, -1, '1392/03/14', 0, null, 1, '', null, null, null, null, 'شرکت سیمان خوزستان درراستای استراتژی تدوین شده در هلدینگ فارس خوزستان مبنی بر توسعه صادرات غیر نفتی و ارز آوری با تلاش مجموعه مدیریت و کارکنان خود درسال 1391 با صادرات بیش از 740 هزار تن سیمان وکلینکر به کشور عراق ،توانست رتبه نخست شرکت های تابعه هلدینگ فارس وخوزستان و رتبه سوم صادرکنندگان کشور را به خود اختصاص دهد.
درسال های گذشته تکیه بر منابع غیر نفتی از اولویت خاص و ویژه ای برخوردار شده است ومدیریت  شرکت سیمان خوزستان نیز با درک این شرایط و با تکیه بر همت کارکنان پرتلاش خود با اتخاذ تصمیمات و استراتژی ویژه با استفاده از حداکثر امکانات موجود در این جهت گام مهم و اساسی برداشته و موفق به صادرات بیش از 35 درصد تولیدات خود درسال 1391 گردیده است .
با توجه به بررسی های کارشناسی  بعمل آمده از وضعیت موجود بازار وپیش بینی مصرف سال آینده پروژه های عمرانی کشور عراق وسایر کشورهای حاشیه جنوبی خلیج فارس درسال 1392 ، این شرکت درنظر دارد صادرات خود را بمیزان قابل توجهی افزایش دهد که انشاءالله با همت و تلاش مجموعه کارکنان سیمان خوزستان این امر محقق شود.  
', '', '7 الی 15', '', '1');
insert into [tblCustomerDesc] values(814, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.herbaco.com', ' indi.primer@yahoo.com', 'شرکت شیمیایی تحقیقاتی حربا', 1, 'تولید کننده انواع رنگ ، ضد رنگ ، موم پرایمر و مواد ایزولاسیون', '                    ', 1, -1, '1392/03/14', 0, null, 1, '', null, null, null, null, 'گروه شیمیایی تحقیقاتی حربا از سال ۱۳۷۰ بنابر سیاست کاری خود مبنی بر تحقیق و تولید محصولاتی که در ایران سابقه تولید نداشته اند با بهره گیری از علوم پیشرفته قدم به عرصه تولید مواد شیمیایی گذاشت و برای اولین بار در ایران محصولاتی چون جوهر رنگ تیوپی ، انواع رنگ و رزین و چسب را تولید و اینک به معرفی محصولی خاص می پردازیم که مخصوص کنترل خوردگی است و در ایران انحصارا تولید میشود. برای معرفی این محصول ابتدا شما را وارد بحث خوردگی و روشهای کنترل آن می نماییم.
صنایع شیمیایی تحقیقاتی حرباء
تولید کننده انحصاری موم پرایمرهای ایندی و انواع رنگ ، ضد زنگ و عایق های رطوبتی
ایزولاسیون عرشه پل ها ، دیوارهای برشی ، سازه های نگهبان
خطوط لوله و تجهیزات صنایع
 نفت ، گاز ،  پتروشیمی  ،  ساختمان
 آب بندی تونل ها و مترو
مومیایی و کوتینگ اسکلتهای فلزی سالم و زنگ زده  بدون نیاز به عمل پرهزینه و مخرب سند بلاست
تامین مواد و اجرای مهندسی عملیات در سیستم های
  آب بندی سازه های بتنی و فلزی ، استخر و حوضچه های آب و فاضلاب ، سیستم های تخصصی ترمیم بتن،  واتر استاپ، 
افزودنیهای بتن ، الیاف تقویتی بتن ، انواع درزگیرها(ماستیک گرم اجراء و سرد اجراء) ،  رنگهای صنعتی و ساختمانی ، 
پوششهای خطوط لوله در صنایع نفت و گاز و پتروشیمی و مخابرات و آب بندی تونل ها و مترو', '', '6 الی 24', '', '1');
insert into [tblCustomerDesc] values(815, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'caspianwindow@gmail.com', 'شرکت پنجره کاسپین', 1, 'پنجره
پنجره UPVC
توری پنجره
شیشه دوجداره
 پروفیل UPVC
', '                    ', 1, -1, '1392/03/15', 0, null, 1, '', null, null, null, null, 'شرکت پنجره کاسپین 
چرا پنجره‌ کاسپین؟
اعتقاد مدیریت کاسپین، ارائه محصول و خدمات در شان مشتریانی است که به دنبال کیفیت هستند.
در این راستا:
•	احترام به نیاز مشتری
•	بهبود مستمر کیفیت تولید، کیفیت نصب و کیفیت خدمات
•	تلاش در تحویل به موقع کالا
به عنوان بهترین تبلیغ، مبنای کار خانواده پنجره کاسپین می باشد.  
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(816, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.sazepoosh.com', ' info@sazepoosh.com', 'شرکت سازه پوش سپاهان', 1, ' سرویس های بهداشتی
سنگ های ساختمانی
شیر آلات
مصالح ساختمانی
کاشی و سرامیک
', '                    ', 1, -1, '1392/03/15', 0, null, 1, '', null, null, null, null, 'شرکت سازه پوش سپاهان
 نماینده رسمی و انحصاری شرکت های ایتالیایی LITOKOL ، REFIN ، ZUCCHETTI ،  KOSدر ایران می باشد . سازه پوش سپاهان در زمینه مشاوره ، نصب ، طراحی و واردات محصولات ساختمانی و خدمات پس از فروش این شرکت ها تنها نماینده  رسمی در ایران می باشد. 
گارانتی محصولات این کارخانه های معتبر در ایران توسط شرکت سازه پوش امضا می گردد ، گارانتی محصولات بعد از نصب انجام می گیرد. 
گارانتی محصولات 2 سال می باشد و شامل هرگونه عیب و نقص و برطرف آنها از طرف کارخانه می باشد .
طراحی شیک و چشم نواز و کیفیت بالای محصولات این شرکت ، این محصولات را از سایر محصولات مشابه متمایز نموده است.
اگر به دنبال زیبایی و کیفیت و متفاوت بودن هستید با ما تماس بگیرید .
کاربران عزیز شرکت سازه پوش سپاهان در سه زمینه: شیر آلات و سرویس های بهداشتی ، کاشی و سرامیک ،مواد و مصالح ساختمانی از کشور ایتالیا واردات انجام می دهد .کلیه محصولات این شرکت ایتالیایی بوده و برندهای بزرگ ایتالیا شامل زوکتی ، رفین ، لیتوکل و ... را شامل می شود .برای سهولت و دسترسی آسان شما عزیزان به محصولات و آشنایی بیشتر ،برای هر کدام از این زمینه ها وب سایتی جداگانه طراحی نموده ایم تا شما با توجه به نیاز خود وارد سایت تخصصی آن مجموعه شوید و با محصولات ما آشنا گردید .

وب سایت تخصصی مصالح ساختمانی :     
  www.litokol.sazepoosh.com   
وب سایت تخصصی شیر آلات و سرویس های بهداشتی :          
www.zucchetti.sazepoosh.com
وب سایت تخصصی کاشی و سرامیک :     

 www.refin.sazepoosh.com
', '', '9 الی 18', '', '2');
insert into [tblCustomerDesc] values(817, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'HAMEDZARE454@YAHOO.COM :', 'شیک سازان پارسا در', 1, 'پنجره
درب
یراق آلات
شیر آلات
مصالح ساختمانی
', '                    ', 1, -1, '1392/03/17', 0, null, 1, '', null, null, null, null, 'تولید کننده دربهای داخلی ملچ وHDF وغیره
تولید کننده پنجره های دوجداره (UPVC)
امروز شرکت شیک سازان پارسادُر مفتخر است انواع در و پنجرهUPVC را با برند سیندژ که از نظر کیفیت و طول عمر تضمین شده است در اختیار مصرف کنندگان گرامی قرار داده تا با ترکیب ظرافت و استحکام آنچه را که لایق ایران و ایرانی است به ارمغان بیاورد.


مطمئن انتخاب کنید

*تولید با دستگاه های تمام اتوماتیک ساخت ترکیه 

*قابلیت ساخت انواع طرح های پنجره

*استفاده از بهترین پروفیل ها و یراق آلات در بازارهای جهانی 

*امکان سفارش انواع مدل های بازشو(یک حالته.دو حالته. ) 

*ظرفیت بالای خط تولید و قابلیت انجام سفارشات انبوه سازی
 
*صداقت کاری و انجام به موقع تعهدات 


*ضمانت 15ساله 

آماده همکاری با پروژه های انبوه سازی
 
اول کیفیت مناسب دوم قیمت مناسب    

   کاملا رقابتی
 
 نقشه یا ابعاد در و پنجره از شما پیش فاکتور و دادن قیمت باورنکردنی از ما                                          
در کمتر از 24 ساعت
', '20', ' 8:30 تا20', '', '1');
insert into [tblCustomerDesc] values(818, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'naderi.roholah@gmail.com', 'کارگاه تیرچه فراز', 1, 'مصالح ساختمانی
 تیرچه و بلوک
', '                    ', 1, -1, '1392/03/17', 0, null, 1, '', null, null, null, null, 'کارگاه تیرچه افراز
کارگاه تولید تیرچه افراز تولید کننده انواع تیرچه فلزی و سفالی با بهترین کیفیت و نازلترین قیمت
', '', ' 7 الی 20', '', '1');
insert into [tblCustomerDesc] values(819, 2, null, null, null, '', '1370/01/00', '          ', '          ', null, null, '', null, null, 'www.', 'perlite_omch@yahoo.com', 'کارخانه پرلیت زنجان', 3, ' بتن و فرآورده های بتنی
 سازه های پیش ساخته
عایق ها
 مصالح ساختمانی
کاشی و سرامیک
', '                    ', 1, -1, '1392/03/17', 0, null, 1, '', null, null, null, null, 'کارخانه پرلیت زنجان دارای دو معدن سنگ پرلیت در اردبیل و زنجان تولید کننده پرلیت خام (سلاکس) با دانه بندی های مختلف و همچنین تولید کننده پرلیت منبسط (فرآوری شده) با دانه بندی و وزن مخصوص های گوناگون تحت لیسانس انیستیتو پرلیت آمریکا (perlite.org) می باشد .', '55', ' 9 الی 16', '', '1');
insert into [tblCustomerDesc] values(820, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ariyanparax.com', ' ariyanparax@yahoo.com', 'شرکت مهندسی آرین پاراکس', 1, ' محصولات دکوراسیون داخلی
 نمای ساختمان
 مصالح ساختمانی
تجهیزات آشپزخانه
 سنگ های ساختمانی
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'طراحی و اجرای دکوراسیون داخلی،معماری داخلی ،طراحی نما،نما سازی،تعمییرات و بازسازی،نقشه کشی فاز یک و دو،انجام محاسبات سازه برق و مکانیک،مهندسین مشاور
طراحی تخصصی نما و دکوراسیون داخلی
نقشه کشی معماری فاز یک و دو
انجام محاسبات سازه های بتنی و فلزی
تعمییرات و بازسازی ساختمان های قدیمی
تهیه نقشه برای ساختمان های فاقد نقشه
', '', ': 9 الی 18', '', '10');
insert into [tblCustomerDesc] values(821, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'misagh_zn@yahoo.com', 'فنی بازرگانی میثاق زنده رودنقش جهان', 1, 'عایق ها
عایق حرارتی
عایق صوتی
مصالح ساختمانی
مصالح ساختمانی جدید
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'دفترمرکزی فروش محصول جدید دوغاب آماده فراوری شده"کف نوش"جهت بازسازی و بندکشی آسان کاشی وسرامیک نمایندگی فروش عایق برودتی حرارتی صوتیAeroflex ازجنسEPDM', '', '', '', '2');
insert into [tblCustomerDesc] values(822, 2, null, null, null, '', '1391/10/00', '', '', null, null, '', null, null, 'www.', 'zibagostarmosaic@yahoo.com', 'موزائیک سازی زیبا گستر', 1, 'مصالح ساختمانی
 تیرچه و بلوک
 شن و ماسه
موزائیک
', '', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'موزائیک سازی زیباگستر
موزائیک ساز لوله های سیمانی و تیرچه بلوک
ارائه دهنده موزائیک های سردسیری با کیفیتهای عالی ودر رنگها و طرح های مختلف
', '7', '8الی 17', '', '1');
insert into [tblCustomerDesc] values(823, 2, null, null, null, '', '1385/09/00', '          ', '          ', null, null, '', null, null, 'http://www.mt-co.net', 'info@mt-co.com', 'شرکت متخصصین تجارت ', 1, ' سنگ های ساختمانی
 نمای ساختمان
مصالح ساختمانی
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'شرکت متخصصین تجارت
تولید انواع سنگ ساختمانی و اجر   /  واردات و صادرات انواع متریال ساختمانی 
', '', '8 الی 18', '', '1');
insert into [tblCustomerDesc] values(824, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://masalehmajd.blogfa.com/', 'masalehmajd_teh@yahoo.com', 'گروه تامین مصالح مجد', 1, ' مصالح ساختمانی
 مصالح ساختمانی (متفرقه)
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'فروش سنگ تراورتن گرانیت مرمریت مرمر سفال بلوک clc گچ سیمان موزاییک فوم دیوار3دی گچ خاک درب پنجره شیرآلات', '', '9 الی 18', '', '2');
insert into [tblCustomerDesc] values(825, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'sasan_porplex@yahoo.com', 'شرکت آتین بلوک', 1, ' مصالح ساختمانی
 تیرچه و بلوک
 بتن و فرآورده های بتنی
 قطعات بتنی
 بلوک بتنی
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'ایده ای نو در صنعت ساختمان
 
تولید بلوک لیکا - بلوک سبک - بلوک سبک سیمانی- سبک سازی - بلوک پوکه ای - بلوک سبک پوکه ای
', '', '24', '', '1');
insert into [tblCustomerDesc] values(826, 2, null, null, null, '', '1383/01/00', '          ', '          ', null, null, '', null, null, 'http://www.farashian.ir', 'info@farashian.ir', 'شرکت فر آشیان میهن', 3, ' بتن و فرآورده های بتنی
 جدول بتنی
باکس بتنی
 سنگدال بتنی
 کفپوش ها
 آجر
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'شرکت فرآشیان میهن در سال 1383 با بهرگیری از کادری مجرب و متخصص تاسیس گردید. هیات موسس این شرکت همگی از فارغ التحصیلان دانشگاه صنعتی شریف بوده و در زمینه تکنولوژی بتن تحصیلات آکادمیک و تجربیات اجرای مفیدی داشتند.
شرکت فر آشیان میهن به منظور تولید تخصصی انواع قطعات پیش ساخته بتنی با مقاومت بالا ااقدام به راه اندازی کارخانه تمام اتوماتیک با استفاده از تجهیزات روز دنیا و با بهره گیری از مهندسین . تکنسین های ماهر و همچنین پیشرفته ترین تجهیزات، برای تولید فراورده های بتنی با هدف رعایت استاندارد ها و ارتقاء دائمی کیفیت به فعالیت های خود ادامه می دهدو تبدیل شدن به کامل ترین مجموعه تولید قطعات پیش ساخته بتنی در ایران را به عنوان چشم انداز خود تعیین نموده است.
درباره ما
موضوع فعالیت شرکت طبق مفاد اساسنامه در زمینه ارائه خدمات مهندسی عمران ، شهر سازی و معماری، کارخانجات صنعتی مصالح ساختمانی، خدمات مدیریت طرح وروش های نوین ساخت ، صادرات و واردات کلیه کالاهای ساختمانی ، شرکت در مناقصات و مزایدات و سایر فعالیت های مجاز مرتبط با موضوع شرکت میباشد. کارخانه تمام اتوماتیک تولید قطعات پیش ساخته بتنی فر آشیان، در شهرک شمس آباد ، بزرگترین شهرک صنعتی کشور به مساحت 4020 متر مربع در بهترین نقطه شهرک واقع شده است. فاصله کارخانه تا شهر تهران تنها 35 کیلومتر می باشد. 
فرآشیان، تولید کننده قطعات تمام اتوماتیک بتنی
شرکت /فرآشیان/ تولید کننده بلوک خاک مسلح (دیوار حائل برای شیب های 85 تا 90 درجه)، فلاورباکس  بتنی ، پیور  چمنی، کفپوش بتنی، جداول بتنی ویبره پرسی ، سنگدال  به روش پرسی  (no slamp )، آجر سبک   بتنی  می باشد.  کارخانه  شرکت دارای 2 خط  تولید  تمام اتوماتیک با  تکنولوژی روز اروپا و یک خط  تولید ساخت داخل می باشد.(جمعا 3 خط تولید)
ویژگی های بارز فرآشیان:
اخذ نتایج مثبت آزمایشگاهی از آزمایشگاه های معتبر ملی (آزمایشگاه وزارت راه و شهرداری های شهر تهران)
دارای آزمایشگاه های مجهز کنترل کیفی بتن مطابق با استاندارد های ASTM و اداره استاندارد ایران
برگزیده در مسابقات ملی بتن ایران (1383) و انجمن بتن آمریکا (2003 ونکور)
مجهز به سالن عمل آوری بخار گرم به صورت کاملا مکانیزه
امکان تولید بیش از 1000 متر مربع محصولات بتنی دو لایه در روز
امکان تولید هر نوع محصول از ارتفاع 5 تا 30 سانتی متر (دارای بزرگترین سایز پالت =120*120 سانتی متر )
تولید انواع جداول و کفپوش های بتنی با رویه سیلیس ضد سایش
استفاده از مرغوبترین نوع مصالح سنگی رودخانه ای و تاکید به استفاده از سیمان تیپ 2 تهران
تولید بتن با اسلمپ صفر توسط بچینگ پلانت با دقت 100 گرم
محصولات و قطعات بتنی را با بالاترین سطح کیفی و تنوع در ابعاد از ما بخواهید.
', '', ' 9 الی 17', '', '1');
insert into [tblCustomerDesc] values(827, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'khmbn@yahoo.com', 'شرکت ایساتیس', 1, 'بلوک سبک ساختمان سبک سازی', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, '', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(828, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'الکترود آما', null, '•	1 . مصالح ساختمانی
•	2 . مصالح ساختمانی (متفرقه)
', null, 1, -1, '1392/03/18', 0, null, null, null, null, null, null, null, 'فهرست اقلام قابل ارائه به شرح زیر می باشد:
•	الکترودهای معمولی و تخصصی
•	فیلروایرهای آرگون - Co2 و انواع تنگستن
•	سیم جوش زیر پودری و پودر های جوشکاری
•	دستگاههای جوش زیر پودری - میگ - تیگ - رکتیفایر و اینورتر 
•	سنگ های فیبری (برش ، ساب و سنگبری )
•	ابراز آلات صنعتی
', null, null, null, null);
insert into [tblCustomerDesc] values(829, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'reza.ghanbaari@gmail.com', 'شرکت پترو سیویل کاسپین', 1, '', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'شرکت پترو سیویل کاسپین
تهیه ، تولید و مجری متریال ساختمانی



زمینه های فعالیت شرکت
محصولات دکوراسیون داخلی
 محصولات دکوراتیو
 کفپوش ها
کفپوش اپوکسی
کفپوش پلی اورتان
مصالح ساختمانی جدید
 رنگ
رنگ صنعتی
رنگ ترافیکی
رنگ بتن
نمای ساختمان
عایق ها
عایق رطوبتی
عایق حرارتی
مصالح ساختمانی
مصالح ساختمانی (متفرقه)
 شرکت های طرح و اجرای دکوراسیون داخلی
شرکت های اجرای دیوارپوش و کفپوش
 شرکت های ساخت و ساز
 شرکت های اجرای اسکلت بتنی
شرکت های اجرا نمای ساختمان
 شرکت های عایق کاری و ایزولاسیون
شرکت های نصب ایزوگام و عایق
 شرکت های طراحی داخلی
شرکت های معماری
', '', ' 8 الی 17', '', '9,1');
insert into [tblCustomerDesc] values(830, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'p_forozesh@yahoo.com', 'شرکت هوم بلاک', 1, ' مصالح ساختمانی
تیرچه و بلوک
', '                    ', 1, -1, '1392/03/18', 0, null, 1, '', null, null, null, null, 'بلوک سبک، بلوک،بلوک اتوکلاو شده، بلوک گازی،بلوک AAC، بلوک مناسب،مبحث 18و 19،هوم بلوک،بلوک سیلیسی، هبلکس،سیلیس آرا
هوم بلوک  HOME BLOCK
  ( سبک – مقاوم - باصرفه )
بزرگترین مرکز پخش بلوک بتن سبک اتوکلاو شده ( AAC  Block )
تشکیل شده  از سیلیس ، آهک ، آلومینیوم ، سیمان  و . . .
 بلوک سبک AAC
     بهینه کردن مصرف مصالح
    بالا بردن بازده کار
    جلوگیری از اضافه وزن در ساختمان
    جلوگیری از اتلاف بسیار زیاد انرژی در ساختمان
    و در نهایت مقرون به صرفه بودن هر چه بیشتر صنعت ساخت
    سیلکس
    عایق  حرارتی ، عایق  رطوبتی ، عایق  صوتی
    مقاومت  فشاری  بالا
    قابلیت برش ، میخ کوبی ، سوراخ کاری و شیارکاری با مته گرد بر
    ( بدون تخریب )
    استفاده  از  چسب مخصوص جهت چیدمان
    استفاده از چسب مخصوص
    استفاده از ملات سیمانی
    بدون نیاز به کچ و خاک
    میزان  اجرا  35 متر مربع  در روز توسط  یک  کارگر
    رعایت الزامات مبحث  18 و 19 مقررات  ملی  ساختمان و مسکن
', '', '16 الی 20', '', '2');
insert into [tblCustomerDesc] values(832, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1392/03/19', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(833, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.bpmgroup.ir', 'PIRANAGHL@GMAIL.COM', 'شرکت بهرام پایا مبتکر', 1, 'بلوک ؛ سبک ؛ گازی ؛ بتن ؛ سیمانی ؛ غیراتوکلاو ؛ استاندارد ؛ دارای گواهینامه فنی ؛ عایق حرارت ؛ عایق صوت ؛ عایق صدا ؛ عایق رطوبت ؛ جذب آب کم ؛ مقاومت ', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'شرکت بهرام پایا مبتکر
بلوک ؛ سبک ؛ گازی ؛ بتن ؛ سیمانی ؛ غیراتوکلاو ؛ استاندارد ؛ دارای گواهینامه فنی ؛ عایق حرارت ؛ عایق صوت ؛ عایق صدا ؛ عایق رطوبت ؛ جذب آب کم ؛ مقاومت 
روه صنعتی BPM (شرکت بهرام پایا مبتکر) با بهره گیری از توان مهندسی مواد و متالوژی و نیز مهندسی عمران و با استفاده از همکاری های بین المللی خود توان احداث خطوط تولید بتن سبک را بدون اشکال در خط تولید و وجود ضایعات در زمان تولید و نیز حمل و نقل را دارا می باشد .
این گروه با اطلاع دقیق از وضعیت بتن های سبک تولیدی داخل و خارج از کشور درصدد راه اندازی خطوط تولید با کیفیت قابل قبول و مطابق با استانداردهای ملی در کشور نموده است.
مطالعه دقیق بر روی کیفیت آب ، ماسه و سیمان ، شرایط محیطی از قبیل دما و رطوبت نسبی هوا و ... از مواردی است که قبل از راه اندازی خط تولید به آنها پرداخته می شود.
نتیجه این دقت نظر تاکنون منجر به تولید بتن های سبک بی رقیب در چند نقطه از کشور شده و آینده بسیار روشنی را برای این صنعت بوجود آورده است.
', '', ' 8 الی 16', '', '1');
insert into [tblCustomerDesc] values(834, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', '', 'زرین فوم نصر', 1, 'ساندویچ پانل,فوم,سوله,ورق گالوانیزه,سقف,دیواری,پلی استایرن,پلی اورتان', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'زمینه های فعالیت شرکت
1 . مصالح ساختمانی (متفرقه)

', '', ' 8 الی 16', '', '1');
insert into [tblCustomerDesc] values(835, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', '', 'شرکت گیلاس بتون', 1, 'مصالح ساختمانی
 بلوک بتنی
', '', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'بلوک ساختمان،گیلاس بتون، بلوک سبک گازی،clc، بتون سبک گازی، بلوک سبک بتنی،صنعتی سازی ساختمان', '', '', '', '1');
insert into [tblCustomerDesc] values(837, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شرکت پاترا بلوک', null, ' بتن و فرآورده های بتنی
مصالح ساختمانی
 بلوک بتنی
', null, 1, -1, '1392/03/19', 0, null, null, null, null, null, null, null, 'تولید بلوک سبک دیواری 50 *20*10و50*20*15و40*20*20مطابق با الزامات مبحث 18و19 مقررات ملی ساختمان
تولید بلوکهای سبک تیغه ای با پوکه سفیدتبریز و قروه والیافدار
', null, null, null, null);
insert into [tblCustomerDesc] values(838, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'ahmad_br44@yahoo.com :', 'شرکت صدرا افق بلوک', 1, ' مصالح ساختمانی
 بلوک بتنی
 مصالح ساختمانی
 آجر
تیرچه و بلوک
', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'سبک وتوپر سیمانیC L Cدرتهران تولید کننده بلوک سبک در ایران 
بهینه سازی ساخت و ساز با تکنولوژی روز دنیا ضرورت امروز کشور 
بلوک های سبک سیمانی و توپر شرکت صدرا بلوک افق با مقاومت های مختلف جهت تیغه بندی دیوارهای جدا کننده ودیوارهای غیر باربر قابل استفاده بوده و دارای مزایایی چون: 
وزن سبک : 
کاهش بار مرده ساختمان جهت سبک سازی در اسکلت فلزی 
عایق حرارتی: 
چهار ساعت مقاومت در برابر آتش با بلوک 10سانتیمتر ضخامت 
رعایت مبحث19 مقررات ملی ساختمان و بهینه سازی مصرف سوخت 
عایق صوت: 
افت صدا تا 39 دسی بل با ضخامت 10سانتیمتر 
عایق رطوبت: 
مقاوم در برابر نفوذ باران و رطوبت 
سبکی و ابعاد بزرگ: 
پیشرفت سریع بنا و هزینه کارگر
بلوک لیکا با پوکه تبریز موجود میباشدبا ابعاد 40*20*10 40*20*15
', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(839, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'گروه ساختمانی شیمیایی کیمیا', null, ' افزودنی های بتن
 پانل سه بعدی
 رنگ
 سازه های پیش ساخته
مصالح ساختمانی
', null, 1, -1, '1392/03/19', 0, null, null, null, null, null, null, null, 'شیمیایی ساختمان چسب بتون شاتکریت دیوار پیش ساخته 3dwall سندبلاست و رنگ آمیزی صنعتی چسب کاشت میلگرد افزودنی بتون رنگ کفپوش
 احتراماً بدینوسیله به عرض میرساند گروه ساختمانی کیمیا  با توجه به نیاز روز افزون صنایع ساختمانی و عمرانی کشور به منابع معتبر تولیدی و اجرایی دارای توجیه فنی - اقتصادی ، شرح فعالیتهای مرتبط با ساخت و ساز خود را در سراسر کشور اعلام می نماید .
   اجرا و تامین متریال پروژه های مقاوم سازی، سوراخ کاری بتن و کاشت آرماتور و انکربولت شیمیایی و انواع مش توری فایبرگلاس . 
   اجرای پروژه های کف سازی ، کفپوش اپوکسی و پلی اورتان سالن ها و کارخانجات
 
   اجرای عملیات شاتکریت دیواره ، پلها ، سد ها
 
 تولید  نصب و اجرای پلاستوفوم های سقفی و دیوار های پیش ساخته 3D WALL
 
 
 اجرا و تولید محصولات آببندی و عایق کاری تونل ها  ، استخرها ، مخازن و  لوله های انتقال آب و فاضلاب
 

  اجرا و تامین مواد پروژه های سندبلاست و رنگ آمیزی انواع سازه های سنگین فلزی

لازم به ذکر است که رکن اساسی و بسیار مهم در تمامی موارد فوق الذکر اهمیت دادن به موضوع کیفیت  از بعد فنی و مهندسی منطبق با استانداردهای هر رشته بوده و همچنین توجه به توجیه هزینه اقتصادی هر کدام از فعالیتهای مورد نظر جزء اصول اولیه این گروه می باشد .
  
                       
مقاوم سازی و کاشت میلگرد                          
 
این گروه ساختمانی با سالها تجربه در زمینه انجام پروژه های مقاوم سازی سازه های بتنی و کاشت میلگرد و انکربولت در سراسر کشور مشغول به فعالیت بوده و آمادگی خود را جهت انجام امور مربوطه اعلام  می دارد .
 
 برخی موارد کاربرد محصولات شرکت کالم آلمان به شرح ذیل می باشند :

نصب تیرهای برق یا گاردریل کنار اتوبانها در پلهای بتنی - نصب بولت روی فونداسیون جهت نصب سوله -   دیوار حائل  -     کاشت و اضافه کردن بولت های پلیت  -   نصب پلیت روی پیشانی تیر یا ستون   -   اضافه کردن تعداد طبقات ایجاد دستک و کنسول    -   افزایش ابعاد فونداسیون  - کاشت بولت به صورت زیر سقفی  -  اتصال قطعات پیش ساخته  -   کاشت آرماتور انتظار برای دیوار برشی  -  نصب تیر فلزی روی سازه های بتنی - نصب ماشین آلات سنگین صنعتی روی کف بتنی  -  نصب سازه های دریایی  -  تثبیت تاسیسات مکانیکی به بتن -   نبشی کشی داخل چاله آسانسور -  نصب فندر و تاسیسات پهلوگیری کشتی  -  تثبیت و تحکیم سنگ نمای ساختمان  -   تبدیل پی منفرد به پی نواری   -  تقویت ستون واتصالات
 
تولید و اجرای کفپوش اپوکسی
 
 
این گروه صنعتی با دارا بودن کلینیک تخصصی و نیروی متخصص مبادرت  به تولید رنگها و پوششهای تخصصی  و اجرای انواع کفپوش ها ی ذیل می نماید.
 
*   روکش (کفپوش )آنتی استاتیک (رسانا) جهت بیمارستانها، صنایع الکترونیک و نظامی بر پایه رزین اپوکسی و پلی یورتان
 
*   روکش های بدون حلال اپوکسی و پلی یورتان جهت پوشش کف بتونی و سطوح فلزی
 
*   پوشش های درونی و بیرونی لوله های نفت، گاز و آب شامل پلی یوریا، اپوکسی و پلی یورتان به صورت لاینینگ
 
*   رنگهای اپوکسی و پلی یورتان ضد خوردگی جهت سازه های فلزی و بتونی
 
*  روکش پلی یورتان ورزشی  (full flexible)، کفپوش تارتان، روکش پلی یورتان semi flexible (ورزشی – صنعتی)
 

*  فوم پلی یورتان پاششی(عایق حرارتی – عایق صوتی) با دانسیته  3 kg/m 65-25
*  رنگهای ترافیکی سرد یک جزئی و دو جزئی
 
*  لاک های محافظ سطوح سنگ، آجر، سیمان و فلز مقاوم به اشعه UV، ضد خش و واتر پروف بر پایه رزین های پایه حلالی و پایه آبی

*   رنگهای اکریلیک پایه آب قابل شستشو (رنگ نمای ساختمان) – رنگ اکریلیک سیلیکونایز با قابلیت تنفس

*   پوشش عایق رطوبتی و حرارتی مخصوص پشت بام ، استخر ،سرویس های بهداشتی ودیواره ها  با رنگهای متنوع

*   رنگهای مقاوم در برابر حریق (متورم شونده) .


کلمات کلیدی : مش فایبرگلاس ، توری فایبرگلاس ، چسب کاشت ، چسب میلگرد ، کالم ، مقاوم سازی ، بتون ، بتن ، افزودنی بتن ، گروت اپوکسی ، کفپوش اپوکسی ، کفسازی ، کفپوش ورزشی ، سوراخ کاری بتون ، انکربولت شیمیایی ، شاتکریت ، دیوار پیش ساخته ، دیوار سه بعدی ، آببندی ، عایق کاری ، تونل ، استخر ، مخازن ، لوله ، آب و فاضلاب ، سندبلاست ، رنگ آمیزی ، رنگ صنعتی ، رنگ اپوکسی ، رنگ پلی اورتان ، رنگ اکریلیک ، رنگ نمای ساختمان ، چسب ، فوم پلی اورتان .
  
', null, null, null, null);
insert into [tblCustomerDesc] values(840, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ceilingknauf.com', 'mohamad_oops@yahoo.com', 'سیلینگ کناف ', 1, 'فروش اجناس کناف ایران و اجناس تولیدی شرکت سیلینگ کناف ', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'فروش اجناس کناف ایران و اجناس تولیدی شرکت سیلینگ کناف (اجناس متفرقه ، غیر کناف ) جهت استفاده در زیرسازی سقف کاذب کناف و دیوار پارتیشن ، لانینگ و درایوال ( drywall )
به همراه لیست قیمت روزانه و تا چهل درصد زیر قیمت کارخانه کناف ایران
به همراه آنالیز و محاسبه مصالح مورد نیاز به صورت آنلاین
محصولات اعم از :
رانر 36 ، پروفیل اف 47 ، نبشی گالوانیزه ، پانل فایبر سمنت ، پیچ فایبر سمنت ، تایل آلمیننیومی تمام پانچ و وسط پانچ ، میخ بتن و چاشنی ردهیت ، تایل مینرال آکوستیک ، سپری 3600 ، سپری 1200 ، سپری 600 ، نبشی ال 24 ، سیم آویز 20 و 30 سانتی تا 100 سانتی ، تایل روکش پی وی سی و پشت آلومینیومی ، پیچ پانل ، پیچ سازه به سازه ، کلیپس ، فنر دوبل و غیره
UH36 (U36) , F47 , L25 , L24 , T3600 , T1200 , T600
تایل روکش PVC
زمینه های فعالیت شرکت
1 . محصولات دکوراسیون داخلی
2 . مصالح ساختمانی
3 . آهن آلات ساختمانی
4 . مصالح ساختمانی (متفرقه)
5 . مصالح ساختمانی جدید
6 . شرکت های طرح و اجرای دکوراسیون داخلی
7 . شرکت های اجرای سقف و دیوار کاذب
', '', '8 الی 18', '', '2');
insert into [tblCustomerDesc] values(841, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://unolit.com', 'info@unolit.com', 'شرکت یونولیت', 1, ' مصالح ساختمانی
 عایق ها
عایق حرارتی
عایق صوتی
', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'یونولیت نام شرکتی ست که با بیش از نیم قرن سابقه و تجربه در خدمت جامعه تولیدکنندگان ایران می باشد . تولید شرکت یونولیت پلاستوفوم است که از ترکیب شدن پلی استایلن با گاز پنتان در مقابل یک مونومر به دست می آید . بنابراین یونولیت نام یک محصول نمی باشد .
اولین تولید کننده پلاستوفوم در جهان شرکت B.A.S.F آلمان بوده که در پنجاه و سه سال پیش شروع به تولید پلاستوفوم با نام استایروپور نمود و شرکت یونولیت مفتخر است که سه سال بعد از اختراع پلاستوفون در دنیا یعنی پنجاه سال پیش برای اولین بار در ایران و خاورمیانه شروع بع تولید پلاستوفوم نمود و امروزه پلاستوفوم یکی از بهترین گزینه ها برای عایق نمودن ساختمانها در مقابل گرما , سرما و صدا بوده و صرفه جویی در مصرف انرژی یکی از اهداف مصرف پلاستوفوم در ساختمان می باشد .
همچنین پلاستوفوم بعلت سبکی و خاصیت ضربه پذیری و زیبایی و شکل پذیری بالاترین مصرف را در صنعت بسته بندی دارد.
متاسفانه بعضی از تولید کنندگان پلاستوفوم از نام شرکت یونولیت برای تولیدات خود استفاده نموده و علاوه بر آن بر پایین آوردن قیمت تمام شده و ارزان فروشی اقدام به مخلوط کردن مواد آسیابی با مواد اولیه اصلی می نمایند که این عمل خاصیت عایق بودن پلاستوفوم را به طور کامل از بین برده در نتیجه مصرف کننگان علاوه بر هزینه نمودن مبالغی جهت خرید پلاستوفوم ارزان قیمت عملا نمی توانند عایقی مناسب داشته و هیچگونه صرفه جویی در مصرف انرژی بنمایند .
', '', '', '', '1');
insert into [tblCustomerDesc] values(842, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.esfahan-foam.com', 'esfahanfoam@hotmail.com', 'شرکت اصفهان فوم', 1, ' مصالح ساختمانی', '                    ', 1, -1, '1392/03/19', 0, null, 1, '', null, null, null, null, 'شرکت اصفهان فوم
اصفهان فوم مجهز به مدرنترین تجهیزات ساخت فوم پلی استایرن و فوم پلی اتیلن با کادر فنی و متخصص می باشد و دارای کارخانه ای متشکل از بخشهای زیر است :
§         تولید بلوکهای پلاستوفومٍ EPS: کارخانه اصفهان فوم تولید کننده  بلوکهائی به ابعاد مختلف تا طول 4 متر
§        تولید انواع ورقهای پلاستوفوم EPS & EPE در ابعاد متنوع : این کارخانه با استفاده از دستگاههای پیشرفته قادر است انواع ورقهای پلاستوفوم را از 1 سانت تا 50 سانت با اشکال هندسی مختلف تولید نماید.
§         تولید بلوکهای پلاستوفوم سقفی : کارخانه اصفهان فوم تولید کننده انواع بلوکهای سقفی در ابعاد مختلف و با بهترین کیفیت و کادر فنی متخصص و متمایز از محصولات مشابه می باشد و نیز تولید کننده بلوکهای سقفی در سایز مختلف و در کیفیتهای مختلف می باشد .
§         تولید قطعات بسته بندی فومی : با استفاده از پرسهای اتوماتیک و پرسنل با تجربه و کنترل کیفی مجرب بی نقص ترین و بهترین قطعات بسته بندی فومی در این کارخانه تولیید میگردد .
§         تولید رول  فوم پلی اتیلن
§         تولید ورق ضخیم فوم پلی اتیلن
§         تولید ورق دو لایه (پلی اتیلنی وآلمینیوم)
', '', '', '', '1');
insert into [tblCustomerDesc] values(843, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://sadeghsteel.com', 'info@sadeghsteel.com', 'شرکت فولاد گستر صادق', 1, 'آهن آلات ساختمانی', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'آهن آلات ساختمانی ,تیر آهن , میلگرد
    فروش کلیه محصولات کارخانجات نورد پروفیل ساوه و نورد و لوله صفا در زمینه تولیدانواع قوطی و پروفیل و انواع لوله از سایز 1/2 الی 24 اینچ به صورت درز جوش مستقیم و از 20 الی 120 اینچ به صورت اسپیرال مطابق با آخرین استانداردهای جهانی جهت مصارف ساختمانی، صنعتی، آبرسانی، نفت، گاز، پتروشیمی و... و اولین و تنها کارخانه مجهز به سیستم تست گاز ترش در کشور.
    فروش کلیه محصولات کارخانجات فولادالیگودرز در زمینه تولید انواع میلگرد کلاف و شاخه آجدار و ساده و انواع توریهای مش .
    ارتباط مستقیم با نمایندگان معتبر برخی از کارخانجات فولاد سراسر کشور اعم از فولاد مبارکه اصفهان، ذوب آهن، نورد اهواز، فولاد کویر کاشان، فولاد نیشابور، فولاد میانه، فولاد یزد، فولاد کاویان اهواز، نورد و لوله سمنان و...
    ارتباط مستقیم با وارد کنندگان فولاد در تمامی زمینه ها اعم از تیرآهن - نبشی و ناودانی - میلگرد - لوله و ورق و...
', '', '', '', '2');
insert into [tblCustomerDesc] values(844, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://zeynizadeh.ir', ' info@zeynizadeh.ir', 'فروشگاه زینی زاده', 1, ' آهن آلات ساختمانی', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'فروشگاه زینی زاده پخش کننده آهن آلات ساختمانی
   با عنایت به پیشرفت و توسعه تجارت فلزات و استفاده روز افزون آن در تمامی پروژه های عمرانی و ساختمانی, اشیاء فلزی و.....  و  با توجه به نیاز مبرم شرکت های مجری پروژه های ملی در زمینه ساخت و ساز  , فروشگاه زینی زاده واقع در تهران-شاد آباد بازار بزگ آهن-بهاران یک بلوک 31 پ 6- مفتخر است  آمادگی خود را جهت فروش کالاهای آهن خود با نازلترین قیمت به صورت کلی وجزئی اعلام میدارد,لذا جهت سهولت در   خرید آهن آلات مشتریان میتوانند از قیمت آهن آلات روزانه اعم از قیمت تیرآهن-قیمت میلگرد-قیمت ورق-قیمت ورق گالوانیزه-قیمت نبشی-قیمت ناودونی-قیمت لوله واتصالات-قیمت پروفیل وقوطی-قیمت صفحه ستون(پلیت)-قیمت بولت-قیمت تسمه-قیمت فولاد وقیمت سایر فلزات در سایت جامع اطلاع رسانی زینی زاده بهره مند شوند .
', '', '', '', '2');
insert into [tblCustomerDesc] values(845, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ironabdolahi.com', 'info@ironabdolahi.com', 'گروه بازرگانی عبدالهی', 1, ' آهن آلات ساختمانی', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت بازرگانی عبدالهی پخش کننده آهن آلات ساختمانی
    گروه بازرگانی  عبدالهی   مفتخر است که با  نازلترین قیمت آهن الات ساختمانی و صنعتی  موجود را در اختیار مصرف کنندگان عزیز قرار دهد البته لازم بذکر است این گروه با نیم قرن سابقه در این حرفه خرید آهن ضایعاتی (قراضه ) را نیز بصورت نقدی  انجام میدهد .
', '', '', '', '2');
insert into [tblCustomerDesc] values(846, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'info@betonbesat.com', 'فرآورده های بتونی بعثت', 1, ' تیرچه و بلوک
 شرکت های اجرای سقف
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'فرآورده های بتونی بعثت
فرآورده های بتونی
شرکت فرآورده های بتونی بعثت با بکار گیری از بروزترین ماشین آلات تولیدات خود راشامل بتن آماده تیرچه و بلوک در محدوده کار این شرکت درشهرستان مشهد و حومه و بر حسب مورد پروزه های عمرانی استانی را نیز شامل می شود ارایه می دهد.
', '', '', '', '1');
insert into [tblCustomerDesc] values(847, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'asc@steelstore.ir', 'آهن فروش امین صنعت', 1, ' آهن آلات ساختمانی', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'مشاور و تامین کننده آهن آلات ساختمانی مانند میلگرد, تیر آهن , نبشی , پروفیل , ورق , صفحه ستون , سیم آرماتور و رابیتس', '', 'شنبه - چهارشنبه 9 الی 17 - پنج شنبه 9 الی 13', '', '2');
insert into [tblCustomerDesc] values(848, 2, null, null, null, '', '1387/02/00', '          ', '          ', null, null, '', null, null, 'www.', 'davam_betun@yahoo.com', 'دوام بتن اسپادانا', 1, ' آب بند بتن
 افزودنی های بتن
 روان کننده بتن
   چسب بتن
  بتن و فرآورده های بتنی


', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'دوام بتن اسپادانا
افزودنی بتن,روان کننده,ابر روان کننده,چسب بتن,چسب کاشی,ماستیک,امولوسیون,واتراستاب آب بند
فروش انواع محصولات افزودنی و دوام دهنده بتن(روان کننده.چسب بتن ) و...




زمینه های فعالیت شرکت
 آب بند بتن
 افزودنی های بتن
 روان کننده بتن
   چسب بتن
  بتن و فرآورده های بتنی
 سرویس های بهداشتی
 گچ، سیمان و آهک
 مصالح ساختمانی
 کاشی و سرامیک
شرکت های اجرای اسکلت بتنی
شرکت های اجرای سونا و جکوزی و استخر
', '9', ' 8 الي 17', '', '2');
insert into [tblCustomerDesc] values(849, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://manaco.smesfair.com', 'mana-co@yahoo.com', 'تولید مواد ساختمانی مانا', 1, 'مصالح ساختمانی
 بلوک بتنی
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت تولید مواد ساختمانی مانا (سهامی خاص) در سال 1352 تأسیس گردید و فعالیت و تولید خود را از همان زمان آغاز نمود.
این شرکت با توجه به فرآیند خصوصی سازی در کشور، در سال 1381 به طور کامل به بخش خصوصی واگذار گردید.

کارخانه شرکت تولید مواد ساختمانی ماناکارخانه شرکت در فضایی به وسعت 17 هکتار در کیلومتر 20 جاده ورامین واقع است. حدود 4 هکتار از این فضا، محوطه اصلی کارخانه می باشد که محل استقرار سالن تولید و خشک کن ها، کوره ها، واحدهای تأسیساتی، انبار، ساختمان های اداری و خدماتی و ... است و مابقی این فضا متعلق به معدن کارخانه می باشد.
ماشین آلات خط تولید کارخانه عبارت است از سیلوی خاک، کولرگانت، والس، میکسر، اکسترودر، دستگاه برش، آسانسور های پر و تخلیه کن و تراموا های برقی که همگی ساخت شرکت های آلمانی و ایتالیایی می باشد.
تأسیسات خط تولید نیز عبارت است از خشک کن ها، مشعل ها و سوخت پاش های گاز سوز و گازوئیل سوز و کوره های پخت سفال از نوع هوفمن.

دفتر شرکت تولید مواد ساختمانی مانادفتر شرکت تولید مواد ساختمانی مانا در تهران واقع شده است که در این دفتر به مسائل مدیریت، فروش و امور مالی پرداخته می شود.
در بخش فروش عملیاتی نظیر دریافت سفارشات، پیگیری ارسال آن ها و تدوین برنامه تولید بر اساس سفارشات صورت می گیرد
', '', '', '', '1');
insert into [tblCustomerDesc] values(850, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.almasgatch.com', 'info@almasgatch.com', 'شرکت الماس گچ', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت الماس گچ
تولید کننده گچ آلفا و بتا
', '', '', '', '1');
insert into [tblCustomerDesc] values(851, 1, 'علی', 'کمالی', 'مرتضی', 'sdfsdf', '1389/02/20', '345435    ', '2342342332', null, null, 'توضیحات ماa', null, '09128177745         ', 'ariandev.com', 'ronald_mdj@yahoo.com', 'sample co', 1, 'نوع فعالیت ماa', '                    ', 1, -1, null, 0, null, 2, '54423', 1, 3, 'نرم افزار', 2, '&times;&nbsp;11:50:04<br />
<br />
&trade;TSH<br />
<br />
<br />
&nbsp;Tuesday, June 11, 2013<br />
<span style="color: #ff0000;"><br />
aaa<br />
</span>
<br />
<hr />
<br />
<br />
<fieldset style="width: 200px; height: 76px;"> <legend>Title</legend>Content... </fieldset>
<span style="font-size: 11px;">
<div style="text-align: center;">&trade;TSH</div>
</span>', null, null, '', '1,3');
insert into [tblCustomerDesc] values(852, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'amir_tavanarad@yahoo.com', 'سیمان گستر امیران', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, null, '', ' 8الی16', '', '1');
insert into [tblCustomerDesc] values(853, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.alvandsazeh.com ', 'Info@ALVANDSAZEH.COM', 'شرکت الوند سازه', 1, 'بلوک بتنی
 تیرچه و بلوک
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت الوند سازه
تولید تیرچه فلزی و بتنی و یونولیت , اجرای سقف های تیرچه فلزی(کرومیت) و تیرچه بتنی , فروش تیرچه و یونولیت
', '', '', '', '1');
insert into [tblCustomerDesc] values(854, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.parsgips.com', 'yusuf-prsgps@hotmail.com', 'پارس گیپس', 1, 'تولید کننده گچ پرلیتی - گچ پاششی - ملات پاششی - چسب کاشی و چسب سرامیک - درزگیر کاشی و سرامیک - پوشش سیمانی نمای داخلی و خارجی ساختمان', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'زمینه های فعالیت شرکت
1 . بتن و فرآورده های بتنی
2 . دیوار پوش ها
3 . نمای ساختمان
4 . عایق ها
5 . مصالح ساختمانی
6 . چسب بتن
7 . آب بند بتن
8 . ترمیم کننده بتن
9 . نمای خشک
10 . عایق رطوبتی
11 . عایق حرارتی
12 . عایق صوتی
13 . عایق ضدحریق
14 . مصالح ساختمانی (متفرقه)
15 . مصالح ساختمانی جدید
16 . گچ، سیمان و آهک
', '', '', '', '1');
insert into [tblCustomerDesc] values(855, 2, null, null, null, '', '1380/08/01', '          ', '          ', null, null, '', null, null, ' http://takhtejamshidco.sme.ir', ' h.r.dokhanchi@gmail.com', 'شرکت آجر ماشینی تخت جمشید قم', 1, ' مصالح ساختمانی
آجر
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'تولید کننده انواع آجر و سفال ماشینی با نشان استاندارد', '45', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(856, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ajorsa.com/', 'm-tasbihgou@ajorsa.com', 'تولیدی و صنعتی آجر سا', 1, 'مصالح ساختمانی
آجر
تیرچه و بلوک
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'تولیدی و صنعتی آجر سا
شرکت تولیدی و صنعتی آجر سفال تولید کننده سفالهای سقفی - تیغه های دیواری و تیرچه های سفالی و بتنی
تولید کننده سفالهای سقفی - تیغه های دیواری و تیرچه های سفالی و بتنی
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(857, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, '', 'hoomansed@gmail.com', 'نوین سازه', 1, 'زمینه های فعالیت شرکت
1 . بتن و فرآورده های بتنی
2 . کاشی و سرامیک
3 . سنگ های ساختمانی
4 . نمای ساختمان
5 . مصالح ساختمانی
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'تهیه و تامین انواع مصالح ساختمان
عاملیت سیمان سفید و خاکستری
سیمان سفید ساوه
سیمان سفید بنوید 
سیمان سفید دماوند
', '', '', '', '2');
insert into [tblCustomerDesc] values(858, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'فراز بست توس', null, '1 . لوله و اتصالات
2 . نمای ساختمان
3 . مصالح ساختمانی
4 . شرکت های تعمیر و نگهداری ساختمان
', null, 1, -1, '1392/03/20', 0, null, null, null, null, null, null, null, 'تولید کننده انواع بست و اتصالات داربست 
محصولات این شرکت شامل بست چهار پیچ بست گردون پین مغزی کفی و اتصال می باشد
', null, null, null, null);
insert into [tblCustomerDesc] values(859, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.mondcement.com', ' info@mondcement.com', 'شرکت سیمان مند دشتی', 1, 'بتن و فرآورده های بتنی
 پانل بتنی
تجهیزات قالب بندی بتن
گچ، سیمان و آهک
', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت سیمان مند دشتی
تولید و توزیع انواع سیمان و سازه های بتنی و پیش ساخته
', '', '8 الی 17', '', '2,1');
insert into [tblCustomerDesc] values(860, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.khafcement.com', ' info@khafcement.com', 'شرکت سیمان مجد خواف', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت سیمان مجد خواف تولیدکننده سیمان', '', '8الی 17', '', '1');
insert into [tblCustomerDesc] values(861, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.LamerdCement.com', 'Sales@LamerdCement.com', 'شرکت سیمان لامرد ', 1, ' گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/20', 0, null, 1, '', null, null, null, null, 'شرکت سیمان لامرد تولیدکننده سیمان
كارخانه سیمان لامرد بزرگترین تولید كننده سیمان در استان فارس و یكی از بزرگترین واحد های تولیدی سیمان می باشد كه در فاصله 380 كیلو متری مركز استان  ،در شهرستان لامرد واقع شده است. ساخت این پروژه عظیم در منطقه محروم لامرد در سال 1384 با سرمایه گذاری بخش خصوصی و دولت عدالت محور آغاز شد و فاز اول این كارخانه در تیر ماه 1390 با تولید كلینكر و فاز دوم آن در هفدهم بهمن ماه سال 1390 با ظرفیت تولید اسمی 3800 تن كلینكر در روز به بهره برداری رسیده است. این شركت با به كار گیری آخرین تكنولوژی روز جهان ، آخرین استاندارد ها و ایزوهای بین المللی یكی از واحدهای بزرگ صنعتی به شمار می رود كه با برنامه ریزی دقیق و تدابیر مناسب توانسته است علاوه بر تولید بیش از ظرفیت در حدود 1,300,000 تن در سال و حضور فعال در جهت بهبود محصولات خود گام بردارد.
وجود سه معدن غنی ، مرغوب و با كیفیت بالای مارل ، آهك و آلوویوم ، در نزدیكی این كارخانه ، امكان تولید انواع تیپ های مختلف سیمان را برای این كارخانه مهیا كرده است.به منظور تولید محصولاتی مرغوب و یكنواخت ، كارخانه به سیستم های  XRF,Analyser و سیستم كنترل یكپارچه QCX  تولید شركتFLSmidth كه در نوع خود بی نظیر است ، مجهز میباشد.
سرمایه گذاران این مجموعه خصوصی بزرگ  صنعتی كه اكثراَ از ایرانیان مقیم كشورهای حوزه خلیج فارس میباشند با هدف اشتغال زایی و توسعه صنعتی منطقه ، اقدام به سرمایه گذاری در این پروژه عظیم ملی كرده اند.
موقعیت جغرافیایی :
كارخانه سیمان لامرد به دلیل موقعیت قرارگیری خود در جنوب استان فارس و در فاصله زمینی حدوداً 120 كیلومتری تا اولین اسكله بارگیری و دسترسی آسان به آبهای آزاد و همجواری با كشورهای حوزه خلیج فارس و عراق قادر خواهد بود محصولات تولیدی خود را به كشور های همسایه صادر نماید.
محصولات :
شركت سیمان لامرد با هدف تولید محصول مطابق با نیاز مشتری ، سعی داردبا بهره گیری از امكانات و تجهیزات مدرن ، معادن مطلوب و بهره گیری از نیروهای متخصص ، ضمن توسعه سبد محصولات خود ، زمینه مصرف انواع سیمان را با كاربردهای ویژه به طور گسترده فراهم آورد. به همین منظور در گام اول اجرای برنامه ریزی استراتژیك خود ،سیمان تیپ 1، سیمان تیپ 2 ، سیمان تیپ 5 معمولی و SRC صادراتی را به بازار عرضه می نماید.
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(862, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.fikcc.com/', 'info@fikcc.com', 'شرکت سیمان فیروزکوه ', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'شرکت تولیدی سیمان فیروزکوه با سرمایه گذاری شرکت سیمان فارس و خوزستان و شرکت سرمایه گذاری سیمان تأمین بمنظور احداث یک واحد تولید سیمان در منطقه فیروزکوه در شمال شرق استان تهران در اردیبهشت 1381 تأسیس گردید. عملیات اجرایی کارخانه 3300 تنی سیمان فیروزکوه از اول اسفند ماه 1382 آغاز شد و در سال 1385 به بهره برداری رسید سهام شرکت سیمان فارس و خوزستان در سال 1385 توسط شرکت سیمان شمال به نمایندگی از طرف شرکت سیدکو خریداری گردید که در حال حاضر بالای 50% سهام شرکت متعلق به شرکت سیمان شمال می باشد.
ماشین آلات این کارخانه با توجه به آخرین تکنولوژی در صنعت سیمان از کشورهای آلمان، دانمارک و سوئیس انتخاب و خریداری گردید و اجرای این پروژه بصورت TURNKEY (کلید در دست) در شرکت CES انجام شده است بخش ساخت داخل بدست صنعتگران ایرانی براساس استاندارد ملی ساخته شده است این کارخانه در حال حاضر با فراهم آوردن 300 فرصت شغلی مستقیم و صدها نفر به صورت غیر مستقیم و با تولید یک میلیون تن سیمان در سال نقش مهمی در تأمین سیمان استانهای تهران، مازندران، سمنان، گلستان و گیلان دارد.
', '', '8 الی 17 ', '', '1');
insert into [tblCustomerDesc] values(863, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://ilamcementco.com', 'info@ilamcementco.com', 'شرکت سیمان ایلام', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'شرکت سیمان ایلام درتاریخ 18/08/1368 بصورت شرکت سهامی خاص و به شماره 72024 و شناسه ملی 10101169402 در اداره ثبت شرکتها و مالکیت صنعتی به ثبت رسیده است . به موجب مصوبه مجمع عمومی فوق العاده صاحبان سهام مورخ 28/04/1382 ثبت شده درروزنامه رسمی شماره 17057 مورخ 27/06/1382 شخصیت حقوقی شرکت سیمان ایلام از سهامی خاص به سهامی عام تغییر یافته ودر تاریخ 10/08/1382 در سازمان بورس اوراق بهادارتهران پذیرفته شده است. مرکز اصلی شرکت در شهر تهران و کارخانه در استان ایلام واقع می باشد .', '', '', '', '1');
insert into [tblCustomerDesc] values(864, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.isfahancement.com', 'info@isfahancement.com', 'شرکت سیمان اصفهان', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'شرکت سهامی سیمان اصفهان ، از نخستین واحدهای تولید سیمان کشور واقع در جنوب غربی اصفهان ، در سال 1334 تحت شماره ثبت 496 مورخ 16 / 8 / 1334 توسط شادروانان مرحوم علی و حسین همدانیان با هدف ایجاد واحدهای تولید سیمان , مشتقات آن و هر نوع فعالیت بازرگانی مربوطه تاسیس و از سال 1337 با تولید 200 تن کلینکر در روز (20 درصد ظرفیت تولید سیمان کشور در آن زمان) فعالیت خود را آغاز و طی پنج مرحله توسعه هم‌اکنون با ظرفیت 3200 تن در روز به فعالیت ادامه می‌دهد. شرکت سهامی سیمان اصفهان مفتخر است که با تولید انواع سیمان در طول 50 سال فعالیت خود ، سیمان مورد نیاز تعداد زیادی از پروژه‌های مهم و زیربنائی کشور از جمله سد زاینده‌رود را فراهم نموده و همواره کوشیده است با تولید و تحویل محصولی با کیفیت برتر در راستای برنامه‌های اصولی و زیربنائی رشد ، توسعه ، سازندگی و آبادانی کشور حرکت نماید .', '', '', '', '1');
insert into [tblCustomerDesc] values(865, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.sd-gypsum.com', 'info@sd-gypsum.com', 'شرکت گچ صدف دامغان', 1, ' گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'کارخانه در زمینی به وسعت 2600 مترمربع بنا گردیده و قابلیت اضافه نمودن خطوط تولید جدید نیز مهیا می باشد.

سیستم پخت کارخانه مخصوص بوده وبا دیگر کارخانه های گچ متفاوت است.

تولید گچ با کوره ایستاده وحرارت غیر مستقیم انجام می پذیرد وگچ با مش حدود 150 تولید می نماید که جوابگوی ساخت گچهای مخصوص به عنوان نمونه گچ پاششی می باشد.

معدن اختصاصی گچ صدف دامغان در فاصله نزدیک کارخانه واقع وظرفیت حداقل چند میلیون تن سنگ گچ کریستال با خلوص بالای 97% را داراست واز معادن با کیفیت سنگ گچ کشور می باشد. سنگ گچ در معدن انفجار وتوسط کامیون به کارخانه آورده وپس از پخت در کارخانه گچ میکرونیزه به عنوان پایه گچهای تولیدی بدست می آید.
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(866, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://fialbeton.com', ' info@fialbeton.com', 'کارخانه فیال بتون سازه ', 1, ' بتن و فرآورده های بتنی
 پانل بتنی
 مصالح ساختمانی
بلوک بتنی
جدول بتنی
', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'کارخانه فیال بتون سازه 
شرکت فیال بتون سازه به مدیریت احد جباری حق، صمد جباری حق و ستار جباری حق در سال 1352 در تبریز تأسیس و با نصب و راه‌اندازی اولین کارخانه ماسه‌شویی در استان آغاز به فعالیت نمود. در سال 1354 به عنوان اولین وارد کننده‌ی دستگاه‌های تولید قطعات بتنی پرسی از آلمان در زمینه‌ی تولید انواع بلوک و سنگفرش‌های سیمانی توسعه یافت. در سال 1362 مدیریت شرکت اقدام به انتقال کارخانه به استان جنگ‌زده‌ی خوزستان نموده و در خلال جنگ به تولید قطعات بتنی جهت مصرف در مناطق جنگی و پس از اتمام جنگ به تولید قطعات مورد نیاز در بازسازی شهرهای خرمشهر، آبادان، بستان، هویزه و دیگر شهرهای جنگ‌زده مشغول بوده و می‌باشد. در فرودین‌ماه 1372 در پاسخ به تشیوق‌های استاندار وقت آذربایجان شرقی، مدیریت شرکت بر آن شد ماشین‌آلات جدیدی را که از آلمان جهت توسعه کارخانه اهواز تدارک دیده بود به تبریز منتقل کرده و در محل سابق کارخانه نصب و راه‌اندازی نماید. در سال 1382 جهت بالابردن هر چه بیشتر سطح کیفی مصالح مصرفی از نظر منحنی دانه‌بندی و ارزش ماسه‌ای با هدف مطابقت با درخواست‌های متنوع مشتریان، منحصراً جهت مصرف خود، به عنوان اولین طرح توسعه، واحد شن و ماسه در کارخانه نصب و راه‌اندازی شد. واحد بتون‌آماده دومین طرح توسعه شرکت فیال بتون در سال 1382 بوده و سومین طرح توسعه شرکت راه‌اندازی خط جدید تولید سنگفرش‌های پرسی با ماشین‌آلان وارد شده از آلمان می‌باشد تا بتواند پاسخگوی نیاز رو به رشد بازهای داخلی و خارجی بوده و قدمی دیگر برای تسریع ارایه‌ی خدمات به مشتریان باشد. با توجه به بازار رو به گسترش قطعات بتونی در پایتخت، دفتر فروش محصولات شرکت در تهران به مدیریت خانم مریم جباری حق تأسیس گردید.
شرکت فیال بتون به عنوان یکی از تولیدکنندگان انواع جدول و سنگفرش‌های سیمانی به کیفیت بالای خود می‌بالد که حجم صادرات فرآورده‌های این واحد به کشورهای ترکیه و آسیای میانه تأییدی بر این مدعاست.
اکنون این شرکت با تکیه بر 34 سال تجربه همچنان آماده‌ی تولید قطعات مورد نیاز در پروژه‌های کلان محوطه‌سازی و کف‌سازی پارک‌ها و پیاده‌روهای میهن عزیزمان می‌باشد و مدعی است که محصولات مورد نیاز شما را در تمام نقاط کشور در پای پروژه در حداقل زمان و با پایین‌ترین هزیمه ممکن تحویل می‌دهد.
نسخه بزرگتر تقدیر‌نامه‌ها
انجمن‌ها و تقدیرنامه‌ها

   • عضو انجمن بین‌المللی بتن ACI شاخه ایران
   • عضو انجمن مدیران صنایع
   • عضو انجمن بتون ایران
   • عضو انجمن صنفی صدور خدمات فنی مهندسی استان
   • عضو انجمن کانی غیرفلزی استان
   • عضو انجمن خدمات علمی صنعتی آذربایجان شرقی
   • عضو انجمن صنفی کارفرمای تولیدکنندگان بتون آماده
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(867, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.soufiancement.com', ' info@soufiancement.com', 'شرکت سیمان صوفیان ', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'شرکت سیمان صوفیان 
شرکت سهامی عام کارخانجات سیمان صوفیان در سال 1345 شمسی تاسیس و تحت شماره 39 در شهرستان شبستر واقع در استان آذربایجان شرقی به ثبت رسیده است.
اولین خط تولید سیمان شرکت در سال 1349 شمسی با ظرفیت تولید 600 تن کلینکردر روز به بهره برداری رسیده است. توسعه شرکت طی سالهای متعاقب موجب گردید که خط تولیدی دوم با ظرفیت 1000 تن ، سوم با ظرفیت 1000 تن و چهارم با ظرفیت 2000 تن / روز بترتیب در سالهای 1354 ، 1356 و 1363 شمسی به بهره برداری برسند.
شرکت در شمال غرب شهر تبریز و در کیلومتر 33 جاده تبریز ـ مرند در نزدیکی شهر صوفیان قرار گرفته و با مجموع ظرفیت تولید روزانه 4600 تن / روز کلینکر یکی از مهمترین تولیدکنندگان سیمان شمالغرب کشور می باشد. 
با پشت سر گذاشتن بیش از چهار دهه تجربه در صنعت سیمان و تولید انواع سیمان خاکستری و همچنین داشتن نیروی انسانی کارآمد و فرهنگ کاری قوی ، شرکت سیمان صوفیان دورنمای بسیار روشنی را برای رشد و توسعه پایدار در فرا روی خود می بیند.
', '', '', '', '1');
insert into [tblCustomerDesc] values(868, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.tehrancement.com', ' headoffice@tehrancement.com', 'شرکت سیمان تهران', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'شركت سيمان تهران در سال 1333 در تهران تحت شماره 4503 تأسيس شد. اولين واحد توليدي اين شركت با ظرفيت 300 تن در روز در سال 1335 مورد بهره برداري قرار گرفت. طي سالهاي 1335 لغايت 1357 با احداث 4 واحد توليدي ديگر، ظرفيت توليدي شركت به 300ر7 تن در روز رسيد. در سال 1365 با خريد واحد 000ر2 تني سيمان ري و در سال 1373 با خريد واحد 300 تني سيمان شمال كه اولي در فاصله 6 كيلومتري كارخانه و دومي در محوطه كارخانه سيمان تهران قرار دارد، شركت ظرفيت توليدي خود را به 600ر9 تن در روز افزايش داد.
         در مهر ماه سال 1382 عمليات اجراي طرح جايگزيني 400ر3 تني در محوطه كارخانه سيمان تهران آغاز شد و در آذرماه سال 1385 به بهره برداري رسيد. همزمان با آن واحد 300 تني شماره 5 كه از واحدهاي قديمي و فرسوده بوده تعطيل و از چرخه توليد خارج شد. همچنین واحد های شماره 1 و 2 با مجموع ظرفیت تولید 600 تن در روز بدلیل فرسودگی و آلایندگی محیط زیست و بالا بودن مصرف انرژی در اوایل آبان ماه 1388 از مدار تولید خارج گردید. در حال حاضر ظرفيت اسمی توليدي سيمان تهران به 100ر12 تن در روز بالغ مي شود.
', '', '', '', '1');
insert into [tblCustomerDesc] values(869, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://ardestancement.com', 'info@ardestancement.com', 'شرکت سیمان اردستان', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/21', 0, null, 1, '', null, null, null, null, 'تولیدکننده سیمان
      میزان تولید روزانه: 3550 تن   -   تعداد خطوط : 1 عدد   -   نوع سیمان تولیدی: تیپ دو
', '', '', '', '1');
insert into [tblCustomerDesc] values(870, 1, '', '', '1', null, '    /  /  ', '1         ', '1         ', null, null, '', null, '1                   ', null, '', null, null, '', '                    ', 1, -1, '1392/03/21', 0, null, null, null, 1, 2, '', 1, '1111111111111111111111', null, null, null, '');
insert into [tblCustomerDesc] values(871, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.vandchemie.com', 'info@vandchemie.com', 'شرکت وند شیمی ', 1, 'آب بند بتن
 افزودنی های بتن
 دیر گیرکننده بتن
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'شرکت وند شیمی
شرکت وند شیمی ساختمان فعالیت های خود را در زمینه مشاوره، تولید و عرضه افزودنیهای شیمیائی بتن از بدو تأسیس در سال 1369 آغاز نمود و در 7 سال ابتدای فعالیت خود به عنوان نماینده شرکت سیکا سوئیس در بازار حضور داشت. 
این شرکت با اعتقاد بر اهمیت تولید داخلی در سالهای پس از تأسیس به تدریج شروع به ایجاد کارخانه و تولید مواد شیمیائی و افزودنی بتن با آرم وند شیمی نمود.
مدیریت شرکت وند شیمی ساختمان در ابتدای ورود به بازار با واقعیت وجود عدم هماهنگی بین شناخت و دانش مصرف کنندگان و اطلاع رسانی تولید کنندگان روبرو شد. لذا با سرلوحه قرار دادن شعار « آموزش جامعه مهندسی عمران کشور» اقدام به تشکیل کانال ارتباط صنعت (تولید کننده) با دانشگاه (مصرف کنندگان آینده) مرکب از 10 شرکت داخلی و خارجی جهت آموزش رایگان و تخصصی دانشجویان دانشگاهها نمود و از این طریق با ایجاد پل ارتباطی بین هر دو و ارائه برنامه های آموزش علمی و کاربردی ویژه دانشجویان، مهندسین و تکنسین های رشته عمران مبتکر کاربردی ترین اقدام در راستای هدف ایجاد ارتباط بین صنعت و دانشگاه گردید که اکنون پس از برگزاری 8 دوره از این کانال صدها دانشجو از دانشگاههای تهران موفق به دریافت گواهینامه پایان این دوره گشته اند و به اذعان خودشان پس از ورود به بازار کار مطالب فراگرفته در این دوره راهگشای بسیاری از مشکلاتشان بوده است.
در قدم بعدی شرکت وند شیمی ساختمان به عنوان مجری برنامه های آموزشی و بازآموزی تکنولوژی بتن مؤسسه بین المللی بتن آمریکا (ACI) اقدام به برگزاری دوره بین المللی تکنسین پایه I بتن کارگاهی نمود تا با این برنامه قدمی در جهت استاندارد کردن فعالیتهای ساخت و ساز کشور و نزدیکتر کردن آن به استانداردهای بین المللی و معتبر ASTM و ACI داشته باشد. 
در همین راستا دوره های بین المللی سنگدانه و بازرس بتن نیز در حال تدوین و آماده سازی می باشد که بزودی برگزار خواهند شد. 
این فعالیتها به آموزش و بازآموزی مهندسین و تکنسین ها در کارگاهها و پروژه های مختلف عمرانی کشور خلاصه نشده بلکه با اختصاص یک خط مستقیم با نام "صدای مشاور" روزانه حداقل 10 ساعت با همکاری مراکز علمی آمریکا، امکان پاسخگوئی به سؤالات، مشکلات و مشاوره با دست اندرکاران صنعت ساختمان در اقصی نقاط کشور را محیا نمود . 

این شرکت همچنین با حمایت مالی و ستادی از مؤسسه ACI شاخه ایران و با تشکیل ستاد برگزاری مسابقات بین المللی دانشجوئی بتن ACI در سال 1378 هر ساله اقدام به برگزاری این مسابقات در حاشیه همایش سالیانه مؤسسه بین المللی ACI شاخه ایران نموده و نمونه ها و دانشجویان برتر و دانشجویان برتر را برای حضور در مرحله نهائی این مسابقات در آمریکا و کانادا معرفی می نماید که این فعالیت از جمله فعالیتهای شناخته شده و مؤثر این شرکت در سطح ایران و منطقه می باشد. 
از جمله دیگر اقدامات آموزشی و فرهنگی شرکت وند شیمی ساختمان می توان به چاپ نشریه فنی تخصصی وند شیمی از سال 1374 به تعداد 7 شماره و انتشار اولین مجله تکنولوژی بتن با مجوز وزارت فرهنگ و ارشاد اسلامی از سال 1381 و انتشار کتب و نشریات مختلف اشاره نمود که هر یک در جای خود به تفصیل توضیح داده خواهد شد. 
شرکت وند شیمی ساختمان با حضور فعال و در حد توان خود در زمینه مشاوره، تولید و عرضه مرغوبترین افزودنیهای بتن جهت پروژه های ملی کشور توانسته است بزرگترین افتخار و سربلندی را بین جامعه مهندسین سراسر کشور کسب نماید. افتخاری که طی 15 سال فعالیت مستمر در زمینه های یاد شده، کسب نام نیک و رضایتمندی مصرف کنندگان را در پی داشته است و این بزرگترین لوح افتخار و گواهینامه ایزو می باشد که از دست مشتریان آگاه و دلسوز خود دریافت داشته است. شرکت وند شیمی ساختمان همراه با آخرین تکنولوژی روز دنیا و هم تراز با تولید کنندگان نمونه جهان با شعار « وند شیمی ساختمان پلی به سوی آینده و تخصص ما تعهدی است برای آینده » در خدمت پیشبرد اهداف جامعه مهندسی کشور عزیزمان ایران می باشد.  
', '', '8 الی 17', '', '2,1');
insert into [tblCustomerDesc] values(872, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.sgc.ir', 'info@sgc.ir', 'کارخانه گچ زمرد', 1, 'گچ، سیمان و آهک', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'کارخانه گچ زمرد
کارخانه گچ زمرّد سال 1347 با اخذ مجوز تأسیس تحت مدیریت شرکت گچ تهران پس از خرید کوره ها و قطعات اصلی از کشور آلمان  در منطقه جاجرود تهران و در کنار سد لتیان احداث و در ابتدا طبق پروانه بهره برداری 330000 تن گچ بسته بندی و 450000 متر مربع قطعات پیش ساخته در سال فعالیت خود را در عرصه تولید در صنعت گچ ساختمانی آغاز می نماید . بعلت توانائیهای بالقوه کارخانه در مدت کوتاهی گچ زمرّد در تارک تولیدات گچی کشور چون زمرّد درخشیده بنحوی که شرکت پاسخگوی تقاضا نبوده و لذا طرح توسعه کارخانه را بمورد اجراء گذاشته و در سال 1367 باستناد پروانه بهره برداری تولید به 510000 تن در سال افزایش می یابد.
دراواخر دهه 60 بعلت کاهش منابع و افزایش هزینه های تمام شده بر مبنای  ارزشیابی کارخانه و کار کارشناسانه افراد خبره و مجرب کارخانه با موافقت سازمانها و ارگانهای ذیربط به استان سمنان منطقه گرمسار 120 کیلومتری تهران و در مجاورت منابع عظیم سنگ گچ با خلوص 99% نقل مکان و در محوطه ای  به وسعت 25 هکتار مجدداً تأسیس می گردد .
در سال 1382 شرکت گچ سامان ( زمرّد ) سهامی خاص با مدیریتی کاملاً محیط به تولیدات ساختمانی و بیش از نیم قرن تجربه در این صنعت کارخانه گچ زمرّد را خریداری و خط تولید را که بعد از نقل مکان متوقف  بوده راه اندازی نموده که در حال حاضر با 5 خط تولید  بشرح زیر فعال می باشد:
خط 1 : دارای کوره دوار با سیستم بهم زن ساخت کشور آلمان غربی بوده که مخصوص تولیدگچ های زودگیرش برای تولید قطعات پیش ساخته گچی می باشد .
خط 2: مجهز به کوره رستباند بوده که یکی از بزرگترین و کم نظیرترین کوره های تولید گچ در جهان و ساخت کشور آلمان غربی می باشد این کوره با ظرفیت 1500 تن در شبانه روز قابلیت تولید انواع گچ های چند فازی و انیدرید 1،2،3 را دارا می باشد .

خط 3 : دارای کوره دوار با سیستم بهم زن با ظرفیت 700  تن که قابلیت تولید گچ های ساختمانی را دارا می باشد . این کوره ساخت داخل و مطابق نمونه آلمانی طراحی و ساخته شده است.
خط 4: تولید گچ های پیش ساخته دیواری می باشد که قابلیت تولید دیوارهای گچی را در ابعاد و اندازه های مختلف را دارا می باشد .

خط 5 :خط تولید گچ های پیش ساخته سقفی بوده که قابلیت تولید در 100 طرح متنوع  را دارا می باشد و در حال نصب می باشد .
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(873, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.sinaranco.com/', 'sales@sinaranco.com', 'کارخانه چسب سیناران', 1, ' مصالح ساختمانی', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'کارخانه چسب سیناران
شرکت صنایع چسب سیناران ،شرکتی است با مالکیت خصوصی که تلاش نموده است با تولید و ارائه محصولاتی با کیفیت بالا ،قیمت مناسب و ارائه خدمات مشاوره ای به مشتربان ،رابطه ای مطلوب با مصرف کنندگان را پایه گذاری نماید .هم اینک توان بالای تولید ، این امکان را فراهم نموده است که نیاز های مشتریان با تنوع محصولات برآورده شود.تولیدات این شرکت شامل انواع چسب های مایع و نواری قابل مصرف در صنایع کفش و چرم ،سراجی ، مبلمان و لوازم اداری ،خودرو، بسته بندی ،پوشش های کف ،ساختمان ، برق و الکترونیک ،چوب ،صحافی و مصارف عمومی می باشد.
', '', '', '', '2,1');
insert into [tblCustomerDesc] values(874, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://adac.ir', ' info@adac.ir', 'مهراز تهویه آداک', 1, 'تاسیسات ساختمان
 سایر تجهیزات مکانیکی
 سیستم های گرمایشی
 مصالح ساختمانی
بلوک بتنی
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'مهراز تهویه آداک
بلوک بتنی سبک, دیوار پیس ساخته, فندانسیون پیش ساخته بتنی, جدول ,بلوک سقفی ,پکیج تسویه فاضلاب, صافی شنی ,چربی گیر و دانه گیر ( دو مخزنه) ,منهول, بتن
', '', '', '', '1');
insert into [tblCustomerDesc] values(875, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'www.', 'behnam1338@yahoo.com', 'تیرچه و بلوک علاپور', 1, 'مصالح ساختمانی
بلوک بتنی
شن و ماسه
گچ، سیمان و آهک
تیرچه و بلوک
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'تولید تیرچه با کیفت عالی با استاندارد مهندسی
تامین کننده سیمان آجر ومصالح 
', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(876, 1, '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(877, 2, null, null, null, '', '1382/10/00', '          ', '          ', null, null, '', null, null, '', ' kasra.amir31@yahoo.com', 'کارخانه اجر سفال بریک', 1, '1 . مصالح ساختمانی
2 . آجر
3 . سفال و شیروانی
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'تولید وعرضه مستقیم انواع آجرسفال اصفهان ویزد با بهترین قیمت و بهترین کیفیت (تحویل فوری) مرغوبترین آجرسفال اصفهان ویزد جهت صادرات و معماران و انبوه سازان و نمایندگان فروش در کلیه شهرها تیغه 10*20*20 هر متر مربع 25قالب تیغه 20*20* 15 هر متر مربع 25قالب تیغه20*20*7 هر متر مربع 25قالب تیغه 20*20* 20 هر متر مربع 20عدد تیغه فوم دار 20*15*25 در هر متر مربع 20عدد تیغه فوم دار 20*15*50 در هر متر مربع 10 عدد سقفی کرومیت 60*25*20 سقفی 25*25*40 هرمتر مربع 7عدد سقفی 25*25*50 هرمتر مربع 8عدد 10 سوراخ (لفتون) 20*10*5 هر متر مربع 80تا 90 قالب 10 سوراخ (لفتون) 5/21*10*5/5 هر متر مربع 75تا85 قالب 10 سوراخ (لفتون) 19*9*5 هر متر مربع 80 تا90 قالب 10 سوراخ (لفتون) 24*12*8 هر متر مربع 75تا85 فالب 10 سوراخ (لفتون) 23*11*7 هرمتر مربع 80تا90 قالب فندوله پالت 5*12*25 در هر متر مربع4قالب فندله فله آجرنمای پلاک 4 زردو قرمز آجرنمای ال 4 زرد وقرمز آجرنمای پلاک 5 زرد وقرمز پلاک آجرنمای ال 5 زرد و قرمز مدیرفروش: مهندس مبصری 09122551109 حیدری 09135145464 امین مبصری 09122550733 ایمیل: kasra.brickgroup@yahoo.com جهت کسب اطلاعات بیشتر تماس حاصل شود.', '', '   8-20', '', '1');
insert into [tblCustomerDesc] values(878, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://bozorgzadeh.xzn.ir', 'saeed_b64@hotmail.com', 'شرکت الکتروماد', 1, 'مصالح ساختمانی
 مصالح ساختمانی (متفرقه)
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, '•	الکترودهای معمولی و تخصصی
•	فیلروایرهای آرگون - Co2 و انواع تنگستن
•	سیم جوش زیر پودری و پودر های جوشکاری
•	دستگاههای جوش زیر پودری - میگ - تیگ - رکتیفایر و اینورتر 
•	سنگ های فیبری (برش ، ساب و سنگبری )
•	ابراز آلات صنعتی
', '', '9 الی 18', '', '1');
insert into [tblCustomerDesc] values(879, 2, null, null, null, '', '1357/11/00', '          ', '          ', null, null, '', null, null, 'www.', ' CIVILST@YAHOO.COM', 'شرکت اجر فشاری تقوی', 1, 'آجر
شن و ماسه
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'کارخانه آجر تقوی با مساحت 250 هزارمترمربع در سال 1357 به همت آقای محمد تقوی تاسیس و درهمان سال به بهره برداری رسیده است . در تمامی این سالها تولید آجرگری وخشت سنتی چهارگوش سه گوش را آغاز نموده و در سال های متمادی با اضافه نمودن یکسری ماشین آلات و مونتاژ شده آن در بستر کارخانه راه اندازی شده و به تولید بیشترو با کلیه ماشین آلات آلات جدید و مدرنیزه می باشد و تمامی این واحد به صورت نیمه اتوماتیک در آمده است در حال حاضر این واحد در حال ارایه آجر پلاک می باشد.این واحد توانایی ارایه کلیه محصولات زبره را به صورت سفارش یا آماده تحویل را به مشتریان گرامی دارد. ضمنا این واحد از آغاز تاکنون دارای هیچ گونه تغییر مدیریتی نبوده است در حال حاضر این کارخانه مشغول به تولید بهترین نوع آجر زبره و همچنین آجرهای سفالی و تیغه مشغول می باشد . این واحد موفق به عرضه به کلیه نقاط ایران از جمله واحدهای شرق ایران شده است. ', '300', ': 7:30 الی 21', '', '1');
insert into [tblCustomerDesc] values(880, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.betonsaghf.com', ' info@betonsaghf.com', 'شرکت بتن حامی شرق', 1, ' بتن و فرآورده های بتنی
تیرچه و بلوک
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'بتن آماده و تیرچه
شرکت بتن سقف حامی شرق در سال 1381 هجری شمسی (2002 میلادی ) تاسیس شد . این شرکت با سابقه ای درخشان در امر تولید بتن آماده و فراورده های بتنی ( انواع تیرچه های سقفی ) و همکاری با شرکتهای عدیده تعاونی مسکن ، یکی از اولین موسساتی است که موفق به دریافت نشان استاندارد محصول شده و مورد تایید دستگاههای نظارتی و مسئولی همچون اداره کل استاندارد و تحقیقات صنعتی خراسان رضوی ،سازمان بازرگانی خراسان رضوی ، سازمان مدیریت و برنامه ریزی استان ، کمیته کنترل کیفیت مصالح ساختمانی شورای فنی استان قرار گرفته است .
همچنین نظر به دارا بودن ضوابط و شرایط خاص یکی از اولین شرکتهایی است که در استان خراسان ، به عضویت انجمن بتن ایران ناتل شده است. در اختیار داشتن انواع تجهیزات و امکانات مورد نیاز ، توانایی لازم را جهت ارائه هر چه بهتر و اصولی تر بتن در مقاطع و فصول مختلف به مجموعه "بتن سقف حامی شرق " بخشیده است از دیگر امتیازات این شرکت میتوان به نزدیکی کارخانه به شهر مشهد و در جوار بلوار صد متری کمر بندی در منطقه خین عرب اشاره نمود که سهولت دسترسی و سرویس دهی به پروژه های واقع در محدوده شهر را میسر میسازد.
با عنایت به موارد فوق ، این شرکت آمادگی خود را جهت همکاری با مهندسین, مشاورین و سازمانها و ارگانهای ذیربط در صنعت ساختمان در خصوص تامین بتن مورد نیاز با کیفیت مطلوب و استاندارد و نیز تامین فرآورده ها و اجرای انواع سقفهای بتنی اعلام می دارد.
', '', '', '', '1');
insert into [tblCustomerDesc] values(881, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, ' http://www.parsasia.ir', 'samadi.nta@gmail.com', 'شرکت بازرگانی پارس آسیا', 1, '1 . مصالح ساختمانی
', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'تیرچه فلزی،کرومیت پارس،پارس کرومیت،اسکلت فلزی،آهن آلات،میلگرد،تیرآهن،پیمانکاری،اجرای سقف،انبوه سازی، توری،مش،پانل،سیم، سیم مفتول،سیم آرماتور
تیرچه فلزی،کرومیت پارس،پارس کرومیت،اسکلت فلزی،آهن آلات،میلگرد،تیرآهن،پیمانکاری،اجرای سقف،انبوه سازی، توری،مش،پانل،سیم، سیم مفتول،سیم آرماتور
', '', ': 8 الی 17', '', '1');
insert into [tblCustomerDesc] values(882, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://www.ajoran.com', 'info@ajoran.com', 'مجتمع تولیدی-صنعتی آجر سفال اصفهان', 1, 'آجر', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'تولید و عرضه آجرسفال, آجرنما و بلوک سقفی آجرسفال , آجرنما , بلوک سقفی سفالی
دسته بندی کلی محصولات

1. آجر سفال (درجه یک ممتاز و درجه دو) : 7 _ 10 _ 15 سانتی ( همراه با نیمه) 
2.آجر سفال فومدار (عایقدار)
3. بلوک سقفی سفالی : 30_ 25 _20 (فومدار و بدون فوم)
4. انواع آجرلفتون ده سوراخه (درجه یک ممتاز و درجه دو): 7 سانتی (صادراتی-عراقی) ، 5 و 5/5 به صورت بسته بندی و فله ای (زرد/قرمز)
5. انواع آجرنما کارتنی ( پلاک , ال , مدل , لعابی ) آجر قزاقی و کف فرش 20*20 (زرد/قرمز/گلبهی)
6. آجرسفال سه گل

* کلیه آجرهای قرمز از جنس پودر سنگ شیل میباشد.
', '', '', '', '1');
insert into [tblCustomerDesc] values(883, 2, null, null, null, '', '    /  /  ', '          ', '          ', null, null, '', null, null, 'http://gharbpokeh.blogfa.com', 'tahaabdi19@yahoo.com', 'شرکت بازرگانی غرب پوکه', 1, 'مصالح ساختمانی', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'فرآوری واستخراج پوکه ازمعدن قزلجه کند-دیرکلو -احمدآباد باش وارسال آن به تمام نقاط کشور بدون واسطه دراسرع وقت با هماهنگی قبلی وهمچنین مشاوره رایگان جهت مشتریان پوکه معدنی مشخصات پوکه معدنی قروه: پوکه معدنی متشکل از گدازه های آتشفشان است که پس از رسیدن به سطح زمین سرد شده و به صورت دانه های ریز و درشت متخلخل تشکیل گردیده و دارای مشخصات زیر می باشد:: • کیفیت و استحکام بسیار بالاتر از پوکه لیکا و دماوند بسیار بصرفه (هزینه ای تمام شده بسیار کمتر از پوکه لیکا و دماوند) سبک و دوام طولانی (دارای وزن حجمی 550 کیلو گرم برمتر مکعب) کاهش انتقال صدا مقاوم در برابر انقباض و انبساط ضد حشرات و موریانه عایقی فوق العاده عایق حرارت و برودت و ضد حریق (نقطه ذوب 1342 درجه و تا 760- درجه مقاوم است) پوکه مصرفی در ترکیب با سیمان دارای قابلیت بالای نگهداری آب می باشد که موجب می شود مقاومت بتن ساخته شده بالا رود وازمهمترین ویژگی این محصول استحکام بسیار بالادرترکیب با سیمان و وزن بسیارسبک میباشد مواردمصرف از این ماده ارزشمند برای شیب بندی پشت بام ,ساخت بلوک های سبک ، موزاییک و پر کردن سطوح مختلف ساختمان و ... استفاده می شود سایز و وزن انواع پوکه معدنی قروه: 1_سنگ پوکه (سایز 7-25 سانتیمتر) (وزن در هر متر مکعب 400-500( 2_پوکه بادامی ( سایز10-30 میلیمتر) (وزن در هر متر مکعب 500_550 ( 3_ پوکه مخلوط (سایز10-20 میلیمتر) (وزن در هر متر مکعب 550_600( 4_پوکه نخودی (سایز 5-12 میلیمتر ) (وزن در هر متر مکعب 550_600( 5_پوکه عدسی (سایز 5-10 میلیمتر) (وزن در هر متر مکعب 600_650( 6_ماسه ای ( سایز 0- 5میلیمتر) (وزن در هر متر مکعب 800_850) ارسال به تمام نقاط ایران .', '79', '', '', '1');
insert into [tblCustomerDesc] values(884, 2, null, null, null, '', '1370/03/00', '          ', '          ', null, null, '', null, null, 'http://www.sakhtemoon.com', 'info@sakhtemoon.com', 'شرکت فابیر', 1, 'ژل میکروسیلیس، ژل میکروسیلیکا، ژل سیلیکافیوم، فوق روان کننده بتن، روان ساز بتن، فوق روان ساز بتن، افزودنی های بتن، مواد افزودنی بتن، ضد یخ بتن', '                    ', 1, -1, '1392/03/22', 0, null, 1, '', null, null, null, null, 'شرکت فابیر یک شرکت فعال در ضمینه تولید و تامین مواد افزودنی بتن و مواد شیمیائی ساختمانی در پروژه‌ها زیربنایی و سازه های عمرانی کشور بوده . فابیر پیشرو و فعال در فناوری بتن و به عنوان تنها تولید کننده مجاز ژل میکروسیلیس در ایران و دارنده استاندارد 2930می باشد. که تمامی محصولات خود را مطابق با استانداردهای ملی و بین المللی و با رعایت کلیه نکات کیفی تولید و عرضه میکند. سیاستهای اولیه تحقیقاتی شرکت فابیر در افزودنی بتن و مواد افزودنی بتن نو آوری و فن آوری در مواد افزودنی بتن روان کننده های بتن و فوق روان سازها بتن و مواد دیر گیر و ژل میکروسیلس میباشد. فابیر در راستای تحقیقات خود دست آوردهایی در زمینه افزودنی های بتن و روانساز بتن ژل میکروسیلیس داشته و همچنین اختراعاتی را در زمینه ژل میکروسیلیس که با نامهای ژل میکروسیلیکا و ژل سیلیکافیوم نیر شناخته میشوند که در آن با کاهش کربن میکروسیلیکا با تولید ژل میکروسیلیکا کربن پایین و ژل سیلیکافیوم کلاسیفایر شده و کلاس های مکمل بتن و رنگ بتن به ثبت رسانده است. همچنین فابیر بجز فهالیت در زمینه ژل میکروسیلیس و فوق روان کننده های بتن نسل جدید که بر پایه پلی کربوکسیلات در زمینه مشاوره تولید تامین فروش انواع گروت سیمانی, گروت اپوکسی, کف سازی,ملات, بتن آب بند و آب بند کننده, بتن ناتراوا و مخزن بتنی,بتن الیافی ,بتن حجیم , بتن ضد سایش , بتن خود تراز, روغن قالب بتن, شات کریت و مواد افزودنی برای پمپ شاتکریت , بتن پاششی, زود گیر بتن , ضدیخ بتن و بتن ریزی در هوای سرد, رنگ بتن, کیورینگ بتن ,کوتینگ , بتن پیش تنیده , بتن آماده و مواد افزودنی برای پمپ تزریق بتن فعال بوده و بدعت گزاری های نوینی انجام داده است. رویکرد چند وجهی فابیر به علم مواد افزودنی بتن, موجب رابطه طولانی مدت و بادوام با تولید کنندگان، طراحان و پیمانکاران با دانش برای ساخت سازه های بتنی کرده است. همچنین فابیر با ارائه محصولات نوآورانه خود و خدمات جدید به مشتریان به صورت مستمر در زمینه روان کننده های بتن,ژل میکروسیلیس, گروت ضد یخ بتن , بتنهای ویژه چون بتن الیافی بتن حجیم بتن پیش تنیده بتن آب بند و دیگر مواد افزودنی بتن موجب شناخته شدن این شرکت در ایران و گشورهای همسایه و عربی به عنوان یک شرکت با را حل های مناسب برای بهبود بخشیدن و ارتقاع خواص بتن و مواد افزودنی بتن باشد.', '80', ' 9 الی 17', '', '1');
insert into [tblCustomerDesc] values(885, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.formgostaran.ir', 'formgostaran.ir@gmail.com', 'فرم گستران', 4, '1 . مصالح ساختمانی
2 . آهن آلات ساختمانی', '', 1, -1, '1392/03/28', 0, null, 1, '', null, null, null, null, 'فروش انواع ورق سیاه ، ورق روغنی ، ورق گالوانیزه ، ورق گالوانیزه رنگی ،ورق اسیدشوئی, ورق طرح سفال ، آردواز ، ایرانیت ، پانل, نما و لمبه

اجرای سقف ویلا،اجرای انواع پوشش ویلا،اجرای سردرب ویلایی،اجرای پیشانی ویلایی و طراحی انواع ویلا با متریال مدرن

انواع عایق:
نماینده رسمی شرکت پشم شیشه ایران
پشم شیشه ،پشم سنگ, ایزوگام ، سردخانه ای عایق لوله و ...

ساخت و اجرای انواع سازه های فلزی (سوله ، خرپا ، آلاچیق و ..
ساخت سقف های کاذب و شیروانی و ...
ساخت انباری و پارکینگ های خصوصی...

قیمت روز آهن آلات
انواع آهن آلات :
تیرآهن ، تیرآهن باریک ، تیر آهن نیم پهن ، تیر آهن بال پهن ، تیرآهن لانه زنبوری
I , IPE , IPB , HEA , HEB
نبشی ، ناودانی ، سپری ، میلگرد ، چهار پهلو ، شش گوش ، تسمه ، پروفیل ، صفحه ستون ، بولت ، رابیتس
انواع توری و فنس ، فلنج و ....

دارای نیروی مجرب جهت آزمایش بتن ,خاک و...', '10', '', '', '9,2,1');
insert into [tblCustomerDesc] values(886, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.asadpera.ir', 'asadp35@yahoo.com', 'کارگاه زنبق', 1, 'تولید تیرچه کرومیت فلزی وتیرچه بتنی ویونولیت', '', 1, -1, '1392/03/28', 0, null, 1, '', null, null, null, null, null, '', '7الی 14', '', '1');
insert into [tblCustomerDesc] values(887, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://deltairon.ir', 'info@deltairon.ir', 'کالای آهن دلتا', 1, 'آهن آلات ساختمانی', '', 1, -1, '1392/03/29', 0, null, 1, '', null, null, null, null, 'انواع تیرآهن بال پهن سبک وسنگین اروپایی , میلگرد , نبشی , ناودانی , انواع ورقهای سیاه فولادی , گالوانیزه ساده ,رنگی , فرمینگ وپروفیلهای توخالی
فروشگاه کالاي آهن دلتا با برخورداري از تجارب فني ، بازرگاني وبا هدف تامين تجهيزات ،آهن الات وسيستم پايپينگ کارخانجات و واحدهاي صنعتي فعاليت خود را آغاز نمود.
در اين راستا ميتوان همکاري مستمر با شرکتهاي نفت و گاز وپيمانکاران تابعه ، کارخانجات خودرو سازي ، سازمانهاي آب و فاضلاب و کارخانجات داروسازي و رضايت کارفرمايان اخيرالذکر از تامين بموقع کالا و تعهد اين فروشگاه در ارسال کالاي مرغوب و مطابق استاندارد و نياز مشتريان خود را بعنوان برگ زريني در کارنامه اين فروشگاه قلمداد نمود.
بخش بازرگاني خارجي اين فروشگاه همواره در تلاش بوده و ميباشد که با واردات بهترين کيفيت کالاي مطابق تکنولوژي روز دنيا در خصوص کليه تجهيزات سيستم پايپينگ سهمي در تامين نياز بازار ايران را داشته باشد.', '', '', '', '13,3');
insert into [tblCustomerDesc] values(888, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.kimia-co.ir', 'mo_khorram@yahoo.com', 'کیمیا افرینان پاسارگاد', 1, '1 . مصالح ساختمانی
2 . بتن و فرآورده های بتنی
3 . سازه های پیش ساخته', '', 1, -1, '1392/03/29', 0, null, 1, '', null, null, null, null, 'کیمیا افرینان پاسارگاد
تولید کننده بلوک سبک پرلیتی و پوکه ای کیمیا', '', '9 الی 17', '', '');
insert into [tblCustomerDesc] values(889, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.', 'tivachem@yahoo.com', 'موادمهندسی تیوا', 1, '1 . مصالح ساختمانی
2 . افزودنی های بتن
3 . ضد یخ بتن', '', 1, -1, '1392/03/29', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(890, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.behzistsofalin.com', 'behzistsofalinyazd@gmail.com', 'آجر بهزیست سفالین یزد', 1, '1 . آجر
2 . بلوک بتنی
3 . مصالح ساختمانی', '', 1, -1, '1392/03/29', 0, null, 1, '', null, null, null, null, null, '', '9-17', '', '1');
insert into [tblCustomerDesc] values(891, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شنزار', null, '1 . جدول بتنی
2 . مصالح ساختمانی
3 . بلوک بتنی', null, 1, -1, '1392/03/29', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(892, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.adjorsefied.com', 'info@adjorsefied.com', 'آجر سفید', 1, '1 . آجر
2 . مصالح ساختمانی
3 . بلوک بتنی', '', 1, -1, '1392/03/29', 0, null, 1, '', null, null, null, null, 'شرکت تولیدی آجر سفید با همکاری شرکت تیسن ( Thyssen ) آلمان به منظور تولید انواع محصولات سفالی از قبیل آجر نما ، تیغه و بلوک با دو خط تولید در سال 1354 تأسیس و مورد بهره برداری قرار گرفت.
کارخانه آجر سفید با بهترین دستگاههای تولید آجر و مجهز به دو واحد کوره تونلی تمام اتوماتیک به طول 105 متر، از ماشین آلات جدید جهت انبار نمودن و آماده سازی خاک نیز بهره می برد. آجر سفید با در دست داشتن این امکانات و یاری افراد مجرب توانسته است محصولی قابل اعتماد و با کیفیتی مرغوب، به مهندسین، انبوه سازان و علی الخصوص سازندگان سوله های کارگاهی ارائه نماید. 
این شرکت در خصوص صادرات محصولات خود به کشورهای حوزه خلیج فارس و آسیای میانه نیز گامهای مؤثری برداشته است.', '', '', '', '1');
insert into [tblCustomerDesc] values(893, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.taksaman.com', 'info@taksaman.com', 'تک سامان هور', 1, '1 . مصالح ساختمانی
2 . سنگ های ساختمانی
3 . سنگ تراورتن
4 . سنگ دکوراتیو و مصنوعی
5 . سنگ گرانیت
6 . سنگ مرمر
7 . سنگ مرمریت', '', 1, -1, '1392/03/31', 0, null, 1, '', null, null, null, null, 'با توجه به اهمیت روز افزون انرژی و تلاشهای جهانی برای جلوگیری از اتلاف آن , گروه تک سامان هور در سال 1385 با رسالت گسترش استفاده از فن آوریهای نوین در صنعت مصالح ساختمانی و تامین آن برای مشتریان تاسیس گردید.

گروه فعالیت خود را با تمرکز بر تامین قطعات بتنی سبک آغاز نمود و در این راستا در مدت زمان اندک مورد توجه پروزه های متنوع در بخش خصوصی , دولتی و شخصی ساز گردید.

با توجه به مطالعات و تحقیقات گسترده و نیاز سنجی مشتریان , گروه تک سامان هور با یاری گرفتن از متخصصین برجسته در زمینه مبحث تیغه چینی و با هدف ارتقاء سطح کیفی محصولات خود نهایتا موفق به تولید محصولی خاص تحت عنوان TS - BLOCK گردیدکه به لطف پروردگار در فاز نخست تولید مورد استقبال جامعه ساختمانی ایران قرار گرفت.

گروه تک سامان هور در سال 1388 درجهت گسترش فعالیتهای خود با بهره گیری از کادری مجرب در زمینه تولید و فرآوری و عرضه انواع سنگهای ساختمانی , دپارتمان تخصصی سنگهای تزئینی خود را افتتاح کرد که منجر به حضوری چشمگیر در بازار گردید.

ارائه خدمات مشاوره ای توسط کارشناسان مصالح ساختمانی از جمله خدمات این گروه در راستای تامین رضایت مشتریان مبیاشد.

گروه تک سامان امیدوار است همواره در جهت ارتقاء سطح رضایتمندی مشتریان خود بواسطه افزایش سطح کیفی محصولات و خدمات و نیز هماهنگ سازی فعالیت های ساختمانی با پیشرفتهای جهانی گام های موثرتری بردارد', '', '', '', '1');
insert into [tblCustomerDesc] values(894, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', 'shams.perlit@yahoo.com', 'شرکت ارمک', 1, 'تولید ماشین آلات مختلف بتنی', '', 1, -1, '1392/04/09', 0, null, 1, '', null, null, null, null, 'شرکت ارماک ترکیه از سال 1965 در راستای تولید ماشین آلات مختلف بتنی پرسی خشک متراکم به طور تمام اتوماتیک کار خود را شروع کرده و در این راستا صادرات خود را به کشورهای مختلف اروپایی، آسیایی و کشور عزیزمان ایران داشته است .', '', '', '', '1');
insert into [tblCustomerDesc] values(895, 2, null, null, null, '', '1380/01/01', '', '', null, null, '', null, null, 'www.', '', 'شرکت تولیدی صنعتی ایران فوم', 1, 'تولید کننده پلاستو فوم های سقفی و دیواری سه بعدی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'شرکت ایران فوم ( سهامی خاص)
تولید کننده فوم حجمی ( یونولیت ) و پانل های حجمی می باشد .', '', '', '', '1');
insert into [tblCustomerDesc] values(896, 2, null, null, null, '', '1354/01/01', '', '', null, null, '', null, null, 'http://www.ajorordib.ir', 'info@ajorordib.com', 'گروه تولیدی فروتنی(آجر اردیب)', 1, 'تولید آجرهای سفال نما', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'شرکت تولیدی و صنعتی اردیب در سال 1354 تاسیس گردید.
کارخانه این شرکت که در زمره کامل ترین کارخانجات تمام اتوماتیک تولید آجر ماشینی در ایران می باشد در نزدیکی تهران و در کیلومتر 26 جاده خاوران قرار گرفته است.کارخانه این شرکت دارای یک خط تولید است.دستگاه ها و ماشین آلات موجود در امر تولید از بهترین نوع ماشین آلات در سیستم پیش بینی شده تولید آجر بوده که از کارخانجات لینگل و هندله آلمان خریداری ، نصب و مورد بهره برداری قرار گرفته است. 
بعد از تامین خاک در سیلو ، خاک آماده شده توسط نوارها و دستگاه هایموجود به قسمت پرس منتقل گردیده و بعد از خروج از قالب استاندارد تولید آجر ، خشت برش داده شده جمعی توسط سیستم کاملا اتوماتیک به طرف دستگاه تکی برش که در هر دقیقه حدود 400 قالب را طبق اندازه استاندارد برش می دهد ، منتقل می گردد .', '', '', '', '1');
insert into [tblCustomerDesc] values(897, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', 'noorshahriyar@yahoo.com', 'کارخانجات آجر ماشینی نور شهریار', 1, 'تولیدات آجر ماشینی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(898, 2, null, null, null, '', '1371/01/01', '', '', null, null, '', null, null, 'http://www.bszeman.com', 'amir_sharif88@yahoo.com', 'بتن سازه ضمان', 1, 'تولید کننده کلیه تجهیزات قالب بندی بتن', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'تولید کننده کلیه تجهیزات قالب بندی بتن در یک مجتمع
بزرگ ترین تولید کننده اتصالات قالب بتن در ایران', '50', '9الی17', '100', '1');
insert into [tblCustomerDesc] values(899, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.Dreambeton.com', 'info@Dreambeton.com', 'شرکت دریم بتن', 1, '', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'گروه تولیدی و صنعتی دریم بتن فعالیت خود را با هدف ایجاد و گسترش زمینه استفاده از مصالح نوین ساختمانی ، علی الخصوص بتن سبک از سال 1380 آغاز نمود . از دیگر اهداف این مجموعه ارتقاء سطح کمی و کیفی مصالح نوین ساختمانی و نیز تامین مواد اولیه مورد نیاز در این بخش می باشد که هم اکنون این مجموعه به بزرگترین تولید کننده و صادر کننده ماشین آلات ، مواد اولیه و بلوکهای نوین ساختمانی در کشور تبدیل شده و توانایی رقابت با شرکت های مشابه خارجی را دارا می باشد .
فعالیت این مجموعه در زمینه تولید ماشین آلات پرتابل فوم بتن و راه اندازی خطوط تولید بلوک های CLC از سال 1385 آغاز گردید . هم اکنون با راه اندازی بیش از 40 خط  تولید و ساخت بیش از 100 دستگاه پرتابل ، این مجموعه دارای درخشان ترین و معتبرترین رزومه اجرایی در کشور می باشد .
با توجه با اهمیت کاهش هزینه ها و زمان در پروژه های اجرایی و افزایش سرعت ، تحویل کلیه محصولات تولیدی این مجموعه در کوتاهترین زمان نسبت به سایر تولیدکنندگان در ایران می باشد . علاوه بر آن با افزایش راندمان و سرعت عمل کلیه ماشین آلات ، این مهم به صورت فزونه برآورده می گردد .
همچنین در زمینه تولید بلوک های نوین با مقاومت بالا ، وزن تمام شده کمتر ، کاهش هزینه های اجرایی و سرعت عمل بالاتر ، این مجموعه به دستاوردهای مطلوبی رسیده که محصول آن تحت عنوان نانو بلوک در بازار عرضه می گردد . نانو بلوک های تولیدی توسط این مجموعه بدر قالبهای فاق و زبانه دار و به صورت قفل شونده عرضه می گردند که بدون استفاده از مصالح و تنها توسط چسب های مخصوص استفاده شده و می توان به صورت کامل گچ و خاک را از روی آن حذف نمود .
در راستای حفط و ارتقاء اصول مشتری مداری و جهت ارائه محصولات با کیفیتی در حد استاندارد ، گروه تولیدی و صنعتی دریم بتن آغاز به تولید کلیه مواد اولیه مورد نیاز در صنعت بتن سبک مانند انواع فوم ، الیاف PP ، سخت کننده ها ، روان کننده ها ، ژل میکروسیلیس و انواع چسب با بالاترین کیفیت نموده است .
در پایان گروه تولیدی و صنعتی دریم بتن آمادگی خود را برای تولید ، ساخت و عرضه هر محصولی در جهت افزایش کیفیت و کاهش هزینه ها و زمان ساخت و ساز اعلام می نماید .', '', '', '', '1');
insert into [tblCustomerDesc] values(900, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.', '', 'مجتمع کارخانجات زرین سفال', 1, 'تولید کننده انواع آجر تیغه سفال', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(901, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', '', 'شرکت تولیدی سبک بتن سیلیسی ایران', 1, 'تولید کننده بلوک های سبک بتنی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(902, 1, 'ali', 'ahmadi', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, null, null, 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(903, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.behzistsofalin.com', 'behzistsofalinyazd@gmail.com', 'شرکت سفالین بهزیست', 1, '1 . آجر
2 . بلوک بتنی
3 . مصالح ساختمانی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'تولید کننده انواع بلوک تیغه ، آجر 10 سوراخه ، فندوله پالت و فله', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(904, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.gera-group.com', 'contactus@gera-group.com', 'گرا تجهیز', 1, 'تاسیسات برقی و روشنایی
تاسیسات مکانیکی
حفاظ و نرده
دکوراسیون داخلی و نما
سنگ های ساختمانی
شیر آلات
مصالح ساختمانی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'شرکت گراتجهیز به عنوان عضوی از گروه گسترش رهیافت ایرانیان، به منظور ارائه خدمات در زمینه های تامین و توزیع تجهیزات ساختمانی، در خدمت جامعه پیمانکاران، کارفرمایان، مشاوران، طراحان و مدیران محترم می باشد.
گراتجهیز، گستره وسیعی از لوزام و تجهیزات مورد استفاده در پروژه های ساختمانی را با بالاترین کیفیت و مناسب ترین قیمت در دسترس قرار می دهد. این شرکت بر آن است تا با افزایش کیفیت تولیدات داخلی، قدم در راه خود اتکایی و حفظ سرمایه های ملی بردارد.
بر اساس تحقیقات میدانی شرکت، حفظ کیفیت، زیبایی و طول عمر تجهیزات ساختمانی به میزان قابل توجهی وابسته به خدمات و پشتیبانی پس از فروش می باشد. این شرکت به منظور بهره گیری حداکثری خریداران محترم از سرمایه گذاری صورت گرفته، اهتمام خاصی در بخش خدمات پشتیبانی دارد.', '', '8 الی 17', '', '2');
insert into [tblCustomerDesc] values(905, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.iranframeco.org', 'keihani@iranframeco.org', 'ایران فریمکو', 1, 'آجر
بتن آببند
بتن پلیمر
بتن سنگین
بتن نسوز
بلوک بتنی
تیرچه
جدول بتنی
دیوار پیش ساخته بتنی
سنگدال
صندلی شهری
نهر آماده
کفپوش بتنی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'مجتمع تحقیقاتی تولیدی ایران فریمکو در سال 1354 توسط دکتر علی اصغر کیهانی تاسیس شد. این مجتمع بنیانگذار تولید جداول و کفپوش های بتنی بادوام بلندمدت در کشور است که از25 سال پیش با بررسی وآسیب شناسی وضعیت پروژه های عمرانی نسبت به راه اندازی خطوط تولید متناسب با نیازهای کشور در این بخش اقدام نموده است. تولید ونصب 12 میلیون قالب انواع جداول بتنی با دوام باسایز و طرح های در 40 شهر مختلف کشور با شرایط اقلیمی متفاوت که در طول 25 سال گذشته بدون هیچ گونه عیب و نقصی در حال سرویس دهی هستند، نشان دهنده تصمیم درست مدیران این مجتمع برای انتقال تکنولوژی در سال های گذشته بوده است. همچنین راه اندازی مدرن ترین خط تولید انواع سنگدال های بتنی پیش تنیده ترافیکی که برای تقاطع ها وسرپوشیده کردن آنها ویا کانالهای روباز شهری کاربرد دارد. از دیگر محصولات ایران فریمکو در بخش تاسیسات شهری است. طراحی و تولید انواع کفپوش های بتنی مخصوص پیاده رو و مسیرهای دارای ترافیک سبک وسنگین و ایستگاهها و توقف گاه های شهری بلاخص توقفگاههای ویژه ی اتوبوس های شرکت واحد و ایستگاه های آتش نشانی وغیره یکی دیگر از محصولات ایران فریمکو است
یادآوری می شود که : کلیه محصولات ایران فریمکو بر اساس دوام طولانی طراحی وتولید می شوند و از سوی واحد کنترل کیفیت و تحقیق و توسعه ایران فریمکو ضمانت نامه دوام 20 ساله برای تک تک این محصولات صادر می شود
تنوع و ظرفیت تولید محصولات
ایران فریمکو بزرگترین ظرفیت تولید قطعات بتنی مبلمان و تاسیسات شهری را راه اندازی کرده است.تولید بیش از 2ملیون قالب انواع جداول بتنی در سایز های مختلف تولید سالیانه 300هزار مترمربع انواع کفپوش های پیاده رو ترافیکی/تولید سالیانه 100هزار متر طول انواع دال های پیش تنیده ترافیکی و نیز تولید 50هزار قالب انواع نیوجرسی جداکننده مجموعه ظرفیت سازی ایجاد شده توسط ایران فریمکو است...
تنوع تولید این محصولات بر اساس نیاز های عمومی شهرداری ها طراحی شده اند به نحوی که جداول بتنی در 10طرح مختلف:سنگدال های بتنی 8/0متر تا 6متر طول سنگ و سنگفرش های بتنی در 4طرح و بیش از 100 رنگ مختلف بر اساس نیاز های مرحله کاربری طراحی و تولید شده اند.همجنین ماشین آلات تجهیز شده این فرصت را فراهم میکند که بسته به نیاز های طراحی قطعات بتنی با ابعاد و طرح های مختلف پیشنهادی نیز تولید شوند

مشارکت های مالی در پروژه های عمران شهری
مجتمع ایران فریمکو در کنار واحد های تولید قطعات بتنی دارای تیم های اجرایی با تجربه ای است که در بخش محوطه سازی/آماده سازی /پیاده رو سازی/و نهرسازی و سرپوشیده کردن کانالها و مسیر های داخل شهر فعالیت میکنند.این مجتمع دارای توان فنی/مهندسی و اجرایی بالایی برای اجرای پروژه های بزرگ در مدت زمان کوتاه است.تعویض رفوژ وسط اتوبان مدرس در مدت 15روز در عید نوروز سال1386 یکی از این اقدامات است.همچنین ایران فریمکو آمادگی دارد تا بصورت تهاتری در پروژه های مختلف عمران شهری مشارکت داشته باشد...', '', '9 الی 17', '', '1');
insert into [tblCustomerDesc] values(906, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'info@sepandbrick.com', 'http://sepandbrick.com', 'آجر سپند', 1, 'آجر
مصالح ساختمانی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, null, '', '', '', '1');
insert into [tblCustomerDesc] values(907, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', 'sinadesigner@gmail.com', 'شرکت کومه', 1, 'فعالیت در زمینه مشاوره - طراحی و اجرای پروژه های ساختمانی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'درباره شرکت
گروه مهندسان معماری و عمران کومه با حضور دهها مهندس جوان و معمار پیشکسوت به فعالیت در زمینه مشاوره - طراحی و اجرای پروژه های ساختمانی و همچنین تامین مصالح ساختمانی با کلیه برندهای موجود در کشور می پردازد', '', '', '', '');
insert into [tblCustomerDesc] values(908, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://sahand-co.com', 'info@sahand-co.com', 'شرکت سهند', 1, 'تولید کننده انواع نماهای ماندگارو طرح سنتی و رنگارنگ و فرآورده های نسوز شومینه', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'درباره شرکت

تولیدات ما از سال 1331 تا 1369 در منطقه قلعه مرغی بدین ترتیب

بود که در ابتدا آجر 3 سانتی و سپس آجر 4 سانتی تولید کرده و

بعد از چند سال تولید سرامیک های در ابعاد 5x20 لعاب دار را آغاز

کردیم که از این محصول در تهران و خصوصا مناطق جنوبی کشور

استقبال بسیار خوبی به عمل آمد به طوری که در آن زمان خیلی

از مراکز دولتی و منازل مسکونی از این سرامیک برای تمام نمای

ساختمان خود استفاده می کردند (به عنوان مثال نمای ساختمان

تاکسی رانی تهران)و بعد از کاشی 5 20x نوبت به کاشی های

10x 10رسید که این کاشی هم به صورت لعاب دار و هم به صورت

بدون لعاب تولید شد که بدون لعاب آن به عنوان ضد اسید برای

آزمایشگاه ها مورد استفاده قرار گرفت و سپس همراه کاشی سازی

ایرانا شروع به تولید کاشی در ابعاد 15x15 کردیم ولی به دلیل

 سنتی بودن روش کارها ناچارا تولید کاشی های در ابعاد جدید از

جمله 10x20 را آغاز کردیم.

و بلاخره در سال 1369 کارگاه خود را به منطقه ورامین انتقال

 دادیم و نام آن را سهند نهادیم.تولیدات ما از سال 1369 تا به

 امروز ابعاد 4 سانتی ، 5/5 سانتی و 7/5 سانتی و .... به صورت

آجر زرد وهم در حال حاضر به صورت آجرهای رنگارنگ (که

 اولین مبتکردر طرح های رنگارنگ می باشیم و فرآوردهای نسوز)

هستند.', '', '8 الی 17', '', '1');
insert into [tblCustomerDesc] values(909, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://gharbpokeh.blogfa.com', 'tahaabdi19@yahoo.com', 'شرکت بازرگانی غرب پوکه', 1, 'پوکه معدنی
مصالح ساختمانی', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'درباره شرکت
فرآوری واستخراج پوکه ازمعدن قزلجه کند-دیرکلو -احمدآباد باش وارسال آن به تمام نقاط کشور بدون واسطه دراسرع وقت با هماهنگی قبلی وهمچنین مشاوره رایگان جهت مشتریان پوکه معدنی مشخصات پوکه معدنی قروه: پوکه معدنی متشکل از گدازه های آتشفشان است که پس از رسیدن به سطح زمین سرد شده و به صورت دانه های ریز و درشت متخلخل تشکیل گردیده و دارای مشخصات زیر می باشد:: • کیفیت و استحکام بسیار بالاتر از پوکه لیکا و دماوند بسیار بصرفه (هزینه ای تمام شده بسیار کمتر از پوکه لیکا و دماوند) سبک و دوام طولانی (دارای وزن حجمی 550 کیلو گرم برمتر مکعب) کاهش انتقال صدا مقاوم در برابر انقباض و انبساط ضد حشرات و موریانه عایقی فوق العاده عایق حرارت و برودت و ضد حریق (نقطه ذوب 1342 درجه و تا 760- درجه مقاوم است) پوکه مصرفی در ترکیب با سیمان دارای قابلیت بالای نگهداری آب می باشد که موجب می شود مقاومت بتن ساخته شده بالا رود وازمهمترین ویژگی این محصول استحکام بسیار بالادرترکیب با سیمان و وزن بسیارسبک میباشد مواردمصرف از این ماده ارزشمند برای شیب بندی پشت بام ,ساخت بلوک های سبک ، موزاییک و پر کردن سطوح مختلف ساختمان و ... استفاده می شود سایز و وزن انواع پوکه معدنی قروه: 1_سنگ پوکه (سایز 7-25 سانتیمتر) (وزن در هر متر مکعب 400-500( 2_پوکه بادامی ( سایز10-30 میلیمتر) (وزن در هر متر مکعب 500_550 ( 3_ پوکه مخلوط (سایز10-20 میلیمتر) (وزن در هر متر مکعب 550_600( 4_پوکه نخودی (سایز 5-12 میلیمتر ) (وزن در هر متر مکعب 550_600( 5_پوکه عدسی (سایز 5-10 میلیمتر) (وزن در هر متر مکعب 600_650( 6_ماسه ای ( سایز 0- 5میلیمتر) (وزن در هر متر مکعب 800_850) ارسال به تمام نقاط ایران تماس با ما: متقاضیان گرامی میتوانند ازطریق ارتباط با ما نوع پوکه خود را درخواست کنند تا پس ازهماهنگی ودر اسرع وقت پوکه مورد نظر خود را دریافت کنند.', '', '9 الی 24', '', '1');
insert into [tblCustomerDesc] values(910, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.shoaeshargh.com', 'info@shoaeshargh.com', 'شرکت شعاع بتن شرق', 1, 'بتن آماده
بتن و فرآورده های بتنی
بلوک بتنی
بلوک پلی استایرن
پایه چراغ
تجهیزات شهری و ترافیکی
تیرچه
جدول بتنی
دیوار پیش ساخته بتنی
صندلی شهری', '', 1, -1, '1392/04/10', 0, null, 1, '', null, null, null, null, 'این شرکت در سال 1361 با هدف تولید و عرضه محصولات بتنی تاسیس گردیده و بتدریج با تولید انواع مختلف فرآورده های بتنی، فلزی و چوبی در ارتباط با صنعت راه و ساختمان و المان های شهری توسعه و گسترش داده شد. 
هم اینک شرکت شعاع بتن شرق زیر نظر مهندسین و متخصصین و پرسنل مجرب و کارآزموده با تجربه قریب به 30 سال به لحاظ حجم و کیفیت استاندارد و مطلوب تولیدات و اخذ لوح های تقدیر از سازمان های مربوطه و کسب عنوان واحد نمونه در چندین دوره بسرعت در ردیف شرکت های معتبر و پیشرو کشور قرار گرفته که اخذ لوح واحد نمونه صنعتی در سال 1380 از استانداری گیلان، لوح تقدیر از سازمان های مسکن و شهرسازی، نظام مهندسی و صنایع و معادن گیلان، دریافت پروانه استاندارد از موسسه استاندارد و تحقیقات صنعتی ایران و دریافت نشان ایزو 2008-9001 از D.A.S انگلستان، همگی بیانگر کیفیت ممتاز فرآورده های این شرکت می باشند. 
به رغم موفقیتهای مذکور، هدف این مجموعه فراتر از سطح رقابت در داخل کشور و ارائه محصولات با کیفیت برتر در سطح جهانی بوده بدین منظور با توجه به اهمیت و نقش تحقیق و توسعه در روند گسترش فن آوری و اطلاعات در راستای پیشبرد اهداف علمی و با هدف گسرش و انجام فعالیتهایی مبتنی بر تحقیق در امور تولید که در دنیای امروز امری اجتناب ناپذیر بوده با سازماندهی در این حوزه تیم تحقیقاتی مجربی در کنار آزمایشگاه مجهز کنترل و کیفیت مواد و مصالح گرد هم آورده ایم که پیوسته در امر تحقیق و بروز رسانی این مجموعه را یاری می نماید بطوری که محصولات تولیدی این شرکت بصورت روزانه در آزمایشگاه کنترل کیفیت مستقر در کارخانه تحت نظر قرار گرفته و پس از تایید مسئول آزمایشگاه جهت عرضه به بازار آماده می گردد. افتخار ما ارائه خدمات فروش محصولات در هقصی نقاط کشور به بهترین وجه می باشد.', '', '8 صبح الی 8 شب', '', '1');
insert into [tblCustomerDesc] values(911, 2, null, null, null, '', '1363/00/00', '1037', '', null, null, '', null, null, 'http://www.yazdgonbad.com', 'info@yazdgonbad.com', 'شرکت یزد گنبد', 1, '', '', 1, -1, '1392/04/11', 0, null, 1, '', null, null, null, null, 'تاسيس در سال 1361 و فعاليت در امر توليد انواع آجر سفال و نما، بلوک سقفی و تيغه ای ، آجرهای قرمز نما و آجرهای لعابدار، بلوک های CLC و مصالح فيزيک ساختمان', '', '', '', '1');
insert into [tblCustomerDesc] values(912, 2, null, null, null, 'ایران -> استان مرکزی -> ساوه', '1361/03/24', '44769', '', null, null, '', null, null, 'www.sepidgs.com', 'info@sepidgs.com', 'سپید گچ ساوه', 1, 'تولید انواع گج', '', 1, -1, '1392/04/11', 0, null, 1, '', null, null, null, null, 'تاریخچه شرکت


شركت سپید گچ ساوه(سهامي خاص) در تاريخ 1361/03/24 در اداره ثبت شركت هاي تهران طي شماره 44769 به ثبت رسيد و از سال 1361 فعاليت خود را در منطقه غرق آباد ساوه به دليل وجود معادن غني و مرغوب سنگ گچ در زمينه توليد گچ ماشيني با ظرفيت 500 تن در روز آغاز کرد و توليدات خود را كه از كيفيت بالايي برخوردار بود بصورت فله و پاكتي در كيسه هاي 40 و 50 كيلوگرمي در نقاط مختلف كشور از جمله استان مركزي، استان كرمانشاه ، استان كردستان، استان همدان و مناطق جنوبي كشور توزيع نمود.

دورانديشي مديران ، كيفيت بالاي محصولات و زحمات پرسنل كوشاي اين مجموعه شرايط ايجاد بازار عرضه محصولات را در مناطق ديگر از جمله استان تهران و استان قزوين فراهم نمود. 

رشد بازار ساخت و ساز و مسكن و تقاضاي بازار، شركت را بر آن داشت كه طي چند مرحله اقدام به افزايش ظرفيت و ايجاد تنوع در توليد محصولات خود نمايد.

    • در سال 1375 افزايش ظرفيت توليد از 500 تن به 1000 تن گچ ماشيني در روز 
    • در سال 1380 افزايش ظرفيت توليد از 1000 تن به 2000 تن گچ ماشيني در روز

از آنجا كه صنعت توليد گچ ماشيني با آلودگي هاي زيست محيطي همراه است اين شركت در راستاي اهداف عاليه خود و حفظ منابع طبيعي و محيط زيست ، با صرف هزينه هاي شخصي و تلاش جمعي از متخصصين ايراني در سال 1380 اقدام به خريد يك دستگاه الكتروفيلتر با تكنولوژي لورگي(LORGE) آلمان نمود كه با اجراي اين پروژه ضمن كنترل آلودگي محيط زيست ، شركت سپيد گچ ساوه از طرف سازمان حفاظت محيط زيست بعنوان برگزيده صنعت سبز و از طرف اداره كل صنايع و معادن استان مركزي بعنوان واحد صنعتي نمونه سال برگزيده شد. 

شركت سپيد گچ ساوه در حال حاضر با ظرفيت توليد بيش از 2500 تن انواع گچ و فرآورده هاي گچي به عنوان پيشرو در صنعت توليد گچ ماشيني و مصنوعات جانبي همواره بر آن بوده است كه با مطالعه و برخورداري از آخرين دستاوردهاي صنعتي كشورهاي پيشرفته جهان گامي در جهت پيشرفت اين صنعت در كشور بردارد. 

از اين رو با استفاده از روش و تكنولوژي روز دنيا با احداث واحد MIXING PLANT در كارخانه سپيد گچ ساوه نسبت به توليد محصولات افزودني دار با پايه گچي مانند: گچ پاششي، گچ سيوا ، گچ ساتن(پرداخت نهايي) ، گچ روكش بتون(جيپتون) و ... و محصولات افزودني دار با پايه سيماني شامل: سيمان پاششي، چسب كاشي ، پودر بندكشي، بتون ترميمي و ... و كمك به آموزش عمومي مجريان ، كارگران و ... با استفاده از افراد مجرب و كارآزموده داخلي و خارجي راه گشاي توليد اين گروه محصولات در كشور گرديد. 

شايان ذكر است اين محصولات هم اكنون در بازار داخلي و همچنين كشورهاي همسايه نظير كشور تركمنستان و كشورهاي آسياي ميانه عرضه مي گردند.

همچنين شركت در سال 1390 با نصب و راه اندازي 3 خط توليد از شركت گرلاخ آلمان توليد ديوارك هاي گچي با ضخامت 7 ، 8 و 10 سانتي متري را بصورت انبوه شروع و با كيفيت بالا به بازار عرضه نموده است. شركت سپيدگچ ساوه اميدوار است كه با ارايه محصولات با كيفيت و جديد و ايجاد اشتغال بيشتر در اين صنعت بتواند گامي موثر در جهت صنعت گچ و پيشرفت كشور عزيزمان بردارد.', '', '', '', '1');
insert into [tblCustomerDesc] values(913, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.farsgypsumco.com/', 'info@farsgypsumco.com', 'کارخانه گچ فارس', 1, '', '', 1, -1, '1392/04/11', 0, null, 1, '', null, null, null, null, 'شركت گچ ماشيني فارس در سال ۱۳۴۹ با سرمايه گذاري شرگت سيمان فارس و خوزستان در مجاورت كارخانه سيمان فارس تاسيس و با خريد ماشين آلات از شركت كلوديوس پيترز آلمان اقدام به توليد گچ ساختماني ( زود گير ) نمود .

سپس در سال ۱۳۷۶ با نصب يك كوره دوار ، گچ سفيد كاري را نيز به توليدات خود اضافه نمود .در مرحله بعد خط توليد ديوار پيش ساخته گچي ، گچ ميكرونيزه و گيپتون نيز نصب و راه اندازي گرديد .

اين شركت با بيش از ۴۰ سال تجربه هم اكنون با كادري مجرب و متخصصين كارآمد خود را در زمينه توليد انواع گچ و محصولات بتني شامل انواع بتن آماده ، انواع بلوك ، تك لبه و كانيوا در خدمت مردم و كشور اسلامي مي باشد .', '', '', '', '1');
insert into [tblCustomerDesc] values(914, 2, null, null, null, '', '1382/01/01', '', '', null, null, '', null, null, 'http://www.3s-industries.com/', '', 'شرکت صدر سامانه صنعت', 1, '', '', 1, -1, '1392/04/12', 0, null, 1, '', null, null, null, null, 'شرکت صدر سامانه صنعت در سال 1382 با هدف کاهش زمان ساخت و ساز و ایجاد سازه هایی با کیفیت مناسب تاسیس گردیده و همواره تلاش داشته تا با ارائه روش ها و محصولات نوین ساختمان سازی صنعتی، در این راستا گام بردارد.
این شرکت با بهره گیری از یک مجموعه تحقیق و توسعه مدرن و با استفاده از کادر فنی مجرب، سعی دارد تا با استفاده از بومی سازی تکنولوژی های روز دنیا، مصالحی با پارامترهای کیفی مطلوب و از نظر اقتصادی مقرون به صرفه، به دست اندرکاران این صنعت عرضه نماید.', '', '', '', '1');
insert into [tblCustomerDesc] values(915, 2, null, null, null, '', '1352/01/01', '', '', null, null, '', null, null, 'info@ajorsoufalin.com', 'http://www.ajorsoufalin.com/', 'شرکت آجر سفالین', 1, '', '', 1, -1, '1392/04/12', 0, null, 1, '', null, null, null, null, 'مقدمه و معرفی شرکت
شرکت تولیدی آجر سوفالین در سال ۱۳۵۲ در نزدیکی تهران به بهره برداری رسید. 
شرکت دارای دو خط تولید با ظرفیتی معادل هفتصد هزار قالب آجر نما مجموعا در روز می‌باشد. تکنولوژی و ماشین آلات از شرکت‌های معتبر هندله، کلر و ترمو آلمان از پیشتازان این صنعت در دنیا می‌باشد. شرکت آجر سوفالین از شرکت‌های پیشرو و بسیار با تجربه در صنعت سوفال ایران بوده و مدیریت و پرسنل فعال و با تجربه شرکت از بهترین‌های صنعت می‌باشند.
فرآیند تولید در شرکت
شرکت تولیدی آجر سوفالین با در اختیار داشتن بهترین مواد اولیه، ماشین آلات، تکنولوژی و دانش فنی کارآمد قادر به تولید انواع سوفال ماشینی با کیفیت بالا می‌باشد. 
فرآیند تامین خاک مرغوب و مناسب در سیلو‌ها، سپس عمل آوری آن در سری ماشین آلات، سپس ورود به ماشین آلات فرم دهی و پرس، خشت خام درجه یک به دست آمده، سپس دریکصد خشک کن مدرن و گازسوز شرکت در زمان معین تبدیل به خشت خشک شده و پس از آن مرحله پخت در کوره‌های هوفمن ۳۶ قمیر شرکت در زمان مناسب با کیفیت عالی برای دوام بالای سوفال صورت می‌گیرد. کلیه مراحل تولید توسط پرسنل مجرب و کار آزموده به نحو احسن انجام می‌گیرد تا محصولی با کیفیت عرضه گردد.', '', '', '', '1');
insert into [tblCustomerDesc] values(916, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'سرو آرمان', null, 'تهویه مطبوع و انرژی', null, 1, -1, '1392/04/15', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(917, 2, null, null, null, null, null, null, null, null, null, 'طراح و مجزس پروژه های عمرانی', null, null, null, null, 'مات بتن', null, 'تولید بتن آماده و فرآورده های بتنی', null, 1, -1, '1392/04/15', 0, null, null, null, null, null, null, null, 'شرکت مسکن سازان آبادگر توس یا مات بتن علاوه بر طراحی و اجرای پروژهای عمرانی ، تولید بتن اماده و ساخت بلوک سبک فومی PERELEX در ابعاد مختلف را نیز بر عهده دارد.
این شرکت با استفاده از مدرن ترین دستگاه های روز دنیا و اختلاط مرغوب ترین مصالح موجود در بازار با بهره گیری از فراینده دقیق مهندسی ساخت و تولید بتن توانسته است اطمینان و رضایت خاطر مشتریان خود را در کیفیت تولیدات جلب نماید.
تامین انحصاری بتن بزرگترین پارکینگ طبقاتی و تجاری خاورمیانه در میدان هفده شهریوه و اخذ اولین استاندارد بتن در بچینگهای موقت در شرق کشور  خودگواهی است در سطعی و تلاش مدیران متخصصان و پرسنل پرتلاش شرکت در ارتقای سطح کیفی محصولات و تولیدات بتنی مات بتن.
این شرکت مفتخر است که با تامین بتن بزرگترین پروژهای عمرانی سطح شهر مشهد گامی هرچند کوچک جهت تسریع در عمران و آبادانی پایتخت معنوی ایران بر دارد', null, null, null, null);
insert into [tblCustomerDesc] values(918, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'پایهان بتن', null, 'دیوارهای پیش ساخته ، دال های بتنی مسلح و ساده ، جداول و تایل های پرسی ، نیوجرسی، بتن آماده ، بتن مقاومت بالا و بلوک دیواری سبک', null, 1, -1, '1392/04/15', 0, null, null, null, null, null, null, null, 'شرکت پایهان واقع در محور جاده مشهد- قوچان در فضایی به وسعت 10/000 متر مربع با هدف تولید سازه های بتنی در سال 1374 فعالیت خود را آغاز نمود.
با توجه به اینکه این شرکت دارای رتبه 5 ابنیه از دفتر فنی استانداری می باشد همزمان با انعقاد قراردادی با اداره کل نوسازی مدارس فعالیت خود را در خصوص احداث مدرسه آغاز نموده و سپس در سال 1375 با انعقاد قرارددهای با اداره کل مخابرات خراسان حوضچه های مخابراتی را که تا آن زمان از تهران با هزینه هنگفتی خریدرای و حمل می گردید تولید نمود. در سال 1378 با انعقاد قرارداد با اداره کل راه و ترابری خراسان بیش از 40 کیلومتر از جداول نیوجرسی محور مشهد- وچان تولید و ساماندهی نمود در سال 1384 اقدام به راه اندازی خط تولید بتن آماده با ماشین آلات پیشرفته نمود و با دریافت پروانه استاندارد توانست برگ زرین دیگری به کارنامه ده سال خود بیافزاید.
در پایان سال 1388 با استفاده از ماشین آلات روز اروپا تولید سنگفرش های بتنی جدوال پرسی و بلوک را آغاز نمود. و در سال 1389 با خذ تاییدیه تولیدات از دایره فنی شهرداری مشهد با انعقاد چنیدن قرارداد همکاری خود را با تعدای از شهرداری های مناطق مشهد و سایر شهرستان های استان های خراسان آغاز نمود.', null, null, null, null);
insert into [tblCustomerDesc] values(919, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 1, -1, '1392/04/16', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(920, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.paydarbeton.com', '', 'پایدار بتن', 1, 'تولید بتن آماده ، اجرای پروژهای بتنی و تولید قطعات بتنی', '', 1, -1, '1392/04/17', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(921, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.armanavizhe.com', '', 'شرکت تولیدی بازرگانی آرمان آویژه', 1, 'تولید آجرنما', '', 1, -1, '1392/04/17', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(922, 2, null, null, null, '', '/  /      ', '', '', null, null, 'محصولات ایران استون ، طی دو واکنش شیمیایی هیدراتاسیون و پلیمریزاسیون به وجود می آید. واکنش هیدراتاسیون که با هیدراته کردن سیمان ،  منشا سختی آن را فراهم میکند ، واکنش روتین شکل گیری بتن است.', null, null, 'www.irst.co', 'iranston@gmail.com', 'ایران استوان', 1, 'تولید کننده سنگهای مصنوعی و دکوراتیو تحت لیسانس روسیه', '', 1, -1, '1392/04/17', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(923, 2, null, null, null, '', '1367/01/01', '', '', null, null, '', null, null, '', 'Tall@homayesefid.com', 'شرکت تال شاهرود', 1, 'تولید کننده بلوک سقفی و سفال', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'شرکت آجر ماشینی تال در مساحتی به وسعت 10 هکتار در کیلومتر 5 جاده شاهرود به تهران احداث شده است .
شرکت تال شاهرود
در سال 1367 با پشتکار و اراده ای راسخ، با توکل به خداوند متعال و در جهت توسعه فعالیت های "گروه صنعتی مرشدی" در استان سمنان و در شهرستان شاهرود "شرکت تال" فعالیت خود را آغاز نمود.  
"شرکت تال"از مدرنترین واحدهای تولید آجرهای سفالی دیواری و سقفی در کشور بوده، همواره هدف خود را بر مشتری مداری و نوآوری در تولید نهاده و مفتخر است در حالیکه همواره انتخاب اول مشتریان منطقه خود بوده است، سهم در خور توجهی از بازار استان تهران، خراسان رضوی و خراسان شمالی را نیز در اختیار داشته و از قدرت رقابتی بسیار بالایی در صادرات محصولات خود به کشورهای عراق و افغانستان برخوردار است.
امید است در سال جدید بتوانیم کماکان منشا خدمات ارزشمندی به جامعه سازندگان ابنیه، بازرگانان و تجار کشور باشیم.', '', '', '', '1');
insert into [tblCustomerDesc] values(924, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.shirazparsbeton.com/', 'shirazparsbeton@yahoo.com', 'شرکت پارس بتن شیراز', 1, 'شرکت پارس‌بـتـــن شیراز تولید کننده انواع بلوک‌های  سیمانی سبک و سنگین و عایق ساختمانی در خدمت تولید و صنعت ساختمان کشور', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'شرکت پـارس‌بتن شیراز، تولید کننده بلوک‌های عایق با نام تجاری لیان و بلوک‌های سبک و سنگین ساختمانی با پوکه‌های معدنی و پوکه صنعتی "لیکا"  افتخار دارد با در اختیار داشتن پیشرفته‌ترین خط‌ تولید و نیروی کار متخصص و‌مدیریتِ نوین،‌ با ظرفیتِ اسمی ۴۰۰۰۰ تولید در روز وبچینگ کاملن اتوماتیک و تولید بلوک‌های همگن و با سایز یکسان و با ظریب خطای کمتر از چهاردرصد، در راستایِ سیاست‌های بهینه‌ساری مصرف انرژی و پاس‌داشتِ سرمایه ملی در احداث پروژه‌های مهم عمرانی و ساختمانی در پهنای کشور عزیزمان نقشی در خور ایفا نموده است.

گروه مشاورین پارس‌بتــن شیراز حین ساخت هر پروژه با بررسی‌های علمی و فنی، بر حسب شرایط اقلیمی و مختصات پروژه و مبحث 18 و 19 ساختمان، مناسب‌ترین محصول را برای هر ساختمان پیشنهاد کرده و ضمن تعهد به تولید بهترین محصولات، در روز و ساعت مقرر با کیفیتی برتر محصولات سفارش شده را تحویل خواهد داد. بدیهی است که این شرکت با در اختیار داشتن ناوگان حمل و نقل و کارشناسانی مجرب زمینه‌ی رفاه و تسهیل پیشرفت پروژه‌های ساختمانی را فراهم می‌آورد

شرکت پـارس‌بتن شیراز، تولید کننده بلوک‌های عایق با نام تجاری لیان و بلوک‌های سبک و سنگین ساختمانی افتخار دارد با در اختیار داشتن پیشرفته‌ترین خط‌ تولید و نیروی کار متخصص و‌مدیریتِ نوین،‌ با ظرفیتِ اسمی ۴۰۰۰۰ تولید در روز وبچینگ کاملن اتوماتیک و تولید بلوک‌های همگن و با سایز یکسان و با ظریب خطای کمتر از چهاردرصد، در راستایِ سیاست‌های بهینه‌ساری مصرف انرژی و پاس‌داشتِ سرمایه ملی در احداث پروژه‌های مهم عمرانی و ساختمانی در پهنای کشور عزیزمان نقشی در خور ایفا نموده است. از جمله‌ی این پروژه‌ها عبارت‌اند از :

- پروژه الهادی ( بیمارستان بزرگ شهرستانِ دَیر)

- تعاونی مسکن تامین اجتماعی فارس

- تعاونی مسکن نظام‌پزشکی شیراز

- هتل بزرگ کریم‌خان شیـراز

- ساختمان ASP شیراز تحت عنوان پروژه سعدی

- پارکینگ طبقاتی تحت پیمانکاری شرکت هلال ایرانیان

- شرکت فردوس‌ماشین تهران

- تعاونی مسکنِ مهر بیست‌ وهفت اهـواز

- ساختمان راه و ابنیه آلاوه- بندر ماهشـهر

- تعاونی مسکن کارکنان برق فارس

- شرکتِ راهیـاب سعادت‌شهر

- شرکت طرح و آفرینشِ ابادگرانِ دهدشــت

و هزاران پروژه‌ی شخصی و تولیدی دیگر.', '', '', '', '1');
insert into [tblCustomerDesc] values(925, 2, null, null, null, '', '1350/01/01', '', '', null, null, '', null, null, 'http://www.morshedigroup.com/', '', 'گروه صنعتی مرشدی ( هلدینگ همای سفید)', 1, '', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'گروه صنعتی مرشدی در سال 1350 با پشتکار و اراده ای راسخ و عشق به توسعه و اعتماد به تجلی و تبلور فرهنگ ایران و با توکل به خداوند متعال فعالیت خود را با مدیریت جناب آقای احمد مرشدی آغاز نمود.
اکنون مفتخریم که با 40 سال تجربه و 7 واحد صنعتی در حال حاضر در جهت کمک به صنعت ساختمان کشور گروه را هدایت نمائیم.
گروه در آغاز به منظور افزایش تولید و توسعه شبکه عرضه انواع محصولات آجر و سفال اقدام به تاسیس و راه اندازی واحدهایی به نامهای : آجر ماشینی پی دژ گرگان و آجر ماشینی تال شاهرود کرد. باتوجه به نیاز گروه شرکت سخت لایه ساز جهت ارائه خدمات فنی مهندسی در سال 1379 تاسیس گردید و در جهت تنوع محصولات سفالی شرکت های: سفال سازان مارلیک. گسترش سفالین سبزوار. لایق صنعت سمنان و صنایع سفال فتح نیز پا به عرصه تولید گذاشتند.
هدف اصلی گروه صنعتی مرشدی بهبود سطح کیفی و کمی محصولات و خدمات انحصاری مطابق با استانداردها و تکنولوژی برتر و روز دنیا بوده است. از خداوند بزرگ استعانت میجوییم تا با توجه به احترام به مشتری و رعایت کیفیت مداوم و همگام با تکنولوژی روز دنیا و بهینه سازی در صنعت ساختمان کشور همواره اولین انتخاب شما باشیم.', '', '', '', '13,2,1');
insert into [tblCustomerDesc] values(926, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, '', '', 'شرکت آجر ماشینی زرنما', 1, 'تولید کننده آجر ماشینی', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'شرکت آجر ماشینی زر نما 
کارخانه آجر زرنما در سال 1370 تاسیس و به صورت تمام توماتیک اقدام له تولبد انواع آجر نما و سفال به ابعاد مختلف بر مبنای سفارشات صادراتی نمود.
نظر به توجه دقیق مدیریت به کنترل کیفی تولید اولین کارخانه آجر است که در سال 83 موفق به نشان استاندارد گردید .
و همچنین 2008-9001 iso را دریافت نمود و جز سه کارخانه ای است که استاندارد عراق آنرا تائید نموده است .
و در حال حاضر دارای مجوز استاندارد بین المللی SGS و استاندارد مالزی می باشد .
موارد مذکور که باعث شد تولید این کارخانه به کشورهای عراق آسیای میانه و کشور مالزی صادر گردد .', '', '', '', '1');
insert into [tblCustomerDesc] values(927, 2, null, null, null, '', '1384/01/01', '', '', null, null, '', null, null, 'www.kurt.ir', 'info@kurt.ir', 'شرکت قطعه و ساختمان کرت', 1, 'تولید کننده بلوک دیواری  و قالبهای ماندگار بتن', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'شرکت قطعه و ساختمان کرت در سال 1384 خط تولید بلوکهای ICF خود را به بهره‌برداری رسانید. 

ظرفیت فاز یک کارخانه که هم اکنون به بهره برداری رسیده است،300000 متر مربع بلوک دیواری در سال می‌باشد. 

کل خط تولید تمام اتوماتیک و ساخت شرکت Kurtz در آلمان می‌باشد. 

کاهش هزینه ساخت 
در فن آوری ICF نیازی به اجرای اسکلت نمی باشد و پیرو این موضوع نیروهای متخصص و ماشین آلات لازم برای این بخش از ساخت از روند اجرای ساختمان حذف می شود.
- به دلیل شاتول بودن بدنه خارجی قالبهای ICF در اجرای نازک کاری احتیاجی به اجرای گچ و خاک وجود ندارد.
- به دلیل سبکی و سطح زیاد قالبهای ICF سفت کاری ساختمان به سرعت به اتمام می رسد که این مسئله تاثیر بسیار زیادی برروی هزینه های اجرا دارد
- با توجه به نحوه طراحی قالبهای ICF نیازی به استفاده از آرماتوربند حرفهای برای بستن آرماتور دیوارهای برشی باربروجود ندارد.

تاسیسات 

با توجه به چنین قالبهای ICF (پلی استایزن منبسط شده ) دیوارهای پیرامونی ساختمان ضریب انتقال حرارت بسیار پائین خواهند داشت که این موضوع تاثیر چشمگیری بر میزان مصرف انرژی ساختمان شد که پیرو این مطلب حجم موتورخانه ، سایزلوله ها و تعداد پره شوفاژها به میزان قابل توجهی کاهش می یابد.

سازگاری کامل با محصول

با توجه به اینکه EPS (ماده تشکیل دهنده قالبهای ICF ) فاقد گازهای CFC و HCFC در فرآیند تولید می باشد به لایه ازآسیبی وارد نمی کند.

درساختمانهای ساخته شده با فن آوری ICF انرژی کمتری صرف سرمایش و گرمایش شده که این امر از نظر زیست محیطی نکته مثبتی به حساب می آید

عدم نیاز به نیروی متخصص در اجرا
- با توجه به نحوه طراحی قالبها (قول و بست شدن داخل یک دیگر) و سبکی آنها ، قالبندی می تواند توسط نیروهای غیر متخصص انجام شود.

- محل قرارگیری آرماتورها به صورت دقیق داخل قالبها طراحی شده که این امر باعث می شود در حین اجرا نیازی به استفاده از آرماتوربند حرفه ای وجود ندارد.', '', '', '', '1');
insert into [tblCustomerDesc] values(928, 2, null, null, null, '', '1392/04/19', '', '', null, null, '', null, null, 'www.tirchehyas.com', '', 'شرکت تیرچه یاس', 1, '', '', 1, -1, '1392/04/18', 0, null, 1, '', null, null, null, null, 'شرکت تیرچه یاس تولید کننده صنعتی خر پای میلگردی
فناوری جوش مقاومتی سیستم تولید تمام اتوماتیک', '', '', '', '1');
insert into [tblCustomerDesc] values(929, 1, 'مهتاب پور', 'علی', null, null, null, null, null, null, null, 'شسی', null, null, null, null, null, null, 'شسیش', null, 1, -1, '1392/04/18', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(930, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.adakkavosh.com', 'info@adakkavosh.com', 'شرکت آداک بتن', 1, 'تولید محصولات بتنی', '', 1, -1, '1392/04/19', 0, null, 1, '', null, null, null, null, 'محصول مشترک ایران و ترکیه 
کارخانجات تولید تمام اتوماتیک انواع جدول کف پوش بلوک سبک بتنی بتن آماده', '', '', '', '1');
insert into [tblCustomerDesc] values(931, 2, null, null, null, null, null, null, null, null, null, 'استفاده از بلوک سبک یعنی : 
ابعاد بزرگتر ، وزن کمتر ، اجرای فوق سریع ، زمان کمتر ، عایق بهتر ، هزینه کمتر', null, null, null, null, 'پرشیا بلوک سبک شرکت جبل صفا', null, 'تولید کننده بلوک های سبک', null, 1, -1, '1392/04/20', 0, null, null, null, null, null, null, null, 'شرکت جبل الصفا با پشتوانه سال ها تجربه در ایران و امارات متحده عربی ، تحقیق و فعالیت در زمینه مصالح ساختمانی ، اقدام به تولید بلوک های سبک بتنی با فرمولاسیون منحصر به فرد از موادی خاص با نام تجاری پرشیا بلوک نموده است . این شرکت با استفاده و ابعاد متناسب با نیاز روز بازار تولید و عرضه می نماید.', null, null, null, null);
insert into [tblCustomerDesc] values(932, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.automaticdoors.ir', '', 'شرکت دربهای اتوماتیک پارت هومان', 1, 'درب های هوشمند', '', 1, -1, '1392/04/20', 0, null, 1, '', null, null, null, null, null, '', '', '', '');
insert into [tblCustomerDesc] values(933, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.poladishacp.com/', 'info@poladishacp.com', 'شرکت پولادیش کامپوزیت', 1, '', '', 1, -1, '1392/04/21', 0, null, 1, '', null, null, null, null, 'واحد پولادیش کامپوزیت از زیر مجموعه های گروه صنعتی پولادیش در سال 1386 در کیلومتر 22 جاده تبریز- تهران ودر زمینی به مساحت 11000 متر مربع در استان آذربایجان شرقی تاسیس گردید. موضوع شرکت تولید ورقهای آلومینیوم کامپوزیت می باشد. 
این شرکت با برخورداری از نیروی انسانی مجرب،تجهیزات منحصربه فرد تولیدی و آزمایشگاهی مدرن بزرگترین تولید کننده انواع محصولات پانل کامپوزیت در ایران به شمار می آید . شرکت پولادیش کامپوزیت که دارای 3 خط  Cleaning- Coating- Acp می باشد. توان تولید سالانه حدود یک میلیون متر مربع انواع پانلهای آلومینیوم کامپوزیت با تنوع 20 رنگ مختلف و همچنین تولید انواع کویل آلومینیوم رنگی طبق نیاز مشتریان را دارد . 
مشتریان محترم می توانند با مراجعه به لینک تماس با ما ،نظرات خود را از طریق پست یا ایمیل به آدرس شرکت ارسال نمایند.', '', '', '', '1');
insert into [tblCustomerDesc] values(934, 2, null, null, null, '', '1388/00/00', '', '', null, null, '', null, null, 'http://www.aramex-aac.com/', 'info@aramex-aac.com', 'شرکت آرامکس', 1, '', '', 1, -1, '1392/04/21', 0, null, 1, '', null, null, null, null, 'درباره ما

 آرامکس (ARAMEX ) یکی از محصولات شرکت های زیر مجموعه گروه ساختمانی جاوید بتن سبک پارسیان و گروه تجارت جاوید پارسیان می باشد که تولید کننده مصالح نوین صنعت ساختمان در زمینه بلوک های بتن سبک هوادار اتوکلاو شده و همچنین پانل های مجوف و مسلح گچی به شمار می روند . شرکت های مذکور هر یک موفق به دریافت مجوزهای لازم از اداره کل صنایع و معادن استان سمنان و دریافت تاًییدیه های لازم از مرکز تحقیقات ساختمان و مسکن گردیده اند.

عملیات اجرایی ساخت کارخانجات مذبور در زمینی به وسعت پنجاه هزار متر مربع واقع در شهرک صنعتی سمنان در اواخر سال 1388 آغاز شد و بهره برداری از این خط تولید پس از احداث حدوداً 15000 متر مربع سالن های خط تولید ، انبارهای مواد اولیه ، ساختمان اداری و رفاهی ، سوئیت های ویژه مهمانان و... و پس از نصب 1100 تن ماشین آلات و 2/1 مگا وات برق در خردادماه سال 1391 با حضور استاندار محترم و سایر مقامات استان سمنان افتتاح گردید.', '', '', '', '1');
insert into [tblCustomerDesc] values(935, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.', 'tircheh.baghestan@yahoo.com', 'تیرچه سازان باغستان', 1, 'تولید کننده انواع تیرچه های پیش ساخته استاندارد', '', 1, -1, '1392/04/21', 0, null, 1, '', null, null, null, null, '', '', '', '', '1');
insert into [tblCustomerDesc] values(936, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'صنایع فولادی عرشه کبیر ایرانیان', null, '', null, 1, -1, '1392/04/21', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(937, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.samabeton.com/', 'info@samabeton.com', 'شرکت سما بتون اسپادانا', 1, 'تولید کننده بتن و سازه های سبک بتنی', '', 1, -1, '1392/04/21', 0, null, 1, '', null, null, null, null, 'شرکت سما بتن اسپادانا
تولیدکننده بلوک سبک دیواری', '', '', '', '1');
insert into [tblCustomerDesc] values(938, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, 'شرکت ایتالران', null, 'توليدكننده انواع مصالح ساختماني سفالي مجوف و تيرچه پيش ساخته', null, 1, -1, '1392/04/22', 0, null, null, null, null, null, null, null, 'شركت ايتالران (سهامي عام) اولين توليدكننده انواع مصالح ساختماني سفالي مجوف و تيرچه پيش ساخته بتوني با علامت استاندارد در ايران مي باشد كه بعنوان شركت پيشرو صنعت ورهبري بازار سعي دارد همواره نقش خود را در صنعت ساختمان به نحو احسن انجام دهد .

شــركت ايتــالران (سهامي عام) به عنـوان اولين شــركت صنعت آجرسفالي ايران از سال 1370 در عداد شركت هاي پذيرفته شده در بورس اوراق بهادار تهران قرارگرفته و سهام آن از تاريخ مذكور در تالارهاي بورس ايران معامله می شود
ماموريت:
توليد انواع مصالح ساختماني سفالي و بتوني سبك با بهره گيري از تكنولوژي روزو خلاقيت و ابتكار نيروي انساني توانمند براي بازارهاي داخلي و خارجي همسايه در جهت توسعه صنعتي شدن ساختمان سازي و نيل به سودآوري مناسب .


عناصر سازمانی:
1-     مسئوليت پذيري در جامعه

2-     مشتري محوري

3-     منابع انساني به عنوان ارزشمندترين دارائي شركت

4- حفظ منافع سهامداران', null, null, null, null);
insert into [tblCustomerDesc] values(939, 2, null, 'qqqq', null, '', '1392/04/22', '', '', null, null, 'asdasdas', null, null, '', '', '123123', 1, 'asdasd', '', 1, null, null, 0, null, 1, '', null, null, null, null, '', null, null, '', '');
insert into [tblCustomerDesc] values(940, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.harish.ir', 'info@harish.ir', 'درب اتوماتیک هنر الکترونیک شرق', 1, 'درب اتوماتیک تلسکوبی', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'گروهي از مهندسين ايراني، با بيش از 15 سال تجربه در زمينه هاي الکترونيک کامپيوتر و مکانيک در شرکت هنرالکترونيک شرق گردهم جمع شدند تا به پشتوانه توان فني خود محصولاتي را طراحي و توليد نمايند که تا کنون نمونه داخلي آن وجود نداشته است. اين محصولات با نام تجاري harish با قابليت هاي منحصر بفرد و با نگاه به بازارهاي خارجي توليد و عرضه مي شوند. هدف اصلي شرکت ضمن خودکفايي کشور در زمينه محصولات توليدي خود اعتبار بخشيدن به نام صنعت ايران در بازارهاي جهاني مي باشد.', '', '', '', '');
insert into [tblCustomerDesc] values(941, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'www.pantaco.co', 'info@pantaco.co', 'پویا نوین بتن ایرانیان', 1, 'تولید کننده انواع مواد افزودنی بتن', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'شرکت پنتا (پویا نوین بتن ایرانیان) فعال در زمینه تولید و تامین مواد افزودنی بتن و مواد شيميائي ساختمانی در پروژه‌های زیربنایی و سازه های عمرانی کشور بوده . پنتا پیشرو و فعال در فناوری بتن و دارای استاندارد ایزو 9002 مي باشد. که تمامی محصولات خود را مطابق با استانداردهای ملی و بین المللی و با رعایت کلیه نکات کیفی تولید و عرضه میکند. سیاستهای اولیه تحقیقاتی شرکت پنتا در افزودنی بتن و مواد افزودنی بتن نو آوری و فن آوری در مواد افزودنی بتن روان کننده های بتن و فوق روان سازها بتن و مواد دیر گیر و ژل میکروسیلس میباشد. این شرکت در راستای تحقیقات خود دست آوردهایی در زمینه افزودنی های بتن و روانساز بتن ژل میکروسیلیس و کلاس های مکمل بتن و رنگ بتن داشته است. همچنین شرکت پویا نوین بتن ایرانیان بجز فعالیت در زمینه ژل میکروسیلیس و فوق روان کننده های بتن نسل جدید که بر پایه پلی کربوکسیلات در زمینه مشاوره تولید تامین فروش انواع گروت سیمانی , گروت اپوکسی, کف سازی,ملات, بتن آب بند و آب بند کننده, بتن ناتراوا و مخزن بتنی, بتن الیافی ,بتن حجیم , بتن ضد سایش , بتن خود تراز, روغن قالب بتن, شات کریت و مواد افزودنی برای پمپ شاتکریت , بتن پاششی, زود گیر بتن , ضدیخ بتن و بتن ریزی در هوای سرد, رنگ بتن, کیورینگ بتن ,کوتینگ , بتن پیش تنیده ،رنگ بتن ، چسب بتن ،چسب کاشی ، و مواد افزودنی برای پمپ تزریق بتن فعال بوده است. رویکرد چند وجهی ما به علم مواد افزودنی بتن, موجب رابطه طولانی مدت و بادوام با تولید کنندگان، طراحان و پیمانکاران با دانش برای ساخت سازه های بتنی کرده است. همچنین پنتا با ارائه محصولات نوآورانه خود و خدمات جدید به مشتریان به صورت مستمر در زمینه روان کننده های بتن ,  ژل میکروسیلس,  گروت ،  ضدیخ بتن , بتنهای ویژه چون بتن الیافی بتن حجیم بتن پیش تنیده بتن آب بند و دیگر مواد افزودنی بتن موجب شناخته شدن این شرکت به عنوان مجموعه ای متعهد در کیفیت شده است.', '', '', '', '');
insert into [tblCustomerDesc] values(942, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.absharfoam.ir/', 'absharfoamgostar@yahoo.com', 'شرکت آبشار فوم گستر', 1, '', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'بلوک های سقفی سبک ،ديوار آبشار فوم گستر ، فوم محافظ آبشار فوم کلمات کلیدی : نمایشگاه ساختمان ، سقف و دیوار ، عایق حرارتی و رطوبتی ، بلوک های سقفی سبک آبشار ،ديوار آبشار فوم گستر ، فوم محافظ آبشار فوم ، ليوان و ظرف يکبارمصرف بهداشتی آبشار فوم گستر iran architects', '', '', '', '1');
insert into [tblCustomerDesc] values(943, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.omidfoamplast.com/', 'support@omidfoamplast.com', 'شرکت تولیدی صنعتی امید فوم پلاست', 1, '', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'شرکت امیدفوم پلاست تولیدکننده بلوکهای سقفی پلی استایرن دیوارهای پیش ساخته 3D پانل و ورقهای یونولیت با ضخامت های متفاوت می باشد و همچنین ورقهای مش با چشمه های مختلف که در امر ساخت وساز یکی از نو آورین این صنعت بشمار می آید.

کارایی محصول: در این کارخانه بلوکهای سقفی با ضخامت های متفاوت واندازه های مختلف تولید می شود که در امر سبک سازی و عایق سازی سقف نقش به سزایی را ایفا می کند هم چنین از دیگر محصولات این شرکت دیوارهای پیش ساخته 3D پانل می باشد که با توجه به گرانی هزینه انرژی و اهم قرار دادن سبک سازی و سرعت بالای اجرا در ساختمان مورد توجه بسیاری از مهندسین ساختمان قرار گرفته است.محصول دیگر این شرکت ورقهای یونولیت می باشد که موارد استفاده متعدد از قبیل عایق کاری وغیره... را دارا میباشد.
سابقه کاری: شرکت امیدفوم پلاست جزء اولین تولید کننده بلوکهای سقفی و دیوارهای پیش ساخته و 3D پانل و ورقهای یونولیتی میباشد که همگام با تکنولوژی روز دنیا مبادرت به تولید مصالح ساختمانی عایق و سبک کرده و در این امر جزء شرکتهای نوآور و به روز در کشور عزیزمان میباشد.', '', '', '', '1');
insert into [tblCustomerDesc] values(944, 2, null, null, null, '', '/  /      ', '', '', null, null, '', null, null, 'http://www.nanopush.net/', 'info@nanopush.net', 'صنایع شیمی ساختمان نانو پوش', 1, '', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'مدیریت صنایع شیمی ساختمان نانوپوش بعد از چندین سال کار و فعالیت در صنعت افزودنیهای بتن به عنوان مشاور فنی و مدیر فروش ، از سال 1386 به علت رویت ضعف هایی که در بحث آب بندی در کشور وجود داشت تصمیم به تاسیس و احداث کارخانه ، اخذ مجوز تولید به شماره 60/535-393 و به علت نزدیک بودن به کشور ترکیه ، تسلط داشتن بر واردات آغاز به همکاری با شركت آلمانی در مورد تامین محصولات آب بندی بر پایه نانو کار خود را با تمرکز بر انواع محصولات آب بندی و مقاوم کننده سازه ها آغاز کرد.
 
 
اين موسـسه با کسب استاندارد و گواهینامه های iso 9001:2008 کنترل کیفیت به شماره ثبت 4021070 ، iso 10002:2004 رضايتمندی مشتری به شماره ثبت 115387 ، iso 14001 محیط زیست به شماره ثبت 4147511 به دفتر مرکزی Audit People واقع در شهر Eastbourne انگلستان با اعتبار ASCB ، گواهی صلاحیت حرفه ای ( تولید چسب های ساختمانی و درزگیر ) به شماره ثبت 30287 ، تـکيه بر اعتماد مشـتريان ، کيـفيت بالاي محصولات با استانداردهاي جهاني ، دقت در مديريت تيم هاي اجرايي ، ارائه آموزش هاي مستمر براي اکيپ هاي اجرايي ، انتقال و دريافت تجربيات في ما بين مديران پروژه ها ، موجب ارتقاء دانش فني تيم ها و بهبود عمليات اجرايي در پروژه هاي دولتي و خصوصي گردید.
 
 
اينک در مدت کوتاه يکي از پيشروان صنعت نوين ساختمان با سابقه اي درخشان و افتخاري بزرگ به عنوان بعنوان تولید کننده ، تامین کننده و مرکز پخش و فروش انحصاری محصولات NANOPUSH در داشتن سهمي  کوچک در صنايع کشور، کشورآذربایجان وکردستان عراق با مجموعه اي متنوع و کم نظير از تکنولوژي روز ، نامي مطمئن و قابل اعتماد در تأمين نيازهاي شما می باشد.', '', '', '', '1');
insert into [tblCustomerDesc] values(945, 2, null, null, null, null, null, null, null, null, null, '', null, null, null, null, '', null, '', null, 2, -1, '1392/04/22', 0, null, null, null, null, null, null, null, null, null, null, null, null);
insert into [tblCustomerDesc] values(946, 2, null, null, null, '', '1386/00/00', '', '', null, null, '', null, null, 'http://www.kianpanel.ir/', 'info@kianpanel.ir', 'شرکت کیان پنل', 1, 'پانل های سقفی و دیواری
فلاشینگ
کانکس
ساختمان های پیش ساخته
طراحی ،اجرا و مشاوره فضاهای صنعتی', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'درباره شرکت کیان پنل
شرکت قطعات پیش ساخته فلزی کیان با بهره مندی از مدرنترین تکنولوژی تولید پانل تحت استانداردهای روز اروپا در سال 1383 در زمینی به مساحت 50/000 متر مربع و سالن تولیدی بالغ بر 6/000 متر مربع تاسیس گردید. شرکت کیان در مهر ماه 1386 در زمینه تولید پانل های سقفی و دیواری صنعتی به بهره برداری رسید و از همان آغاز اقدام به اخذ گواهینامه ISO 9001:2008 بر پایه دو اصل کیفیت و صداقت کرده و در سال 1388 موفق به اخذ این گواهینامه از شرکت TUV آلمان گردید.', '', '', '', '1');
insert into [tblCustomerDesc] values(947, 2, null, null, null, '', '1352/01/01', '', '', null, null, '', null, null, 'http://www.ajorsoufalin.ir/', 'info@www.ajorsoufalin.ir', 'شرکت آجر سوفالین', 1, '', '', 1, -1, '1392/04/22', 0, null, 1, '', null, null, null, null, 'مقدمه و معرفی شرکت
شرکت تولیدی آجر سوفالین در سال ۱۳۵۲ در نزدیکی تهران به بهره برداری رسید. 
شرکت دارای دو خط تولید با ظرفیتی معادل هفتصد هزار قالب آجر نما مجموعا در روز می‌باشد. تکنولوژی و ماشین آلات از شرکت‌های معتبر هندله، کلر و ترمو آلمان از پیشتازان این صنعت در دنیا می‌باشد. شرکت آجر سوفالین از شرکت‌های پیشرو و بسیار با تجربه در صنعت سوفال ایران بوده و مدیریت و پرسنل فعال و با تجربه شرکت از بهترین‌های صنعت می‌باشند.
فرآیند تولید در شرکت
شرکت تولیدی آجر سوفالین با در اختیار داشتن بهترین مواد اولیه، ماشین آلات، تکنولوژی و دانش فنی کارآمد قادر به تولید انواع سوفال ماشینی با کیفیت بالا می‌باشد. 
فرآیند تامین خاک مرغوب و مناسب در سیلو‌ها، سپس عمل آوری آن در سری ماشین آلات، سپس ورود به ماشین آلات فرم دهی و پرس، خشت خام درجه یک به دست آمده، سپس دریکصد خشک کن مدرن و گازسوز شرکت در زمان معین تبدیل به خشت خشک شده و پس از آن مرحله پخت در کوره‌های هوفمن ۳۶ قمیر شرکت در زمان مناسب با کیفیت عالی برای دوام بالای سوفال صورت می‌گیرد. کلیه مراحل تولید توسط پرسنل مجرب و کار آزموده به نحو احسن انجام می‌گیرد تا محصولی با کیفیت عرضه گردد.', '', '', '', '1');
insert into [tblCustomerDesc] values(948, 2, null, null, null, 'ایران - استان گلستان - گرگان', '1387/06/09', '6775', '', null, null, '', null, null, 'www.', 'otatari@yahoo.com', 'مشبک سازه پرشیا', 1, 'توليد ديوار هاي پيش ساخته', '', 1, -1, '1392/04/23', 0, null, 1, '', null, null, null, null, 'شركت در تاريخ 09/06/1387 شماره 6775 در اداره ثبت شركتهاي شهرستان گرگان به ثبت و در تاريخ 16/06/1387موفق به اخذ جواز تاسيس به شماره 8254/2/128 از وزارت صنايع و معادن گرديد ودر تاريخ 06/12/1391 موفق به اخذ كارت بازرگاني به شماره 601053 مي باشد و در زمينه توليد ديوار هاي پيش ساخته و واردات خودرو فعاليت دارد.', '', '', '', '1');


/* Table structure [tblProdGrpDesc] */
CREATE TABLE [tblProdGrpDesc] (
  [GrpID] integer NOT NULL PRIMARY KEY, 
  [GrpParentID] integer, 
  [GrpPath] nvarchar(50) COLLATE NOCASE, 
  [GrpName] nvarchar(50) COLLATE NOCASE, 
  [GrpDesc] nvarchar(150) COLLATE NOCASE, 
  [SortID] integer, 
  [ImageUrl] nvarchar(1024) COLLATE NOCASE, 
  [LogoUrl] nvarchar(1024) COLLATE NOCASE);

/* Data [tblProdGrpDesc] */
insert into [tblProdGrpDesc] values(2, -1, '2', 'سيمان', ' انواع سيمان‌هاي پاكتي و فله', 3, 'Category/2/2.png', 'Category/2/2_logo.png');
insert into [tblProdGrpDesc] values(4, 2, '2-4', 'فله‌اي', 'انواع سيمان كه با بونكر حمل مي‌شود.', 5, 'Category/4/4.png', 'Category/4/4_logo.png');
insert into [tblProdGrpDesc] values(5, 2, '2-5', 'كيسه‌اي', ' انواع سيمان‌هاي كيسه‌اي پاكتي و نايلوني', 4, 'Category/5/5.png', 'Category/5/5_logo.png');
insert into [tblProdGrpDesc] values(6, -1, '6', 'سفال', 'انواع سفال سقف و ديوار', 6, 'Category/6/6.png', 'Category/6/6_logo.png');
insert into [tblProdGrpDesc] values(7, -1, '7', 'گچ', 'انواع گچ سفيدكاري و گچ و خاك', 7, 'Category/7/7.png', 'Category/7/7_logo.png');
insert into [tblProdGrpDesc] values(8, 6, '6-8', 'تيغه', 'انواع تيغه‌هاي ديواري', 8, 'Category/8/8.png', 'Category/8/8_logo.png');
insert into [tblProdGrpDesc] values(9, 6, '6-9', 'سقف', 'انواي تيغه‌هاي سقفي', 9, 'Category/9/9.png', 'Category/9/9_logo.png');
insert into [tblProdGrpDesc] values(10, -1, '10', 'بلوك', 'انواع بلوك سقف و ديوار', 10, 'Category/10/10.png', 'Category/10/10_logo.png');
insert into [tblProdGrpDesc] values(11, 10, '10-11', 'تيغه', 'انواع بلوك‌هاي تيغه‌اي ديوار', 11, 'Category/11/11.png', 'Category/11/11_logo.png');
insert into [tblProdGrpDesc] values(12, 10, '10-12', 'سقف', 'انواع بلوك‌هاي سقفي', 12, 'Category/12/12.png', 'Category/12/12_logo.png');
insert into [tblProdGrpDesc] values(13, -1, '13', 'آجر', 'انواع آجر نما و فشاري', 13, 'Category/13/13.png', 'Category/13/13_logo.png');
insert into [tblProdGrpDesc] values(14, 13, '13-14', 'نما', 'انواع آجر نما', 14, 'Category/14/14.png', 'Category/14/14_logo.png');
insert into [tblProdGrpDesc] values(15, 13, '13-15', 'فشاري', 'انواع آجر فشاري', 15, 'Category/15/15.png', 'Category/15/15_logo.png');
insert into [tblProdGrpDesc] values(16, -1, '16', 'پوكه', 'انواع پوكه معدني و صنعتي', 16, 'Category/16/16.png', 'Category/16/16_logo.png');
insert into [tblProdGrpDesc] values(17, 16, '16-17', 'معدني', 'انواع پوكه معدني', 17, 'Category/17/17.png', 'Category/17/17_logo.png');
insert into [tblProdGrpDesc] values(18, 16, '16-18', 'صنعتي', 'انواع پوكه صنعتي', 18, 'Category/18/18.png', 'Category/18/18_logo.png');
insert into [tblProdGrpDesc] values(19, -1, '19', 'يونوليت', 'انواع يونوليت سقف و ديوار', 19, null, null);
insert into [tblProdGrpDesc] values(20, 19, '19-20', 'سقف', 'انواع يونوليت سقفي', 20, 'Category/20/20.png', 'Category/20/20_logo.png');
insert into [tblProdGrpDesc] values(21, 19, '19-21', 'پانل‌ديواري3D PANEL', 'انواع يونوليت‌هاي مشبك ديوار', 21, 'Category/21/21.png', 'Category/21/21_logo.png');
insert into [tblProdGrpDesc] values(22, -1, '22', 'تيرچه', 'انواع تيرچه بتني و فلزي', 22, 'Category/22/22.png', 'Category/22/22_logo.png');
insert into [tblProdGrpDesc] values(23, 22, '22-23', 'بتني', 'انواع تيرچه بتني', 23, 'Category/23/23.png', 'Category/23/23_logo.png');
insert into [tblProdGrpDesc] values(24, 22, '22-24', 'فلزي', 'انواع تيرچه فلزي', 24, 'Category/24/24.png', 'Category/24/24_logo.png');
insert into [tblProdGrpDesc] values(25, -1, '25', 'آهن‌آلات', 'انواع آهن‌آلات ساختماني', 25, 'Category/25/25.png', 'Category/25/25_logo.png');
insert into [tblProdGrpDesc] values(26, 25, '25-26', 'تيرآهن', 'انواع تيرآهن ساختماني', 26, 'Category/26/26.png', 'Category/26/26_logo.png');
insert into [tblProdGrpDesc] values(27, 25, '25-27', 'نبشي', 'انواع نبشي', 27, 'Category/27/27.png', 'Category/27/27_logo.png');
insert into [tblProdGrpDesc] values(28, 25, '25-28', 'ناوداني', 'انواع ناوداني ساختماني', 28, 'Category/28/28.png', 'Category/28/28_logo.png');
insert into [tblProdGrpDesc] values(29, 25, '25-29', 'قوطي', 'انواع قوطي ساختماني', 29, 'Category/29/29.png', 'Category/29/29_logo.png');
insert into [tblProdGrpDesc] values(30, 25, '25-30', 'ورق', 'انواع ورق فولادي', 30, null, null);
insert into [tblProdGrpDesc] values(31, 25, '25-31', 'ميلگرد', 'انواع ميلگرد ساختماني', 31, 'Category/31/31.png', 'Category/31/31_logo.png');
insert into [tblProdGrpDesc] values(32, -1, '32', 'شن و ماسه', 'انواع شن و ماسه ساختماني', 32, 'Category/32/32.png', 'Category/32/32_logo.png');
insert into [tblProdGrpDesc] values(33, -1, '33', 'بتن آماده', 'انواع بتن آماده', 34, 'Category/33/33.png', 'Category/33/33_logo.png');
insert into [tblProdGrpDesc] values(34, -1, '34', 'موزائيك', 'انواع موزائيك', 33, 'Category/34/34.png', 'Category/34/34_logo.png');
insert into [tblProdGrpDesc] values(35, -1, '35', 'ديوار گچي', 'انواع ديوار گچي', 35, 'Category/35/35.png', 'Category/35/35_logo.png');
insert into [tblProdGrpDesc] values(36, 6, '6-36', 'فوندوله', '', 36, 'Category/36/36.png', 'Category/36/36_logo.png');
insert into [tblProdGrpDesc] values(37, -1, '37', 'متفرقه', '', 37, null, null);
insert into [tblProdGrpDesc] values(38, -1, '38', 'درب', '', 38, null, null);
insert into [tblProdGrpDesc] values(39, 2, '2-39', 'صادراتی', '', 39, 'Category/39/39.png', 'Category/39/39_logo.png');


/* Table structure [tblProductDesc] */
CREATE TABLE [tblProductDesc] (
  [ProdID] integer NOT NULL PRIMARY KEY, 
  [ProdName] nvarchar(150) COLLATE NOCASE, 
  [ProdGrpID] integer REFERENCES [tblProdGrpDesc]([GrpID]), 
  [IranCode] char(10) COLLATE NOCASE, 
  [ProdState] integer, 
  [ProdBarcode] nvarchar(50) COLLATE NOCASE, 
  [CreateDate] char(10) COLLATE NOCASE, 
  [ProdShortName] nvarchar(50) COLLATE NOCASE, 
  [ProdComment] nvarchar(250) COLLATE NOCASE, 
  [UserID] integer, 
  [BrandID] integer, 
  [TolidiID] integer, 
  [CountryID] integer, 
  [ProdInfoComment] nvarchar COLLATE NOCASE, 
  [SupplierID] integer, 
  [ThumbImage] nvarchar(1024) COLLATE NOCASE, 
  [MediumImage] nvarchar(1024) COLLATE NOCASE, 
  [ActualImage] nvarchar(1024) COLLATE NOCASE);

/* Data [tblProductDesc] */
insert into [tblProductDesc] values(16, 'سفال تیغه 25×20×10', 8, '          ', 1, '', '1391/12/22', 'سفال تیغه 25×20×10', '', 1, 2, 1, 1, null, 111, 'Product/16/16_thumb.png', 'Product/16/16_medium.png', 'Product/16/16.png');
insert into [tblProductDesc] values(17, 'کالای 1', 11, '1300211   ', 1, '1230002221', '1392/02/22', 'کالای 1', '', 1, 1, 1, 1, null, 22, null, null, null);
insert into [tblProductDesc] values(18, 'ایزوگام', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(19, 'آجر نسوز', 14, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(20, 'بلوک AAC', 10, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/20/20_thumb.png', 'Product/20/20_medium.png', 'Product/20/20.png');
insert into [tblProductDesc] values(21, 'بلوک CLc', 10, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/21/21_thumb.png', 'Product/21/21_medium.png', 'Product/21/21.png');
insert into [tblProductDesc] values(22, 'بلوک شیشه ای ( موجی شفاف رنگی) ', 14, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, '

ابعاد: 190*190
وزن: 2.3کیلوگرم در متر مربع
محصول : اسپانیا-فرانسه-چین-ایران
مقاومت فشاری: 10نیوتن بر مترمربع
مقاومت در برابر ضربه: متوسط
جنس: شیشه
قابلیت شستشو: دارد
', 743, 'Product/22/22_thumb.png', 'Product/22/22_medium.png', 'Product/22/22.png');
insert into [tblProductDesc] values(23, 'بلوک شیشه ای ( موجی مات بیرنگ) ', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, 'ابعاد: 80*190*190
وزن: 2.3کیلوگرم در متر مربع
محصول : اسپانیا-فرانسه-چین-ایران
مقاومت فشاری: 10نیوتن بر مترمربع
مقاومت در برابر ضربه: متوسط
جنس: شیشه
قابلیت شستشو: دارد
', 743, 'Product/23/23_thumb.png', 'Product/23/23_medium.png', 'Product/23/23.png');
insert into [tblProductDesc] values(24, 'بلوک شیشه ای ( موجی مات رنگی) ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, 'ابعاد 80*190*190:
وزن: 2.3کیلوگرم در متر مربع
محصول : اسپانیا-فرانسه-چین-ایران
مقاومت فشاری: 10نیوتن بر مترمربع
مقاومت در برابر ضربه: متوسط
جنس: شیشه
قابلیت شستشو: دارد
', 743, 'Product/24/24_thumb.png', 'Product/24/24_medium.png', 'Product/24/24.png');
insert into [tblProductDesc] values(25, 'پارکت', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/25/25_thumb.png', 'Product/25/25_medium.png', 'Product/25/25.png');
insert into [tblProductDesc] values(26, 'پانل دکوراتیو ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, 'تنوع رنگ:دارد 

ابعاد : 230*130
', 743, null, null, null);
insert into [tblProductDesc] values(27, 'چوب پلاستیک', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(28, 'درب ضد سرقت', 38, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, 'تنوع رنگ: استاتیک
مدل : دارای قابلیت تعویضmdf رویه
ابعاد : 210*115
', 743, 'Product/28/28_thumb.png', 'Product/28/28_medium.png', 'Product/28/28.png');
insert into [tblProductDesc] values(29, 'درب های چوبی با روکش MDF', 38, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/29/29_thumb.png', 'Product/29/29_medium.png', 'Product/29/29.png');
insert into [tblProductDesc] values(30, 'دربهای کابینتی کلاسیک', 38, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(31, 'دربهای کابینتی کلاسیک', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/31/31_thumb.png', 'Product/31/31_medium.png', 'Product/31/31.png');
insert into [tblProductDesc] values(32, 'دربهای چوبی معمولی با روکش MDF', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, 'Product/32/32_thumb.png', 'Product/32/32_medium.png', 'Product/32/32.png');
insert into [tblProductDesc] values(33, 'رنگ مولتی کالر ', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, 'Product/33/33_thumb.png', 'Product/33/33_medium.png', 'Product/33/33.png');
insert into [tblProductDesc] values(34, 'روشویی اگرا درجه یک  ', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, 'Product/34/34_thumb.png', 'Product/34/34_medium.png', 'Product/34/34.png');
insert into [tblProductDesc] values(35, 'روشویی تینا درجه یک ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/35/35_thumb.png', 'Product/35/35_medium.png', 'Product/35/35.png');
insert into [tblProductDesc] values(36, 'سرامیک گوچیا', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, 'Product/36/36_thumb.png', 'Product/36/36_medium.png', 'Product/36/36.png');
insert into [tblProductDesc] values(37, 'سقف باریسول  کشسان ( باریسول به شکل حجمی یا قوسی شیپوری و یا نیم گرد)', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(38, 'سقف باریسول کشسان( باریسول چهارضلعی بصورت قوسی و یا مدور بازیر سازی خاص', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(39, 'سقف کاذب (باریسول کشسان ) ', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, 1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(40, 'سقف کشسان باریسول(باریسول بصورت چهارضلعی منظم', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(41, 'سنگ توالت 18آریس درجه یک ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, 1, 1, null, 743, 'Product/41/41_thumb.png', 'Product/41/41_medium.png', 'Product/41/41.png');
insert into [tblProductDesc] values(42, 'سنگ توالت درجه یک بیتا ', 37, '          ', 0, '', '1392/03/05', '', '', 1, 1, -1, 1, null, 743, 'Product/42/42_thumb.png', 'Product/42/42_medium.png', 'Product/42/42.png');
insert into [tblProductDesc] values(43, 'سنگ تیفانی (روشویی تک کاسه ) ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, 'تنوع رنگ:در انواع طرح ها و رنگ های مختلف
ابعاد : 50*90
', 743, 'Product/43/43_thumb.png', 'Product/43/43_medium.png', 'Product/43/43.png');
insert into [tblProductDesc] values(44, 'سنگ تیفانی (کانتر آشپزخانه) ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, 'تنوع رنگ: در انواع رنگها و طرح ها 
ابعاد : به ضخامت سانت هر متر طول ( عرض 60 سانتی متر)
', 743, null, null, null);
insert into [tblProductDesc] values(45, 'سیمان سیستان ', 5, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, 'Product/45/45_thumb.png', 'Product/45/45_medium.png', 'Product/45/45.png');
insert into [tblProductDesc] values(46, 'قفل دیجیتال  ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, null, null, null);
insert into [tblProductDesc] values(47, 'کاشی یزد ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, 'Product/47/47_thumb.png', 'Product/47/47_medium.png', 'Product/47/47.png');
insert into [tblProductDesc] values(48, 'کاغذ دیواری ایرانی ', 37, '          ', 0, '', '1392/03/05', '', '', 1, -1, -1, 1, null, 743, 'Product/48/48_thumb.png', 'Product/48/48_medium.png', 'Product/48/48.png');
insert into [tblProductDesc] values(49, 'ورق  pvc  معمولی   ', 18, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/49/49_thumb.png', 'Product/49/49_medium.png', 'Product/49/49.png');
insert into [tblProductDesc] values(50, 'ورق pvc  روکش دار  ', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/50/50_thumb.png', 'Product/50/50_medium.png', 'Product/50/50.png');
insert into [tblProductDesc] values(51, 'ورق ویو شده طرح کوبیسم (اربیت)', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/51/51_thumb.png', 'Product/51/51_medium.png', 'Product/51/51.png');
insert into [tblProductDesc] values(52, 'ورق ویو شده طرح کوبیسم ( النا )', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/52/52_thumb.png', 'Product/52/52_medium.png', 'Product/52/52.png');
insert into [tblProductDesc] values(53, 'ورق ویو شده طرح کوبیسم کارپت و کاپریس', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/53/53_thumb.png', 'Product/53/53_medium.png', 'Product/53/53.png');
insert into [tblProductDesc] values(54, 'ورق های ویو شده طرح کوبیسم (کورتز )', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/54/54_thumb.png', 'Product/54/54_medium.png', 'Product/54/54.png');
insert into [tblProductDesc] values(55, 'ورق ویو شده طرح کوبیسم بهار و زمستان ', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/55/55_thumb.png', 'Product/55/55_medium.png', 'Product/55/55.png');
insert into [tblProductDesc] values(56, 'ورق ویو شده طرح کوبیسم کرولا', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 743, 'Product/56/56_thumb.png', 'Product/56/56_medium.png', 'Product/56/56.png');
insert into [tblProductDesc] values(57, 'آجر پلاک', 13, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 744, 'Product/57/57_thumb.png', 'Product/57/57_medium.png', 'Product/57/57.png');
insert into [tblProductDesc] values(58, 'آجر سفال نما', 13, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, 'ابعاد :  5.5*10*21
وزن مخصوص 1100  :گرم
مقاومت دربرابر بخبندان : 2%
ضریب جذب آب :18%

مشخصات تکمیلی کالا :
آجر سفال نگین
مالیات بر ارزش افزوده : 
هزینه حمل و نقل: بر عهده فروشنده
مدت تحویل کالا پس از سفارش 36:الی 48 ساعت
خدمات پس از فروش: کمک در تخلیه/پرداخت کرایه توسط پرسنل شرکت/دریافت چک طی 
', 744, 'Product/58/58_thumb.png', 'Product/58/58_medium.png', 'Product/58/58.png');
insert into [tblProductDesc] values(59, 'سفال عایقدار', 9, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, 'ابعاد 15*20*25 :
مقاومت فشاري:   49
مقاومت سايشي:   6%
چگالي:   18%
ضريب انتقال حرارت rw=45db: ایزو717
مقاومت در برابر عبور صدا rw=45db: ایزو717
جذب آب 18%:  


مشخصات تکمیلی کالا :
مالیات بر ارزش افزوده : 
هزینه حمل و نقل: بر عهده فروشنده
مدت تحویل کالا پس از سفارش 36 : الی 48 ساعت
خدمات پس از فروش: کمک در تخلیه/پرداخت کرایه توسط پرسنل شرکت/دریافت چک طی 

بلوک هایی برای جداکردن و مسدود کردن یک فضا باپوشش های عایقی مناسب صدا وحرارت.
ویزگیها:شوره نمیزند. نفت پخت است. استحکام و وزن بسیار سبک دارد.
پروژه های بزرگ کشور: برج باران واقع در خیابان هاشمیه- بیمه تامین اجتماعی هتل پارس- صداوسیما و.....

آجرخوب باید در برخوردبا آجر دیگر صدای زنگ بدهد.صدای زنگ نشانه سلامت توپری و مقاومت وکمی میزان جذب آب آن است آجرخوب باید درآتش سوزی مقاومت کند و خمیر و آب نشود.رنگ آجرخوب باید یکنواخت باشد.سختی آجرباید به اندازه ای باشد که باناخن خط نیفتد.
پروژه های بزرگ کشور: فرودگاه و ترمینال مشهد
برج تجاری و اداری سلمان واقع در چهارراه سلمان
پروژه سارا و ایمان بلوار وحدت
', 744, 'Product/59/59_thumb.png', 'Product/59/59_medium.png', 'Product/59/59.png');
insert into [tblProductDesc] values(60, 'سفال سقفی', 9, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, 'ابعاد :  20*25*60
مقاومت فشاري 49 :
مقاومت سايشي : 6%
چگالي 18% :
ضريب انتقال حرارت :  rw=45dbایزو717
ضريب جمع شدگي:0
مقاومت در برابر عبور صدا rw=45db :ایزو717
جذب آب : 18%
ابعاد(ارتفاع*طول*عرض)بر حسب سانتیمتر (40*20*20) :و(40*25*20)و(60*25*20)
', 744, 'Product/60/60_thumb.png', 'Product/60/60_medium.png', 'Product/60/60.png');
insert into [tblProductDesc] values(61, 'سفال دیواری', 8, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, 'ابعاد 8/5*19*19 :
مقاومت فشاري : 49
مقاومت سايشي : 6%
چگالي 18% :
ضريب انتقال حرارت rw=45db : ایزو717
مقاومت در برابر عبور صدا rw=45db : ایزو717
جذب آب : 18%
مقاومت یخ زدگی : 2%
جذب آب : 18% 



مشخصات تکمیلی کالا :
مالیات بر ارزش افزوده : 
هزینه حمل و نقل: بر عهده فروشنده
مدت تحویل کالا پس از سفارش: 36 الی 48 ساعت
خدمات پس از فروش: کمک در تخلیه/پرداخت کرایه توسط پرسنل شرکت/دریافت چک طی 

سفال به عنوان پرکننده دیوار و سقف از جمله پرمصرفترین مصالح میباشد.زیبایی سفال باعث شده است که به صورت نما در داخل و خارج بنا مورد استفاده قرار گیرد و هویت خاصی به ساختمان ببخشد.
پروژه های بزرگ عمرانی کشور: ساختمان پروژه کل برق الهیه واقع در ابتدای جاده شاندیز- 
پروژه (AC1)میدان شهدا-
 هتل نرگس1و2 بلوار وحدت و...... 
', 744, 'Product/61/61_thumb.png', 'Product/61/61_medium.png', 'Product/61/61.png');
insert into [tblProductDesc] values(62, 'واش بتن ', 37, '          ', 0, '', '1392/03/06', '', '', 1, -1, -1, 1, null, 746, 'Product/62/62_thumb.png', 'Product/62/62_medium.png', 'Product/62/62.png');
insert into [tblProductDesc] values(63, 'انواع جدول', 37, '          ', 0, '', '1392/03/07', '', '', 1, 1, -1, 1, 'انواع جدول هخامنش سرباز/فروهر(50*35) شیاری(50*12/20*50/25*50) هلالی وگنبدی(50*30)
صخره ای (50*70)                          ////  بزودی خط پرسی راه اندازی خواهد شد////.
', 746, 'Product/63/63_thumb.png', 'Product/63/63_medium.png', 'Product/63/63.png');
insert into [tblProductDesc] values(64, 'دور درختی واش بتن', 37, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, 'دوردرختی واش بتن (چهار تکه در سایز40*40)', 746, 'Product/64/64_thumb.png', 'Product/64/64_medium.png', 'Product/64/64.png');
insert into [tblProductDesc] values(65, 'موزائیک پوست ماری', 34, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, 'موزاییک پوست ماری (20*20/40*40 درضخامت های 4/5/5.5 سانت)', 746, 'Product/65/65_thumb.png', 'Product/65/65_medium.png', 'Product/65/65.png');
insert into [tblProductDesc] values(66, 'موزائیک طرح ستاره ', 34, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, null, 746, 'Product/66/66_thumb.png', 'Product/66/66_medium.png', 'Product/66/66.png');
insert into [tblProductDesc] values(67, 'پله واش بتن', 37, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, 'انواع پله واش بتن در سایز(100*35)', 746, 'Product/67/67_thumb.png', 'Product/67/67_medium.png', 'Product/67/67.png');
insert into [tblProductDesc] values(68, 'جدول واش بتن', 37, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, null, 746, 'Product/68/68_thumb.png', 'Product/68/68_medium.png', 'Product/68/68.png');
insert into [tblProductDesc] values(69, 'واش بتن چراغ دار', 37, '          ', 0, '', '1392/03/07', '', '', 1, 1, -1, 1, 'واش بتن های چراغ دار در بیش از 20نوع رنگ بندی تولید میگردد', 746, 'Product/69/69_thumb.png', 'Product/69/69_medium.png', 'Product/69/69.png');
insert into [tblProductDesc] values(70, 'واش بتن آجیلی', 37, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, null, 746, 'Product/70/70_thumb.png', 'Product/70/70_medium.png', 'Product/70/70.png');
insert into [tblProductDesc] values(71, 'دیوارهای پیش ساخته 3D', 21, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, null, 747, null, null, null);
insert into [tblProductDesc] values(72, 'پنجره upvc', 37, '          ', 0, '', '1392/03/07', '', '', 1, -1, -1, 1, 'بهینه سازی مصرف انرژی با استفاده از پنجره های یو پی وی سی دو جداره، به عنوان یکی از روش های مورد توجه در صنعت ساختمان مطرح می باشد. به کار گیری یراق آلات درجه یک (روتو) و سیستم قوی پروفیل آلوپلاست آلمان در کنار عایق بندی مناسب و جلوگیری از نفوذ گرد و خاک و آلودگی در منزل، راحتی و آسایش را برای مصرف کنندگان به ارمغان می آورد. ', 748, 'Product/72/72_thumb.png', 'Product/72/72_medium.png', 'Product/72/72.png');
insert into [tblProductDesc] values(73, 'کالای تستی', 38, '2222222   ', 0, '111111', '1392/03/07', 'تست کالا', '', 1, null, 1, 1, '', null, 'Product/73/73_thumb.png', 'Product/73/73_medium.png', 'Product/73/73.png');
insert into [tblProductDesc] values(74, 'تایل های گچی', 7, '          ', 0, '', '1392/03/08', '', 'تایل های گچی 60*60 پشت فویل دار upvc', 1, 4, -1, 1, null, 759, null, null, null);
insert into [tblProductDesc] values(75, 'دیوار پوش', 37, '          ', 0, '', '1392/03/08', '', '', 1, 3, -1, 1, 'دیوارپوش های 100 درصد ضد اب کوبوا 
دارای طرح و رنگ های متنوع
دافع حشرات
انعطاف پذیری بالا
', 759, 'Product/75/75_thumb.png', 'Product/75/75_medium.png', 'Product/75/75.png');
insert into [tblProductDesc] values(76, 'کاغذ دیواری', 37, '          ', 0, '', '1392/03/08', '', '', 1, 5, -1, 1, 'کاغذ دیواری قابل شستشو کلوین کلاین
ساخت کشور ایتالیا
اندازه رول 0.5*10
دارای طرح های کلاسیک و مدرن
', 759, 'Product/76/76_thumb.png', 'Product/76/76_medium.png', 'Product/76/76.png');
insert into [tblProductDesc] values(77, 'ایزوگام بدون فویل صادراتی پلیمری استاندارد', 37, '          ', 0, '', '1392/03/08', '', '', 1, 6, -1, 1, 'عایق رطوبتی بام دولایه نوع BPP', 761, 'Product/77/77_thumb.png', 'Product/77/77_medium.png', 'Product/77/77.png');
insert into [tblProductDesc] values(78, 'ایزوگام فویلدار صادراتی پلیمری استاندارد', 37, '          ', 0, '', '1392/03/08', '', '', 1, 6, -1, 1, 'عایق رطوبتی بام دولایه نوع BPP', 761, 'Product/78/78_thumb.png', 'Product/78/78_medium.png', 'Product/78/78.png');
insert into [tblProductDesc] values(79, 'تیرچه 8936', 24, '          ', 0, '', '1392/03/08', '', '', 1, -1, -1, -1, null, 763, null, null, null);
insert into [tblProductDesc] values(80, 'بلوک 40*20*10', 12, '          ', 0, '', '1392/03/09', '', '', 1, -1, -1, 1, null, 763, null, null, null);
insert into [tblProductDesc] values(81, 'بلوک دیواری 40*20*20  (باربر)', 11, '          ', 0, '', '1392/03/09', '', 'جهت استفاده در حصار کشی و دیوار حائل', 1, -1, -1, 1, null, 763, null, null, null);
insert into [tblProductDesc] values(82, 'بلوک لیکا 49*20*19', 10, '          ', 0, '', '1392/03/09', '', 'بلوک عایق و سبک لیکا(رس منبسط شده) با سرعت اجرای بالا جهت کاهش هزینه های ساخت', 1, 9, -1, 1, null, 763, null, null, null);
insert into [tblProductDesc] values(83, 'الاستوبار', 37, '          ', 0, '', '1392/03/10', '', '', 1, 10, -1, 1, 'الاستوبار یک پلیمر 100% اکرلیک به شکل امولسیون است که یک لایه محافظ یک پارچه بهم پیوسته کشسان در محل کار روی بتن ایجاد می کند . ماهیت 100% اکرلیک این ماده , مقاومت بسیار عالی در برابر اشعه ماوراء بنفش ,  استحکام بالا و کشش 250 - 200% پس از ترکیب با سیمان را تضمین می کند .', 765, 'Product/83/83_thumb.png', 'Product/83/83_medium.png', 'Product/83/83.png');
insert into [tblProductDesc] values(84, 'زایکوسیل', 37, '          ', 0, '', '1392/03/10', '', '', 1, 10, -1, 1, 'ارگانوسیلان , محلول در آب , مقاوم در برابراشعه ماوراء بنفش , امکان تنفس سطح پس از اجرا , عمق نفوذ 2 تا 5 میلیمتر به داخل سطح , دوستدار محیط زیست , عمر طولانی , هزینه مناسب', 765, 'Product/84/84_thumb.png', 'Product/84/84_medium.png', 'Product/84/84.png');
insert into [tblProductDesc] values(85, 'زایکوفیل', 37, '          ', 0, '', '1392/03/10', '', '', 1, 10, -1, 1, 'زایکوفیل نوعی نانو پلیمر می باشد که خاصیت ضدآب در سطوح کار شده با زایکوسیل را بوسیله پر کردن ترکهای ریز و منافذ نانو بهبود می بخشد 
موارد توصیه شده جهت کاربرد زایکوفیل عبارتند از :
منابع ذخیره آب - ایرانیت - ورقه های سیمانی , آزبستی و کانالهای سیمانی
محل هایی که شیب سطح درست نبوده و احتمال جمع شدن آب در آن وجود دارد.
جاهایی که سطح دارای خلل و فرج فراوان و ترکهای بسیار ریز می باشد.
', 765, 'Product/85/85_thumb.png', 'Product/85/85_medium.png', 'Product/85/85.png');
insert into [tblProductDesc] values(86, 'انواع باکس های بتنی', 37, '          ', 0, '', '1392/03/11', '', '', 1, -1, -1, 1, 'جهت اجرای پروژه های راهسازی نیاز می باشد تا در مسیر از پل های آب رو ، نفر رو و ماشی رو استفاده نمود اما به دلیل اینکه انجام بتن درجا مشکلات زیادی را به همراه دارد اسفاده از باکس های بتنی پیش ساخته در عملیات راهسازی اجرای پروژه را تسهیل می نماید.', 780, 'Product/86/86_thumb.png', 'Product/86/86_medium.png', 'Product/86/86.png');
insert into [tblProductDesc] values(87, 'بتن آماده', 33, '          ', 0, '', '1392/03/11', '', '', 1, -1, -1, 1, 'برای اجرای پروژه های پل سازی ساختمانی و عمرانی استفاده می گردد.', 780, null, null, null);
insert into [tblProductDesc] values(88, 'ماسه شسته', 32, '          ', 0, '', '1392/03/11', '', '', 1, -1, -1, 1, 'جهت تولید بتن انجام فعالیت های ساختمانی و غیره استفاده می گردد.', 780, null, null, null);
insert into [tblProductDesc] values(89, 'نیوجرسی', 37, '          ', 0, '', '1392/03/11', '', '', 1, -1, -1, 1, 'جهت جداسازی مسیر های ، سد نمودن یک مسیر و نیز ساخت میدان های آماده جدول کشی اماده و غیره استفاده می گردد.', 780, 'Product/89/89_thumb.png', 'Product/89/89_medium.png', 'Product/89/89.png');
insert into [tblProductDesc] values(90, 'اجرای سازه های فلزی ویژه (پیچ و مهره ای و جوشی)', 37, '          ', 0, '', '1392/03/11', '', '', 1, 11, -1, 1, null, 786, null, null, null);
insert into [tblProductDesc] values(91, 'سقف عرشه فولادی', 37, '          ', 0, '', '1392/03/12', '', '', 1, 11, -1, 1, '1- سرعت اجرای بالا - 11 برابر سریعتر از سقف‌های دیگر
2- بازگشت سریع سرمایه
3-  کاهش تیرهای فرعی به حداقل - 20 تا 30 درصد صرفه جویی در مصرف فولاد اسکلت سازه.
 4- 15  تا 20 درصد صرفه جویی در مصرف بتن سقف.
5- کاهش وزن سقف، اسکلت، فونداسیون و در نهایت کاهش وزن سازه.
(وزن بار مرده این پروفیل با 8 سانتیمتر حجم بتن رویه 210 کیلو گرم بر متر مربع است در حالی که وزن سقف کامپوزیت سنتی با همین خصوصیات فنی 270 کیلو گرم و سقف‌های تیرچه بلوک 360 کیلوگرم می‌باشد)
(40  درصد سبکتر از سقف های تیرچه بلوک و 22 درصد سبکتر از سقف های کامپوزیت سنتی)
6- عملکرد مناسب در برابر زلزله (بالابردن صلبیت ساختمان) و مقاومت در برابر نیروهای جانبی.
7- امکان اجرا و عملیات بتن ریزی کلیه سقف های ساختمان در یک زمان.
8- عبور آسان وسالم تاسیسات از زیر سقف وهمچنین تعمیر وتعویض بسیار راحت موارد آسیب دیده.
9-  کاهش قابل توجه هزینه های جاری کارگاه.
10- تأمین میلگرد کششی سقف – 60 تا 70 درصد صرفه جویی در مصرف میلگرد.
11- ایجادیک سکوی فولادی با ایمنی بالا در زمان اجرای سقف.
12- کاهش ضخامت سقف ودر نتیجه افزایش ارتفاع مفید در طبقات.
13- ایجادسطحی یکنواخت در زیر سقف.
14- انعطاف پذیری با هر نوع طراحی از لحاظ معماری وکاربری.
', 786, 'Product/91/91_thumb.png', 'Product/91/91_medium.png', 'Product/91/91.png');
insert into [tblProductDesc] values(92, 'استاد بولت ', 37, '          ', 0, '', '1392/03/12', '', 'تولید کننده و تامین کننده انواع پیچ و مهره استاد بولت در اندازه های مختلف', 1, -1, -1, 1, null, 789, 'Product/92/92_thumb.png', 'Product/92/92_medium.png', 'Product/92/92.png');
insert into [tblProductDesc] values(93, 'سسسس', 20, '          ', 1, '', '1392/03/12', '', '', 1, -1, -1, -1, null, null, null, null, null);
insert into [tblProductDesc] values(94, 'جدول', 37, '          ', 0, '', '1392/03/13', '', '', 1, 12, -1, 1, null, 790, 'Product/94/94_thumb.png', 'Product/94/94_medium.png', 'Product/94/94.png');
insert into [tblProductDesc] values(95, 'رزین', 37, '          ', 0, '', '1392/03/13', '', 'رزین با کیفیت و مرغوب', 1, 12, -1, 1, null, 790, null, null, null);
insert into [tblProductDesc] values(96, 'قالب', 37, '          ', 0, '', '1392/03/13', '', '', 1, 12, -1, 1, null, 790, null, null, null);
insert into [tblProductDesc] values(98, 'کفپوش', 37, '          ', 0, '', '1392/03/13', '', '', 1, 12, -1, 1, null, 790, null, null, null);
insert into [tblProductDesc] values(100, 'نما آنتیک', 37, '          ', 0, '', '1392/03/13', '', 'انواع سنگ های نمای ساختمان : دکوراتیو، زیبا ، ظریف، خشن ، قرنیز ، گرانیت 30*100 و 30*30 و 40*40', 1, 12, -1, 1, null, 790, null, null, null);
insert into [tblProductDesc] values(101, '111', 32, '12        ', 1, '12', '1392/03/13', '111', '1212121212', 1, 6, 1, 1, null, 27, null, null, null);
insert into [tblProductDesc] values(102, '111', 32, '12        ', 1, '12', '1392/03/13', '111', '1212121212', 1, 6, 1, 1, null, 27, null, null, null);
insert into [tblProductDesc] values(103, 'پاک کننده های لکه های رنگی از روی سطح', 37, '          ', 0, '', '1392/03/17', '', '', 1, 13, -1, 1, 'مشخصات تکمیلی کالا :
یک محصول برای پاک کردن لکه های قهوه ، چای ، شراب قرمز ، آب میوه ها ، نیکوتین ، عوامل رنگی ، گیاهان خوراکی ، انواع کپک ها روی سطح .
این پاک کننده ی مواد رنگی ، علاوه بر سطوح پارکت لمینیت ، می تواند روی سنگ مرمر ، گرانیت ، پور سلان و سایر مواد ساختمانی دارای جذب آب بکار برده شود .( سطوح دارای خلل و فرج)
کالرد استین ریموور یک محصول قوی برای پاک کردن لکه های رنگی است بدون آنکه سطح را خراب کند و به هر سختی که باشد همیشه لکه های رنگی را از داخل حفره ها بیرون می کشد و خارج می نماید .
 دستور العمل : Directions
محصول را به صورت خالص روی نقاط لکه ها بکار ببرید و از مدت 15 دقیقه لغایت یک شب بسته به نوع لکه ها صبر کنید که مواد روی سطح بماند . اگر هنوز لکه ها روی سطح دیده شد ، این کار را دوباره تکرار کنید .
 توجه مهم  :  Important Notic
ما همیشه به شما توصیه می کنیم که محصول را روی قسمتی که قابل دید نیست تست و کنترل کنید . درب بطری را ببندید و در جای خنک نگهداری کنید . همواره تست وآزمایش مقدماتی را جهت تعیین مقاومت سطح در مقابل مواد شیمیایی انجام دهید .
 توجه :
این محصول در مدت  زمانیکه درب بطری اش باز است ، تمایل به از دست دادن خواص خود را پیدا می کند .
لذا پس از هر بار استفاده به سرعت درب بطری را ببندید .
 اخطار :
به هیچ وجه این محصول با سایر مواد شیمیایی کار نشود  . ممکن است که در اثر ترکیب گازهای خطرناک مثل کلرین تولید شود که برای چشم  پوست خطرناک است . از تماس با پوست و چشم خودداری شود . اگر با پوست برخورد کرد به سرعت پوست را شستشو دهید و دور از دسترس کودکان نگهداری شود .در صورت بروز هر نوع اتفاق به دکتر زنگ بزنید و در صورت امکان برچسب محصول را به دکتر نشان دهید .
اگر مواد روی سطح ریخته شد ، سعی کنید که بیشتر  آن را پاک کنید ، سپس مواد جمع شده را داخل تانک پلاستیکی بریزید .ضایعات جمع شده را به شرکتهای جمع آوری ضایعات شیمیایی تحویل دهید .
شکل ظاهری : مایع بدون رنگ
رنگ : زرد کم رنگ
', 816, null, null, null);
insert into [tblProductDesc] values(104, 'درب CNC', 37, '          ', 0, '', '1392/03/17', '', '', 1, 14, -1, 1, '  1-روکش دربها با ضخامت هشت میل و روکش ترک وشبکه هانیکام ترک وجنس مرغوب می باشد.
  2- چوب مصرفی جهت ساخت چهار چوب، روسی با بائو 6،5 می باشد.
', 817, 'Product/104/104_thumb.png', 'Product/104/104_medium.png', 'Product/104/104.png');
insert into [tblProductDesc] values(105, 'سیمان', 5, '          ', 0, '', '1392/03/17', '', '', 1, -1, -1, -1, null, 38, null, null, null);
insert into [tblProductDesc] values(106, 'پنجره', 37, '          ', 0, '', '1392/03/17', '', '', 1, 15, -1, 1, null, 817, 'Product/106/106_thumb.png', 'Product/106/106_medium.png', 'Product/106/106.png');
insert into [tblProductDesc] values(107, 'درب', 37, '          ', 0, '', '1392/03/17', '', '', 1, 14, -1, 1, '1-روکش دربها با ضخامت سه میل و روکش ترک وشبکه هانیکام ترک وجنس مرغوب می باشد.
  2- چوب مصرفی جهت ساخت چهار چوب، روسی با بائو 6،5 می باشد.
  3- طرح روکش دربها، دو قاب، سه قاب بیضی و چهار قاب می باشد.
  4- دربهای کمدی روکش ترک ضخامت سه میل  طرح ساده می باشد.
', 817, 'Product/107/107_thumb.png', 'Product/107/107_medium.png', 'Product/107/107.png');
insert into [tblProductDesc] values(108, 'درب HDF', 37, '          ', 0, '', '1392/03/17', '', '', 1, 14, -1, 1, '1-روکش دربها با ضخامت سه میل و روکش ترک وشبکه هانیکام ترک وجنس مرغوب می باشد.
  2- چوب مصرفی جهت ساخت چهار چوب، روسی با بائو 6،5 می باشد.
  3- طرح روکش دربها، دو قاب، سه قاب بیضی و چهار قاب می باشد.
  4- دربهای کمدی روکش ترک ضخامت سه میل  طرح ساده می باشد.
', 817, 'Product/108/108_thumb.png', 'Product/108/108_medium.png', 'Product/108/108.png');
insert into [tblProductDesc] values(109, 'درب شیشه خور ', 37, '          ', 0, '', '1392/03/17', '', '', 1, 14, -1, 1, '1-روکش دربها با ضخامت سه میل و روکش ترک وشبکه هانیکام ترک وجنس مرغوب می باشد.
  2- چوب مصرفی جهت ساخت چهار چوب، روسی با بائو 6،5 می باشد.
  3- طرح روکش دربها، دو قاب، سه قاب بیضی و چهار قاب می باشد
', 817, 'Product/109/109_thumb.png', 'Product/109/109_medium.png', 'Product/109/109.png');
insert into [tblProductDesc] values(110, 'دستگیره درب چوبی  ', 37, '          ', 0, '', '1392/03/17', '', '', 1, 16, -1, 1, null, 817, 'Product/110/110_thumb.png', 'Product/110/110_medium.png', 'Product/110/110.png');
insert into [tblProductDesc] values(111, 'دوغاب آماده فراوری شده کف نوش', 37, '          ', 0, '', '1392/03/18', '', '', 1, -1, -1, 1, 'دوغاب آماده فراوری شده کف نوش جهت بازسازی و بند کشی آسان 
کاشی،سرامیک،سنگ وموزائیک تولید شده است 
 
 
اغلب هنگامی که بندکشی سطوح سرامیک، کاشی و یا موزائیک کف ساختمان از بین می‌رود، عامل نشت آب به طبقات پایین‌تر می‌گردد، همچنین لجن بوجودآمده در لابلای این درزه‌ها محل مناسبی برای رشد میکروب‌ها، قارچ‌ها و حشرات موذی می‌باشد. از این رو نیاز به دوغاب جهت بندکشی مجدد ضروری به نظر می‌رسد. برای انجام اینکار مشکلات فراوانی وجود دارد از جمله تهیه مواد اولیه، چندین بار الک کردن مواد برای جداسازی نخاله‌ها و مخلوط کردن مواد به نسبت صحیح با یکدیگر، به طوری که غلظت دوغاب بدست آمده برای انجام عملیات بندکشی مناسب باشد.
دوغاب آماده فرآوری‌ شده کف‌نوش تمام این مشکلات را از پیش روی شما برداشته است
      
 
موارد کاربرد
ترمیم بند کشی های آسیب دیده کاشی و سرامیک، ناشی از تمیزکاری باموادشوینده و جوهرنمک
 پرکردن ترکهای سطوح، ناشی از نشست ساختمان
مسدودکردن مسیرحشرات موذی درمنازل
نصب توالت فرنگی
قالب گیری اجسام و ساخت مجسمه

مزایا
عدم نیازبه فراهم آوردن مواد اولیه درحجم زیاد 
انجام عملیات بندکشی بسیار تمیز و با دقت بالا
قیمت مناسب و صرفه جوئی در وقت و هزینه های خانوار
اجرای سهل و آسان حتی توسط خانمهای خانه دار
دارای درب مخصوص به منظورجلوگیری از ریخت و پاش و همچنین هدایت آسان   مواد به درون درزها
مناسب برای دوغاب دهی کاشی ها و سنگهای متخلخل
دسترسی آسان درخرید،حتی درسوپرمارکتها
قابل استفاده برای مدت طولانی پس ازخرید، در صورت ترکیب نشدن با آب  
دررنگ بندیهای مختلف
حمل و نقل آسان
روش استفاده

زمانی را انتخاب کنید که چند ساعتی از محل استفاده نمی کنید
قبل از اجرای بندکشی محل را با استفاده از جوهرنمک و برس کشی کاملا تمیز نمایید تا بندکشی قبلی پدیدار شود و مواد جدید به آن چسبیده، نتیجه بهتری حاصل شود
در بطری را باز کرده یک لیوان آب به آن اضافه کنید سپس در بطری را بسته خوب تکان دهید
نوک در بطری را بریده تا مسیر خروج مواد باز شود و به آسانی محلول را در بندها بریزید
در حین کار چند مرتبه بطری را تکان دهید تا محلول یکنواخت بماند و در بطری ته نشین نشود
پس از چند ساعت اضافات بندکشی را با یک پارچه ضخیم یا لبه فلزی پاک کنید
تا چند روز از شستشوی محل با فشار آب بالا خودداری کنید تا بندکشی محکم شود 
', 821, 'Product/111/111_thumb.png', 'Product/111/111_medium.png', 'Product/111/111.png');
insert into [tblProductDesc] values(112, 'بلوک سبک', 12, '          ', 0, '', '1392/03/18', '', '', 1, -1, -1, 1, '
بلوک سبک

بلوک سبک
بلوک سبک در تهران

محصولات:
بلوک دیواری ته پر 40*20*10وزن 4kg 

بلوک دیواری ته پر 50*20*15وزن 7/5kg

بلوک دیواری ته پر 40*20*20وزن7/5kg
بلوک دیواری ته پر 50*18*20وزن 9/5kg 
بلوک دیواری ته پر 40*20*7 وزن 3/5 kg

توضیحات:
ضخامت دیواره کلیه بلوکهای دیواری 22میلیمتر و بلوکهای سقفی 22 میلیمتر می باشد. کلیه قیمتها بر اساس تحویل درب کارخانه می باشد.

قیمت بر اساس توافق و بر حسب تقاضا قابلیت تخفیف دارد.
قیمت ما رقابتی می باشد و کیفبت عالی، حتما در بازار قیمت بگیرید بعد با ما تماس بگیرید.
کارخانه در تهران میباشد.
- حذف لایه آستر نازک کاری (گچ و خاک) و بسنده نمودن به پوشش چند میلی متری گچ پرداختی .
- عایق بودن بلوک (رطوبت ، صوت و حرارت) که باعث حذف هزینه های عایق بندی می گردد .
- کاهش قابل توجه وزن دیوار و متعاقباً کاهش وزن مرده ساختمان .
- رفتار مناسب در برابر نیروهای ناشی از تغییر شکلها و نشست در ساختمان .
- یکپارچگی و انسجام در برابر زمین لرزه و انفجار.
', 825, 'Product/112/112_thumb.png', 'Product/112/112_medium.png', 'Product/112/112.png');
insert into [tblProductDesc] values(113, 'باکس بتنی', 37, '          ', 0, '', '1392/03/18', '', '', 1, -1, -1, 1, 'یکی از راه های تثبیت خاک در ترانشه های خاکی استفاده توام فلاور باکس های بتنی پیش ساخته به همراه ژئوگرید می باشد. این روش در مقایس با روش دیوار سنگی ارزان تر وبه مراتب سریتر می باشد. در عین حال به دلیل وجود فضای مناسب جهت گل کاری و کاشت گیاهان گوناگون، ظاهر دیوار ها سبز تر و زیبا تر از دیوار سنگی می باشد . فلاور باکس های تولید شده در کارخانه فرآشیان در دو مدل 45 و70 درجه قابل ارائه می باشد که بسته به شیب دیواره های خاکی هر فلاور باکس توسط کارشناسان مجرب شرکت توصیه میشود. 
         برخی از مزایای فلاور باکس های بتنی فرآشیان:
•  فشار وارده کمتر به دیوار سنگی(در مقایسه با سایر محصولات مشابه)
•  اجرای سریعتر روی سطوح شیب دار
•  وزن کم قطعات(کمک به حمل و نصب آسانتر)
•  تنوع در اجرای قطعات(امکان اجرای طرح های هندسی خاص)
•  تنوع در طرح ورنگ

         برخی از مصرف کنندگان بالقوه این محصول:
•  شهرداری های کلان شهرهای کشور(بدنه بزرگراه ها و رود دره ها
•  اداره کل راه وترابری استان ها
•  انبوه سازان مسکن(تثبیت ترانشه های خاکی)
•  پیمانکاران اجرای دیوار سنگی و فضای سبز
', 826, null, null, null);
insert into [tblProductDesc] values(114, 'بلوک خاک مسلح ', 37, '          ', 0, '', '1392/03/18', '', '', 1, 18, -1, 1, 'جهت تثبیت ترانشه های خاکی با شیب 90 درجه با نمای بادبر', 826, null, null, null);
insert into [tblProductDesc] values(115, 'جدول بتنی پرسی 12*30*50', 37, '          ', 0, '', '1392/03/18', '', '', 1, 18, -1, 1, 'به دلیل نیاز مبرم پروژه های احداث، بازسازی و نوسازی معابر شهری به جداولی که از دوام و پایداری بلندمدت برخوردار باشند. بخشی از فعالیت شرکت فراشیان میهن به تولید جداول ماشینی با کیفیت بالا اختصاص یافته است. در تمامی مراحل تولید، عمل آوری، چیدمان، بسته بندی، حمل و تخلیه قطعات پیش ساخته بتنی در این شرکت ملاحضات آیین نامه بتن ایران (آبا) و موسسه بتن آمریکا (ACI) به دقت لحاظ شده است. کسب نتایج قابل قبول در آزمایش های متعدد و پیوسته شهرداری تهران، حفظ و ارتقاء دائمی کیفیت محصولات، تنوع زیاد در ابعاد و اندازه و قیمت مناسب آنها از جمله دلایل استقبال خوب مشتریان از جدول های بتنی تولید این شرکت می باشد. نظارت دائمی آزمایشگاه ژئوفیزیک و مقاومت مصالح شهرداری تهران برکیفیت محصولات تولیدی و نیز تاییدیه معاونت فنی و عمرانی شهرداری تهران باعث ایجاد پشتوانه محکمی بر مشتریان فراشیان شده است.', 826, null, null, null);
insert into [tblProductDesc] values(116, 'کفپوش بتنی پرسی', 37, '          ', 0, '', '1392/03/18', '', '', 1, 18, -1, 1, 'استفاده از کفپوش های بتونی صلب و با دوام برای پوشش محوطه های صنعتی و شهری بعنوان بهترین گزینه مطرح می باشد زیرا دارای جذب آب بسیار کم و دوام زیاد در برابر عوامل جوی وسیکل ها ذوب و یخبندان می باشد. 
 کفپوش های فراشیان دارای بافت سطحی زیبا می باشند و به منظور جلوگیری از لیز خوردن و نیز دوام و پایانی آن از مرغوبترین نوع دانه های سیلیس با خلوص بالا در رویه این کفپوش ها استفاده شده است. بافت متراکم و بسیار مقاوم رویه این کفپوش ها در مقابل مواد شیمیایی، روغن و سایر آلاینده ها بسیار مقاوم اند. کفپوش های فراشیان مانند تمامی محصولات شرکت به دلیل استفاده از مواد کاملا طبیعی، با محیط زیست سازگاری کامل دارند. رنگ المان ها حاصل فرآوری موادمعدنی است و در ترکیب آنها از پیگمنت های شیمیایی استفاده نمی شود. به همین دلیل در محصولات رنگی فراشیان رنگ پریدگی وجود ندارد. 
امروزه به مدد طرح های گوناگون مهندسی معماری و نیز تنوع رنگ، اندازه و یکنواختی ابعاد قطعات اجرای پیاده رو سازی های زیبا و چشم نواز با محصولات شرکت فراشیان، کار چندان سختی نیست. 
کفپوش های بتنی فراشیان، صلب و بدون افت و تغییر شکل (در مقایسه با آسفالت) می باشد. ازاین رو مجریان و طراحان بسیاری با توجه به اصطکاک سطحی بیشتر، مقاومت و قیمت مناسب تر آن نسبت به آسفالت، از کفپوش های ترافیکی فراشیان به عنوان جایگزین خوبی برای آسفالت جهت معابر و خیابان های ماشین رو یاد می کنند. 
 نصب آسان توسط نیروی انسانی نیمه ماهر و عدم نیاز به ماشین آلات سنگین اجرایی و مزایای فنی و اقتصادی فراوان نسبت به آسفالت کاربرد این قطعات زیبا را گسترش داده است. این مزایا شرکت فراشیان میهن را بر این داشته که طرح های متنوعی از کفپوش های بتنی به شرح زیر را متناسب با نیاز واحدهای صنعتی و شهرها طراحی و تولید نماید. 
 تنوع در شکل و رنگ، مزایای اقتصادی، زیبائی و ... مشخصه های مهم این کفپوش ها می باشد که به عنوان پوشش های بتنی در پیاده روها، سواره روها، معابر شهری و محوطه سازی ها، زیبایی چندانی به مبلمان شهری می بخشد.
', 826, null, null, null);
insert into [tblProductDesc] values(117, 'بلوک سبک اتو کلاو', 10, '          ', 0, '', '1392/03/18', '', '', 1, -1, -1, -1, null, 830, 'Product/117/117_thumb.png', 'Product/117/117_medium.png', 'Product/117/117.png');
insert into [tblProductDesc] values(119, 'تیرچه', 23, '          ', 0, '', '1392/03/19', 'تیرچه', '', 1, -1, 1, 1, 'فروش تیرچه در سایز های 40سانتیمتری تا 9 متری با انواع تقویت 
تیرچه 20 و تیرچه 25 و تیرچه پله 
', 832, 'Product/119/119_thumb.png', 'Product/119/119_medium.png', 'Product/119/119.png');
insert into [tblProductDesc] values(120, 'پنجره پردیس', 37, '          ', 0, '', '1392/03/19', '', '', 1, -1, 1, 1, null, null, null, null, null);
insert into [tblProductDesc] values(121, 'در و پنجره  ', 37, '          ', 0, '', '1392/03/19', 'U P V C', '', 1, -1, 1, 1, null, null, null, null, null);
insert into [tblProductDesc] values(122, 'باز شو   دو حالته', 37, '          ', 0, '', '1392/03/19', '', '', 1, -1, 1, 1, 'پروفیل مورد استفاده در  پنجره های شرکت آذین نمای ایرانیان از شرکت   Mueller   آلمان  و  همارشتن تامین میشود  .  همارشتن اولین  و  تنها دارنده گواهی نامه کیفی تولید پروفیل  U P V C   ldfhan    و   شرکت آذین  نما  محصولات خود را تا    25   سال گارانتی  و  10سال بیمه ایران می نماید :  1-  تغییر رنگ  پروفیل   2  -  ترک خوردگی    3  -  تاب برداشتن  4  -    پوسته شدن  5  -  کجی  یا  برگشت  حرارتی                                           یراق آلات مصرفی در و پنجره های شرکت آذین نمای ایرانیان  از شرکت  Siegenia    آلمان  تامین میگردد  .                                                                   تنوع رنگ   شامل سفید ،  سه نوع پروفیل لمینیت شده طرح چوب  و  سایر رنگها مطابق نمونه میباشد .', 37, 'Product/122/122_thumb.png', 'Product/122/122_medium.png', 'Product/122/122.png');
insert into [tblProductDesc] values(123, 'کلنگی', 37, '          ', 0, '', '1392/03/19', 'U P V C   ', '', 1, -1, 1, 1, 'دارای پروانه بهره برداری تولید انبوه از سازمان صنایع استان خراسان . اولین و تنها دارنده ایزو  9001  مدیریت کیفیت در استان خراسان .                         شرکت آذین نمای ایرانیان تولیدکننده در و پنجره های دوجداره U P V C    با تکنولوژی  شرکت مولر آلمان میباشد .   طی تحقیقات  موسسه تحقیقاتی مواد ساختمانی آلمان در و پنجره های با طول عمر چهل سال بهترین گزینه جهت استفاده در ساختمان های مدرن امروزی هستند .', 37, 'Product/123/123_thumb.png', 'Product/123/123_medium.png', 'Product/123/123.png');
insert into [tblProductDesc] values(124, 'تست', 38, '          ', 0, 'adsf', '1392/03/19', 'asfgsd', '', 1, -1, -1, -1, null, 25, null, null, null);
insert into [tblProductDesc] values(125, 'دیگ اب گرم', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, 'دیگهای آب گرم شرکت بخار سازه در ظرفیتهای گوناگون و در مدلهای متنوع تولید می گردد که کلیه طرحهای یاد شده بر مبنای استاندارد   7911   ایران مطابق با BS855    طراحی میشوند  .  طرحهای مختلف دیگهای آب گرم بر مبنای سفارش مشتری  و  ظرفیت مورد نیاز  در  طرحهای WetBack-3Pass وشعله برگشتی تولید میشوند .', 214, 'Product/125/125_thumb.png', 'Product/125/125_medium.png', 'Product/125/125.png');
insert into [tblProductDesc] values(126, 'دیگ اب داغ', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, 'چنانچه دمای آب خروجی دیگ در سیستم ، بالاتر از دمای جوش آب در فشار اتمسفریک باشد ، این دیگ در دسته دیگهای آب داغ قرار میگیرد .  از آنجا که افزایش دما باعث کاهش استحکام تسلیم مواد میگردد ، بایستی این مسئله را در امر طراحی این دیگها مورد توجه قرار داد .                                     از این رو  دیگهای آب داغ مطابق با استاندارد isiri  4231  و  یا     B S  2790    طراحی شده و در مراحل مختلف تولید ، تحت نظارت و بازرسی دقیق کارشناسان شرکت قرار میگیرند .', 214, 'Product/126/126_thumb.png', 'Product/126/126_medium.png', 'Product/126/126.png');
insert into [tblProductDesc] values(127, 'اسپیسر ', 37, '          ', 0, '', '1392/03/20', '', '', 1, 20, -1, 1, 'اسپيسر بتن
اسپيسر در لغت به معني فاصله گذار مي باشد. اسپيسرهاي پلاستيکي بتن  براي رعايت پوشش ميلگردها در سازه هاي مسلح مثل دالها و ديوارها پي ها و ساير احجام بتني مسلح قابل استفاده بوده و در پروژه هاي نظير سد و تونل و ساير ساختمانها و مستحدثات مصرف ميشوند.
کارگران در زمان کوتاه قادر به حمل انواع آنها در کارگاه مي باشند. حداقل پوشش بتني روي آرماتورها که به عنوان محافظ براي آرماتورها در برابر هواو اثرات ديگر است، از سطح بتن تاسطح بيروني فولادي که ضابطه پوشش در مورد ان اعمال ميگردد، محاسبه ميشود. در موردي که حد اقل پوشش براي يک نوع عضو ساختماني بيان شده است، حداقل پوشش بتن اگر آرماتور عرضي ميلگردهاي اصلي را در برگرفته باشد تا لبه خارجي خاموتها، تنگها و مارپيچها اندازه گيري مي شودو اگر بيش از يک رديف آرماتور اصلي بدون خاموتها يا تنگ به کار برده شود، تا سطح خارجي بيروني ترين رديف ميلگردها اندازه گيري مي شود. اسپيسرها ضمن بالا بردن کيفيت سازه ها به سرعت اجراي عمليات ساختماني تيز کمک مي کنند.
اسپيسر پلاستيکي بتن
اسپيسرهاي پلاستيکي بتن از جمله اسپيسرهاي ساختماني مي باشند که در صنعت ساختمان کاربرد بالايي دارند. اسپيسر در لغت به معناي فاصله گذار مي باشد که عموما فضاي بين ميلگرد و قالب را تامين مي کند. چنانچه گفته مي شود به ازاي هر دو ميليمتر کاهش در ضخامت بتن روي ميلگرد 5 سال عمر سازه را کاهش و از دوام و عمر و پايايي سازه مي کاهد. اسپيسرها مهمترين ابزار براي رسيدن به پوشش بتني الزامي هستند. از ضعفهاي متداول و قابل پيشگيري در سازه هاي بتن مسلح تاثير پذيري از عوامل و عناصر مخرب اطراف مي باشد.اکسيژن و رطوبت محيط مي تواند با نفوذ درون بتن و رساندن خود به ميلگردها باعث سرعت بخشيدن به خوردگي ميلگردها شود و از عمر مفيد سازه بکاهد اين در حالي است که پوشش بتني روئ ميلگرد ميتواند به عنوان مهمترين عامل جلوگيري از خوردگي محسوب شودو زمانيکه ميلگرد در سطح بتن نمايان مي شود اثر شيميايي رطوبت بسيار سريع است. با استفاده از فاصله نگهدارها پوشش الزامي بتن روي ميلگردها رعايت مي شود.آنچه از يک فضا ساز مورد انتظار است آنستکه با شبکه هاي ميلگرد هم خواني داشته باشد و وظيفه نگهداري شبکه هاي ميلگرد در خلال بتن ريزي سازه مسلح را در خلال بتن ريزي به خوبي ايفا نمايد.اين وظيفه توسط نگهدارنده هاي با دوام ساخته شده با استفاده از مواد غيرخورنده که توليد آنها بسيار آسان است امکانپذير مي باشد.
', 848, null, null, null);
insert into [tblProductDesc] values(128, 'چسب بتن ', 37, '          ', 0, '', '1392/03/20', '', '', 1, 21, -1, 1, 'ترميم کننده ويژه بتن، ترميم کننده بتن، بتن ويژه، آب بتن، افزودني بتن، بتن آرمه، سازه بتني، بتن فوم، دانه بندي بتن، سنگدانه بتن، رواني بتن، مواد افزودني بتن، سيمان بتن ،چسب بتن، چسب بتن آب بندي، چسب بتن استحکامي، چسب بتن پرايمري، بتن ريزي، چسب بتن پودري، ملات بتن، اختلاط بتن، انعطاف پذيري بتن، مقاومت بتن، مقاومت فشاري بتن، مقاومت خمشي بتن، مقاومت کششي بتن، ترک هاي بتن، دوام بتن، سختي بتن، ضديخ بتن، يخ زدن بتن، مصالح، سنگي بتن، بتن غيرمسلح، حرارت زدايي بتن، مدول الاستيسيته بتن، چسبندگي بتن، توده بتن، بتن توانمند، ويبره بتن، نفوذپذيري بتن، درز اجرايي بتن، فرم پذيري بتن، آب آوري بتن، اسلامپ بتن، اسپيسر بتن، اسپيسر، پلاستيکي بتن، پوشش بتن، احجام بتن، ميلگرد بتن، چسبندگي بتن، چسبندگي، چسبندگي بالا، چسب سراميک، چسب سراميک پودري، چسب خشک سراميک،ضديخ بتن', 848, null, null, null);
insert into [tblProductDesc] values(129, 'وصله مکانیکی  ', 37, '          ', 0, '', '1392/03/20', 'کوپلر', '', 1, -1, 1, 1, 'با توجه به مشکلات عدیده اجرایی در سازه های سنگین به دلیل استفاده از میلگرد های قطور  بکار گرفتن وصله مکانیکی راهگشا  بوده و  علاوه بر ایجاد اتصال مطمئن  و  مستحکم تر از آرماتور مصرفی سایر مشکلات جانبی در سازه های بتنی را نیز برطرف میکند  .  در هر سازه بتنی در حدود  15 درصد آرماتور مصرفی بصصورت اورلب در بتن دفن یا محدودیتهای ائین نامه ای به ضایعات تبدیل میگردد   .  با استفاده از اتصالات مکانیکی نه تنها از دفن آرماتور به صورت پوششی آرماتور جلوگیری بعمل می آورد  بلکه ضایعات آرماتور به حداقل کاهش میابد  .                                                                             مزایای استفاده از واسطه مکانیکی کوپلینگ در اتصال آرماتورها  :                                                                                                                                   1    -   کاهش وزن کلی  سازه                                                                                                                                                                                    2   -   توجیه اقتصادی وصله مکانیکی  (  کوپلر  )  نسبت به اورلب                                                                                                                               3   -  قابل استفاده برای  همه قطرهای میلگرد                                                                                                                                                         4   -   قابل استفاده در همه پوزیشن های سازه های بتنی از جمله در فونداسیون  ،  ستون  ،  تیرها  و   دیوارهای برشی  و  سایر                                        قسمتهای سازه ای                                                                                                                                                                                        5   -   امکان استفاده از تمام طول شاخه آرماتور  و  نداشتن ضایعات                                                                                                                           6   -    کاهش تراکم آرماتور در مقاطع اتصال  و  همچنین کاهش نسبت فولاد به بتن در سطح مقطع                                                                             7   -    کاهش  سطح مقطع ستون   و  در نتیجه کاهش بتن مصرفی  و  وزن آرماتور                                                                                                      8   -    در امتداد هم قرار گرفتن کامل آرماتورها                                                                                                                                                          9    -   نصب سریع  و  آسان  و  عدم نیاز به ابزارالات  و  مهارت خاص                                                                                                                                              ', 321, null, null, null);
insert into [tblProductDesc] values(130, 'گچ', 7, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, null, 852, null, null, null);
insert into [tblProductDesc] values(131, 'سیمان', 2, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, null, 852, null, null, null);
insert into [tblProductDesc] values(132, 'سیمان', 2, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, null, 854, null, null, null);
insert into [tblProductDesc] values(133, 'چسب بتن', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, null, 854, null, null, null);
insert into [tblProductDesc] values(134, 'پله برقی ', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, -1, -1, null, 645, null, null, null);
insert into [tblProductDesc] values(135, 'پله برقی ', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, -1, -1, 'این پله برقی از نظر کاربری به سه دسته تقسیم میگردد که بسته به شرایط آب و هوایی و نوع کاربری  طراحی و تولید می گردد .                                خدمات سرویس و نگهداری این شرکت به صورت ماهیانه و بر طبق چک لیستهای مورد تایید اتحادیه اروپا صورت می گیرد .                                             پله برقی فوجی دارای سیستم های امنیتی پیشرفته ای است  و از جمله آنها میتوان به بیش از 25 میکرو سویچ  امنیتی اشاره کرد که از صدمه زدن دستگاه به مسافر عبوری و یا سایر بخشهای پله برقی جلوگیری میکند .', 645, null, null, null);
insert into [tblProductDesc] values(136, 'سیمان', 2, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, null, 857, 'Product/136/136_thumb.png', 'Product/136/136_medium.png', 'Product/136/136.png');
insert into [tblProductDesc] values(137, 'سنگهای مصنوعی و دکوراتیو', 37, '          ', 0, '', '1392/03/20', '', '', 1, -1, 1, 1, 'محصولات ایران استون ترکیبی  از بتن و مواد پلیمری است  . این محصولات دارای طرحهای متنوع و رنگبندیهای گوناگون است  .  این محصولات در  رده   تولیدات نوین و پیشرفته ساختمانی قرار دارد  و در برابر نور خورشید ، یخبندان  و  تغییر درجه حرارت  بسیار مقاوم است .                                             مناسب برای کف پوش پیاده رو  و معابر عمومی                                                                                                                                                        مناسب برای کف سازی حیاط  و  پیلوت  و  مجتمع های مسکونی  و  مراکز تجاری                                                                                                      مناسب برای  کف سازی پارکها  ویلاها و باغها                                                                                                                                                           مناسب برای  نمای خارجی ساختمان  ، دیوار حیاط و دیوار پیلوت                                                                                                                                مناسب برای طراحی داخلی ، دیوار پشت  ال   سی   دی   و   فضای بین کابینتهای آشپزخانه و دیواره راه رو ها                                                           مناسب برای طراحی داخلی فروشگاه ها  و  مراکز تجاری', 145, null, null, null);
insert into [tblProductDesc] values(138, 'ایزولاسیون شمشیری', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, 'ایزولاسیون شمشیری  عایق پیش ساخته ای متشکل از الیاف الی یا الیاف معدنی  بصورت بافته یا نبافته اشباع شده با قیرهای پالایشی و اصلاح و تقویت شده با پلیمرها  و  سایر افزودنیهای مجاز شیمیایی می باشد  . ', 395, null, null, null);
insert into [tblProductDesc] values(139, 'آجر نسوز پلاک  5/5  سانتی', 13, '          ', 0, '', '1392/03/21', 'نمای انگلیسی', 'ابعاد : 25*55*240', 1, -1, 1, 1, 'در 5 رنگ متفاوت ', 116, 'Product/139/139_thumb.png', 'Product/139/139_medium.png', 'Product/139/139.png');
insert into [tblProductDesc] values(140, 'آجر نسوز پلاک  5/5 سانتی شاموتی', 13, '          ', 0, '', '1392/03/21', '', 'ابعاد : 25*55*240', 1, -1, 1, 1, 'در 3 رنگ متفاوت', 116, 'Product/140/140_thumb.png', 'Product/140/140_medium.png', 'Product/140/140.png');
insert into [tblProductDesc] values(141, 'آجر نسوز پلاک  7  سانتی ( نمای انگیسی )', 13, '          ', 0, '', '1392/03/21', '', 'ابعاد: 27*70*310', 1, -1, 1, 1, 'در 5 رنگ متفاوت ', 116, 'Product/141/141_thumb.png', 'Product/141/141_medium.png', 'Product/141/141.png');
insert into [tblProductDesc] values(142, 'ا ل نسوز 5/5 سانتی ( انگلیسی)', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 55*100*200', 1, -1, 1, 1, null, 116, 'Product/142/142_thumb.png', 'Product/142/142_medium.png', 'Product/142/142.png');
insert into [tblProductDesc] values(143, 'ا ل نسوز 5/5 سانتی شاموتی ', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 55*100*200', 1, -1, 1, 1, null, 116, 'Product/143/143_thumb.png', 'Product/143/143_medium.png', 'Product/143/143.png');
insert into [tblProductDesc] values(144, 'ا ل نسوز 7 سانتی (انگلیسی ) ', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 40*100*200', 1, -1, 1, 1, null, 116, 'Product/144/144_thumb.png', 'Product/144/144_medium.png', 'Product/144/144.png');
insert into [tblProductDesc] values(145, 'آجر نسوز کف', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 40*100*200', 1, -1, 1, 1, null, 116, 'Product/145/145_thumb.png', 'Product/145/145_medium.png', 'Product/145/145.png');
insert into [tblProductDesc] values(146, 'آجر نمای پلاک قرمز  6 سانتی ', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 20*60*260', 1, -1, 1, 1, null, 116, 'Product/146/146_thumb.png', 'Product/146/146_medium.png', 'Product/146/146.png');
insert into [tblProductDesc] values(147, 'آجر نمای پلاک پوست پیازی و گلبهی 6 سانتی', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 20*60*260', 1, -1, 1, 1, null, 116, 'Product/147/147_thumb.png', 'Product/147/147_medium.png', 'Product/147/147.png');
insert into [tblProductDesc] values(148, 'ا ل قرمز و پیازی 6 سانتی ', 37, '          ', 0, '', '1392/03/21', '', 'ابعاد: 60*100*200', 1, -1, 1, 1, null, 116, 'Product/148/148_thumb.png', 'Product/148/148_medium.png', 'Product/148/148.png');
insert into [tblProductDesc] values(149, 'آجر نمای پلاک (پرتقالی ) 6 سانتی ', 14, '          ', 0, '', '1392/03/21', '', 'ابعاد: 20*60*260', 1, -1, 1, 1, null, 116, 'Product/149/149_thumb.png', 'Product/149/149_medium.png', 'Product/149/149.png');
insert into [tblProductDesc] values(150, 'آجر ده سوراخه چهار طرف نما', 14, '          ', 0, '', '1392/03/21', '', 'ابعاد: 55*100*215', 1, -1, 1, 1, '', 116, 'Product/150/150_thumb.png', 'Product/150/150_medium.png', 'Product/150/150.png');
insert into [tblProductDesc] values(151, 'گیره داربست', 37, '          ', 0, '', '1392/03/21', 'ok3', '', 1, -1, 1, 1, null, 858, 'Product/151/151_thumb.png', 'Product/151/151_medium.png', 'Product/151/151.png');
insert into [tblProductDesc] values(152, 'pin', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 858, 'Product/152/152_thumb.png', 'Product/152/152_medium.png', 'Product/152/152.png');
insert into [tblProductDesc] values(153, 'گیره داربست', 37, '          ', 0, '', '1392/03/21', 'rotery', '', 1, -1, 1, 1, null, 858, 'Product/153/153_thumb.png', 'Product/153/153_medium.png', 'Product/153/153.png');
insert into [tblProductDesc] values(154, 'kafi', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 858, 'Product/154/154_thumb.png', 'Product/154/154_medium.png', 'Product/154/154.png');
insert into [tblProductDesc] values(155, 'تیغه دیواری  7  ساده', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/155/155_thumb.png', 'Product/155/155_medium.png', 'Product/155/155.png');
insert into [tblProductDesc] values(156, 'تیغه دیواری  13/5  ساده', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/156/156_thumb.png', 'Product/156/156_medium.png', 'Product/156/156.png');
insert into [tblProductDesc] values(157, 'تیغه دیواری  10   ساده', 8, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/157/157_thumb.png', 'Product/157/157_medium.png', 'Product/157/157.png');
insert into [tblProductDesc] values(159, 'جدول عروسکی', 37, '          ', 0, '', '1392/03/21', '', '', 1, 22, -1, 1, null, 866, null, null, null);
insert into [tblProductDesc] values(160, 'جدول 30', 37, '          ', 0, '', '1392/03/21', '', '', 1, 22, -1, 1, null, 866, 'Product/160/160_thumb.png', 'Product/160/160_medium.png', 'Product/160/160.png');
insert into [tblProductDesc] values(161, 'تیغه دیواری  عایقدار    10', 8, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/161/161_thumb.png', 'Product/161/161_medium.png', 'Product/161/161.png');
insert into [tblProductDesc] values(162, 'تیغه دیواری   15   ساده', 11, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/162/162_thumb.png', 'Product/162/162_medium.png', 'Product/162/162.png');
insert into [tblProductDesc] values(163, 'جدول فانتزی', 37, '          ', 0, '', '1392/03/21', '', '', 1, 22, -1, 1, 'کليه قطعات بتوني به غير از انواع کفپوش توليدي ، محصول schlosser آلمان مي باشد. اين واحد توليدي مبدا انقلابي بود که استفاده از جداول پرسي نوين را در سطح کشور مرسوم نمود ،چرا که کيفيت بالاي توليدات اين واحد و رعايت اصول توليد و تهيه مواد اوليه مرغوب و کنترل و آزمايش روزانه آنها ، رمز موفقيت ماست.', 866, 'Product/163/163_thumb.png', 'Product/163/163_medium.png', 'Product/163/163.png');
insert into [tblProductDesc] values(164, 'تیغه دیواری   15  عایقدار', 8, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/164/164_thumb.png', 'Product/164/164_medium.png', 'Product/164/164.png');
insert into [tblProductDesc] values(165, 'تیغه دیواری   20', 8, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/165/165_thumb.png', 'Product/165/165_medium.png', 'Product/165/165.png');
insert into [tblProductDesc] values(166, 'آجر  (سفال  نما  )', 14, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/166/166_thumb.png', 'Product/166/166_medium.png', 'Product/166/166.png');
insert into [tblProductDesc] values(167, 'بلوک سقفی   20', 12, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/167/167_thumb.png', 'Product/167/167_medium.png', 'Product/167/167.png');
insert into [tblProductDesc] values(168, 'بلوک  سقفی   25', 11, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/168/168_thumb.png', 'Product/168/168_medium.png', 'Product/168/168.png');
insert into [tblProductDesc] values(169, 'بلوک  سقفی  کرومیت   60', 12, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/169/169_thumb.png', 'Product/169/169_medium.png', 'Product/169/169.png');
insert into [tblProductDesc] values(170, 'بلوک سقفی کرومیت  66', 12, '          ', 0, '', '1392/03/21', '', '', 1, -1, 1, 1, null, 96, 'Product/170/170_thumb.png', 'Product/170/170_medium.png', 'Product/170/170.png');
insert into [tblProductDesc] values(171, 'پنل ام دی اف', 37, '          ', 0, '', '1392/03/21', 'MDF panel', '', 1, -1, 1, 1, null, 581, 'Product/171/171_thumb.png', 'Product/171/171_medium.png', 'Product/171/171.png');
insert into [tblProductDesc] values(172, 'سامیکس (ملات آماده برای مصرف )', 37, '          ', 0, '', '1392/03/21', '', '', 1, -1, -1, 1, 'موارد مصرف:

مصارف عمومی بنائی، تعمیرات، نمای داخلی، نمای بیرونی ساختمان، موزائیک در جا و بند کشی و سایر موارد مشابه.

روش مصرف:

محتویات داخل کیسه را در یک ظرف با مقدار 3 لیتر آب تمیز مخلوط و ملات ساخته شده را حداکثر ظرف مدت 1 ساعت استفاده نمائید.

مراقبت کاربرد:

در زمان کاربرد از تماس مستقیم پوست با ملات ساخته شده خودداری نموده و از دستکش مناسب استفاده نمائید.
', 75, 'Product/172/172_thumb.png', 'Product/172/172_medium.png', 'Product/172/172.png');
insert into [tblProductDesc] values(173, 'سیمان رنگی', 5, '          ', 0, '', '1392/03/21', '', '', 1, -1, -1, 1, 'یکی از نیازهای بازار امروز سیمان های زینتی است .( سیمان رنگی ). این محصول می بایست علاوه بر داشتن مقاومت و پایداری لازم ( حدود تعریف شدهء استاندارد سیمان سفید ) دارای تنوع قابل قبولی در رنگ باشد . علاوه بر آن ، رنگ این محصول باید دارای میزان منطقی ثبات در برابر نور آفتاب( اشعه UV) و سایش آب ( ریزش باران ) باشد.

 شرکت سیمان سفید بنوید با توجه به اینکه یکی از اصلی ترین اهداف خود را ارائه محصولات با کیفیت به بازار قرار داده است ، تحقیقات فراوانی در این زمینه صورت داده تا بتواند سیمان رنگی خود را با کیفیت و قیمت مناسب در اختیار مشتریان قرار دهد . در این راستا ، هم اکنون این شرکت آماده است تا محصولات زیر را در قالب سیمان رنگی در اختیار مشتریان خود قرار دهد این شرکت آماده است تا علاوه بر رنگ های موجود ، در موارد خاص ( حجم بالا ) نسبت به تولید سیمان رنگی با مشخصات ویژهء مورد نیاز مشتریان نیز اقدام نماید .

1.      سیمان رنگی قرمز :

RE15 – سیمان با رنگ قرمز کمرنگ

RE30 – سیمان با رنگ قرمز متوسط

2.      سیمان رنگی زرد :

YE15 – سیمان با رنگ زرد کمرنگ

YE30 – سیمان با رنگ زرد متوسط

3.      سیمان رنگی قهوه ای :

BR15 – سیمان با رنگ قهوه ای کمرنگ

BR30 – سیمان با رنگ قهوه ای متوسط

4.      سیمان رنگی آبی :

BL15 – سیمان با رنگ آبی کمرنگ

BL30 – سیمان با رنگ آبی متوسط

5.      سیمان رنگی سبز :

GR15 – سیمان با رنگ سبز کمرنگ

GR30 – سیمان با رنگ سبز متوسط
', 75, 'Product/173/173_thumb.png', 'Product/173/173_medium.png', 'Product/173/173.png');
insert into [tblProductDesc] values(174, 'سیمان سفید', 5, '          ', 0, '', '1392/03/21', '', '', 1, -1, -1, 1, 'معادن منطقه بنوید دارای سنگ آهک با خلوص بسیار بالا می باشد. کنترل کیفی مداوم با تجهیزات بسیار مدرن آزمایشگاهی (شیمی ،فیزیک ،ایکس ری) و استفاده از نیروی انسانی متخصص و آموزش دیده، محصول این کارخانه را در بالاترین استانداردهای کیفی قرار داده است.', 75, 'Product/174/174_thumb.png', 'Product/174/174_medium.png', 'Product/174/174.png');
insert into [tblProductDesc] values(175, 'دیوار پی وی سی', 37, '          ', 0, '', '1392/03/22', 'pvc wall skirting', '', 1, -1, 1, 1, 'در 3 رنگ متفاوت', 581, 'Product/175/175_thumb.png', 'Product/175/175_medium.png', 'Product/175/175.png');
insert into [tblProductDesc] values(176, 'پی وی سی دامپا', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 581, 'Product/176/176_thumb.png', 'Product/176/176_medium.png', 'Product/176/176.png');
insert into [tblProductDesc] values(177, 'درب بالکن', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/177/177_thumb.png', 'Product/177/177_medium.png', 'Product/177/177.png');
insert into [tblProductDesc] values(178, 'باز شو  تک حالته', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/178/178_thumb.png', 'Product/178/178_medium.png', 'Product/178/178.png');
insert into [tblProductDesc] values(179, 'باز شو قوس دار ', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/179/179_thumb.png', 'Product/179/179_medium.png', 'Product/179/179.png');
insert into [tblProductDesc] values(180, 'پنجره فرانسوی دو تکه', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/180/180_thumb.png', 'Product/180/180_medium.png', 'Product/180/180.png');
insert into [tblProductDesc] values(181, 'پنجره فرانسوی', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/181/181_thumb.png', 'Product/181/181_medium.png', 'Product/181/181.png');
insert into [tblProductDesc] values(182, 'درب ورودی  (  فرانسوی  )', 38, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/182/182_thumb.png', 'Product/182/182_medium.png', 'Product/182/182.png');
insert into [tblProductDesc] values(183, 'اتصال  چند پنجره با زاویه', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, -1, 1, null, 37, 'Product/183/183_thumb.png', 'Product/183/183_medium.png', 'Product/183/183.png');
insert into [tblProductDesc] values(184, 'درب فولکس واگنی', 38, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/184/184_thumb.png', 'Product/184/184_medium.png', 'Product/184/184.png');
insert into [tblProductDesc] values(185, 'درب  کشویی', 38, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 37, 'Product/185/185_thumb.png', 'Product/185/185_medium.png', 'Product/185/185.png');
insert into [tblProductDesc] values(186, 'دربهای شیشه ای', 38, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 698, 'Product/186/186_thumb.png', 'Product/186/186_medium.png', 'Product/186/186.png');
insert into [tblProductDesc] values(187, 'دربهای پارکینگی', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 698, null, null, null);
insert into [tblProductDesc] values(188, 'ساندویچ پانل', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, 'ساندویچ پانل شادولاین 5 گام بارون با عرض   1000   میلیمتر  تولید میگردد .                                                                                                               دارا بودن   5  گام  ذوزنقه در ورق رویه تحمل بار مجاز را در مقایسه با نوع  3  یا  4  گام افزایش قابل ملاحظه ای می دهد .                                             این پانلها همپوشانی کاملی بایکدیگر داشته  و  کاملا آب بندی می گردند  و  با کمک یک نوار عایق میتوان محل همپوشانی را هوا بند نیز نمود .', 352, 'Product/188/188_thumb.png', 'Product/188/188_medium.png', 'Product/188/188.png');
insert into [tblProductDesc] values(189, 'بارون  تایل طرح  تولیپس', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 352, 'Product/189/189_thumb.png', 'Product/189/189_medium.png', 'Product/189/189.png');
insert into [tblProductDesc] values(190, 'قالب سبک     I C F', 37, '          ', 0, '', '1392/03/22', 'I C F', '', 1, -1, 1, 1, null, 352, 'Product/190/190_thumb.png', 'Product/190/190_medium.png', 'Product/190/190.png');
insert into [tblProductDesc] values(191, 'پانل های سه بعدی', 21, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, 'پانلهای پیشساخته سبک دارای دو لایه شبکه فلزی مش  (  mesh  )  در دو طرف بوده  و یک هسته عایق از جنس پلی استایرن خود خاموش شو در میان آن قرار گرفته به  طوری که این سه لایه توسط مفتولهای جانبی مهار شده و بعد از نصب  ، بتن یا گچ روی آن پاشیده می شود .                             ساختمانها با پانل سه بعدی در زمره سیستم های نوین محسوب  و  از امتیازات ساختمانهای پیش ساخته برخوردارند . ', 352, 'Product/191/191_thumb.png', 'Product/191/191_medium.png', 'Product/191/191.png');
insert into [tblProductDesc] values(192, 'سقف کاذب ', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, 'اجرای صحیح سقف کاذب در ساختمان میتواند به میزان قابل توجهی مصرف سوخت را کاهش دهد . سقف کاذب با حذف بخشی از فضای مورد سرمایش و گرمایش میزان مصرف انرژی را که برای این منظور بکار می رود کاهش میدهد  .  سقف کاذب در طبقات فوقانی می تواند از انتقال حرارت بین فضای داخلی و فضای خارج ساختمان بکاهد . استفاده از سقفهای کاذب و اجرای بدون درز و صحیح اینگونه سقفها تبادل حرارتی را کاهش می دهد .          
                      مهمترین دلایل استفاده از سقفهای کاذب   :
        
         1  -    ایجاد رویه ای برای پوشش قسمت زیرین سقف هر طبقه از ساختمان
   
         2  -    ایجاد فضایی برای جاسازی تاسیسات و تجهیزات سبک وزن 

         3  -     بهبود عایق بندی صوتی و  یا  حرارتی  سقف هر طبقه از ساختمان

         4  -      ایجاد سقفی کوتاهتر برای فضاهای داخلی ساختمان

         5  -     ظرافت و زیبایی و استحکام فوق العاده  سقفهای  کاذب', 352, 'Product/192/192_thumb.png', 'Product/192/192_medium.png', 'Product/192/192.png');
insert into [tblProductDesc] values(193, 'بلوکه های سقفی پلی استایرن', 20, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, null, 352, 'Product/193/193_thumb.png', 'Product/193/193_medium.png', 'Product/193/193.png');
insert into [tblProductDesc] values(194, 'کانکس', 37, '          ', 0, '', '1392/03/22', '', '', 1, -1, 1, 1, ' انواع کانکسهای ثابت و صیار گوناگون برای کاربری های  :   ویلایی  ،  مسکونی  ،  اداری  ،  صنعتی  ،  انباری  ،  نگهبانی  ،                   کیوسکهای اطلاع رسانی   ،   باجه های فروش  ،   بازارهای پیش ساخته   ،  انواع کانتینر   ،  اتاقک های اسکان موقت  ،   B  T  S   مخابراتی  ،          کانکس مدرسه   و  .......', 352, 'Product/194/194_thumb.png', 'Product/194/194_medium.png', 'Product/194/194.png');
insert into [tblProductDesc] values(195, 'کنترلها', 37, '          ', 0, '', '1392/03/22', '', 'کنترل روشنایی  ،   کنترل سیستم صوتی  ،     کنترل  شیرهای برقی  (آب و گاز  )  ،  کنترل   آب نما   ،  کنترل  سیستم    H V A C
', 1, -1, -1, -1, '                   
                                    مزایای اجرای سیستم هوشمند سازی 

         ایجاد آسایش و رفاه کامل با اجرای سناریو های متفاوت

         کاهش هزینه های انرژی و جبران هزینه اولیه در بلند مدت

         افزایش ایمنی ساختمان با تعریف کنترلرهای گوناگون

       ', 666, 'Product/195/195_thumb.png', 'Product/195/195_medium.png', 'Product/195/195.png');
insert into [tblProductDesc] values(196, 'سنسورها', 37, '          ', 0, '', '1392/03/22', '', 'سنسور تشخیص حضور و حرکت
سنسور تشخیص حریق ، سنسور تشخیص گاز
سنسور دزدگیر  ،  سنسور تشخیص شدت نور
', 1, -1, -1, -1, 'ایجاد شرایط مطلوب قبل از حظور در منزل از طریق موبایل  و  یا تلفن 
کنترل خودکار چراغهای حیاط و پارکینگ 
قفل اثر انگشتی 
 مانیتور لمسی بر روی دیوار جهت کنترل تمامی سیستمهای منزل 
 فعال کردن امکانات سرویس و حمام به صورت خودکار 
 کنترل تجهیزات آشپزخانه 
انجام کلیه فعالیتها با یک ریموت  کنترل 
 کنترل روشنایی خودکار 
 سناریوهای حالات مختلف  مانند تماشای تلویزیون  ، صرف شام  و  . . . . . . 
 سناریوی خروج از منزل 
 کنترل و نظارت بر خانه از راه دور 
امکان ایجاد تعریف سناریوها بر اساس  فضاهای مختلف', 666, 'Product/196/196_thumb.png', 'Product/196/196_medium.png', 'Product/196/196.png');
insert into [tblProductDesc] values(197, 'پمپ بتن هوایی', 37, '          ', 0, '', '1392/03/23', '', 'پمپ انتقال بتن هوایی', 1, -1, -1, -1, null, 330, 'Product/197/197_thumb.png', 'Product/197/197_medium.png', 'Product/197/197.png');
insert into [tblProductDesc] values(198, 'جرثقیل برجی', 37, '          ', 0, '', '1392/03/23', 'تاور کرین', '', 1, -1, -1, -1, null, 330, 'Product/198/198_thumb.png', 'Product/198/198_medium.png', 'Product/198/198.png');
insert into [tblProductDesc] values(199, 'بلدوزر', 37, '          ', 0, '', '1392/03/23', 'Z D   320-3', '', 1, -1, -1, -1, null, 330, 'Product/199/199_thumb.png', 'Product/199/199_medium.png', 'Product/199/199.png');
insert into [tblProductDesc] values(200, 'بیل هیدرولیکی  چرخ زنجیری', 37, '          ', 0, '', '1392/03/24', '', 'دارای سیستم لوله کشی فابریک جهت نصب چکش  .  سیستم هیدرولیک  kawasaki  اصل    موتور  cummins  اصل   .  دارای باکت سختکار', 1, -1, -1, -1, '                       
                          
                                        ظرفیت باکت  استاندارد         1.10m3

                                        وزن کاری                                 22800kg

                                        مدل موتور                            Cummins  6BTAA5.9-c178

                                        توان موتور                              133KW  178  hp/2000  rpm', 330, 'Product/200/200_thumb.png', 'Product/200/200_medium.png', 'Product/200/200.png');
insert into [tblProductDesc] values(201, 'لیفتراک', 37, '          ', 0, '', '1392/03/24', '', '1/5   الی    3.5  تن     دیزلی', 1, -1, -1, -1, '                                    

                                            مدل   موتور            ISUZU       C240

                                          قدرت   موتور          KW/rpm              35.4/2500  

                                          سازنده                        HELI

                                         نوع موتور                    دیزل', 330, 'Product/201/201_thumb.png', 'Product/201/201_medium.png', 'Product/201/201.png');
insert into [tblProductDesc] values(202, 'پمپ انتقال بتن زمینی', 37, '          ', 0, '', '1392/03/24', '', '', 1, -1, -1, -1, null, 330, null, null, null);
insert into [tblProductDesc] values(203, 'دیزل  ژنراتور', 13, '          ', 0, '', '1392/03/24', '', '', 1, -1, -1, -1, '                   

                                   موتور       CUMMINS         و     ژنراتور      STAMFORD', 330, 'Product/203/203_thumb.png', 'Product/203/203_medium.png', 'Product/203/203.png');
insert into [tblProductDesc] values(204, 'بلوک سبک     C ', 10, '          ', 0, '', '1392/03/24', '', '', 1, -1, 1, 1, '', 455, 'Product/204/204_thumb.png', 'Product/204/204_medium.png', 'Product/204/204.png');
insert into [tblProductDesc] values(205, 'test', 38, '          ', 0, '', '1392/03/25', 'tt', '', 1, -1, -1, -1, null, null, null, null, null);
insert into [tblProductDesc] values(206, 'آلو ویستا', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, 1, 1, '', 583, 'Product/206/206_thumb.png', 'Product/206/206_medium.png', 'Product/206/206.png');
insert into [tblProductDesc] values(207, 'کاج سیاه اروپایی', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

                آغشته به روغن     U V', 578, 'Product/207/207_thumb.png', 'Product/207/207_medium.png', 'Product/207/207.png');
insert into [tblProductDesc] values(208, 'اقاقیای آمریکایی', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

         آغشتهبه لاک مات ', 578, 'Product/208/208_thumb.png', 'Product/208/208_medium.png', 'Product/208/208.png');
insert into [tblProductDesc] values(209, 'راش', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

                  آغشته به لاک   مات  /  آغشته به روغن    U V  /  آغشته به روغن طبیعی ', 578, 'Product/209/209_thumb.png', 'Product/209/209_medium.png', 'Product/209/209.png');
insert into [tblProductDesc] values(210, 'افرا', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

            آغشته به  لاک مات  /  آغشته به روغن  U V   /  آغشته به روغن طبیعی ', 578, 'Product/210/210_thumb.png', 'Product/210/210_medium.png', 'Product/210/210.png');
insert into [tblProductDesc] values(211, 'زبان گنجشک تیره', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, null, 578, 'Product/211/211_thumb.png', 'Product/211/211_medium.png', 'Product/211/211.png');
insert into [tblProductDesc] values(212, 'بلوط تیره آغشته به آهک', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, null, 578, 'Product/212/212_thumb.png', 'Product/212/212_medium.png', 'Product/212/212.png');
insert into [tblProductDesc] values(213, 'بلوط نیمه تیره آغشته به آهک', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

                      آغشته به روغن طبیعی ', 578, 'Product/213/213_thumb.png', 'Product/213/213_medium.png', 'Product/213/213.png');
insert into [tblProductDesc] values(214, 'ببلوط تیره', 37, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

           آغشته به لاک مات   /  آغشته به روغن   U V    /   آغشته  به  روغن  طبیعی', 578, 'Product/214/214_thumb.png', 'Product/214/214_medium.png', 'Product/214/214.png');
insert into [tblProductDesc] values(215, 'بلوط نیمه تیره', 13, '          ', 0, '', '1392/03/25', '', '', 1, -1, -1, -1, '

                       آغشته به لاک مات  /  آغشته به روغن   U V   /   آغشته به روغن طبیعی', 578, null, null, null);
insert into [tblProductDesc] values(216, 'آبگرمکن خورشیدی ', 37, '          ', 0, '', '1392/03/25', '', 'اولین و بزرگترین تولید کننده آبگرمکن خورشیدی  وکیوم تیوپ  در خاورمیانه ', 1, -1, 1, 1, 'دارای تائیدیه از سازمان بهینه سازی مصرف سوخت کشور 

دارای ضمانت  و ده سال خدمات پس از فروش 

دارای گرمکن پشتیبان  جهت استفاده در روزهای بسیار سرد زمستان 

مجهز به سیستم کنترل مرکزیبصورت اتوماتیک

دارای بالاترین تکنولوژی روز دنیا', 387, 'Product/216/216_thumb.png', 'Product/216/216_medium.png', 'Product/216/216.png');
insert into [tblProductDesc] values(217, 'آبگرمکن خورشیدی ', 37, '          ', 0, '', '1392/03/25', '', 'اولین و بزرگترین تولید کننده آبگرمکن خورشیدی  وکیوم تیوپ  در خاورمیانه ', 1, -1, 1, 1, null, 387, 'Product/217/217_thumb.png', 'Product/217/217_medium.png', 'Product/217/217.png');
insert into [tblProductDesc] values(218, 'گلمیخ', 37, '          ', 0, '', '1392/03/25', 'A.S.T', 'گلمیخهای برشگیر ساختمانی    فورج سرد', 1, -1, 1, 1, null, 509, null, null, null);
insert into [tblProductDesc] values(219, 'prodname', 40, '1111112222', 0, '1231211234343', '          ', 'prodshortname1', 'detail1', 2, null, -1, 1, 'مشخصات کلی این کالا به شرح زیر می باشد:<br />
<br />
<br />
<br />
<ul>
    <li>این کالا</li>
    <li>داری سیستم</li>
    <li>خوبی است</li>
</ul>', null, 'Product/219/219_thumb.png', 'Product/219/219_medium.png', 'Product/219/219.png');
insert into [tblProductDesc] values(220, 'گلمیخ', 37, '          ', 0, '', '1392/03/25', 'A.S.T', 'گلمیخهای برشگیر ساختمانی    فورج سرد', 1, -1, 1, 1, null, 509, 'Product/220/220_thumb.png', 'Product/220/220_medium.png', 'Product/220/220.png');
insert into [tblProductDesc] values(221, 'ورق عرشه فولادی ', 37, '          ', 0, '', '1392/03/25', '', 'مجهز به خط تولید  فرم دهی ورقهای ذوزنقه آجدار ', 1, -1, 1, 1, 'در حال حاضر  یکی از متداولترین سقفهایی که در پروزه های ساختمانی  مورد استفاده قرار میگیرد   ، سقفهای کامپوزیت میباشد  .
در این بین سقف کامپوزیت با عرشه ورق فولادی  با توجه به سرعت اجرا ی  بالا  و  صرفه جویی هایی که در مصرف آهن آلات  و  آرماتور دارد  ،              از جایگاه ویژه ای برخودار است  .  با توجه به شرایط حاکم بر پروژه های ساختمانی همواره اجرا  سقف در هر سازه در برنامه زمانبندی  اجرای پروژه      در مسیر بحرانی قرار می گیرد  .  لذا  انتخاب یک سیستم سریع  و  مطمئن از لحاظ فنی و اجرایی می تواند گام موثری در پیشبرد صحیح  ،  سریع  و  اقتصادی  پروژه باشد  .  
در خصوص سقفهای کامپوزیت باعرشه ورق فولادی توجه به سرعت بالای اجرای این سیستم  (  حدود  10  برابر سریعتر  )   باعث شده است تا امروز شاهد روند رو به رشد استفاده از این سیستم در پروژه های ساختمانی باشیم  . ', 509, 'Product/221/221_thumb.png', 'Product/221/221_medium.png', 'Product/221/221.png');
insert into [tblProductDesc] values(222, 'پالت بر خود کششی برقی ', 37, '          ', 0, '', '1392/03/26', '', 'دستگاه از ویژگی های  صرفه جویی در انرژی باتری  ،  کارایی فوق العادهف کارکرد بسیار پایدار   و  آسان  ، ایمنی  و  قابلیت  اطمینان ،  سر و  صدای کم و عدم آلودگی  محیط  زیست  و  . . .   برخوردار است  . ', 1, -1, 1, 1, null, null, null, null, null);
insert into [tblProductDesc] values(223, 'پالت بر خود کششی برقی ', 37, '          ', 0, '', '1392/03/26', '', 'دستگاه از ویژگی های  صرفه جویی در انرژی باتری  ،  کارایی فوق العادهف کارکرد بسیار پایدار   و  آسان  ، ایمنی  و  قابلیت  اطمینان ،  سر و  صدای کم و عدم آلودگی  محیط  زیست  و  . . .   برخوردار است  . ', 1, -1, 1, 1, '
                  استفاده از یک موتور   DC     و جعبه دنده  برای حرکت دستگاه و یک موتور   DC   جداگانه و  سیستم هیدرولیکی برای بالا و پایین بردن تیغه ها  .   
                 مجهز به ترمز االکترو مقناطیسی  خودکار ،  بطوریکه وقتی موتور کار می کی   ترمز دستگان غیر فعال می شود  و زمانی که موتوراز حرکت باز می ایستد تر مز بصورت خودکار فعال میشود  . 

                مجهز به کلید  اضطراری  و  ترمز واکنشی بطوری که در هنگام حرکت به عقب ،  اگر کاربر  بین دستگاه و  مانع پشت سر قرار گیرد  ، با برخورد کلید اضطراری به بدن  وی   دستگاه بطور خودکار   ترمز کرده  و  به سمت جلو تغییر جهت میدهد  .

             مجهز به  میکروپروسسور جهت کنترل و  نیز چند مدار قدرت ،  که دستگاه را با حداکثر توان  و  با  بهترین وجه هدایت می کند  . 

            قابلیت تغییر سرعت  بدون تنش  ،  کنترل و  جبران سازی  درجه  حرارت  ، حفاظت کم یا زیاد  ولتاژ باتری  .

            مجهز  به  سیستم شارژ  خودکاباتری  و  نشانگر   میزان شاژ دستگاه  .

            دارای بوق  و  آلارم هشدار  دهنده  در هنگام پایین آمدن   تیغه ها  ', null, 'Product/223/223_thumb.png', 'Product/223/223_medium.png', 'Product/223/223.png');
insert into [tblProductDesc] values(224, 'نردبانهای کشویی چرخدار', 37, '          ', 0, '', '1392/03/26', '', '', 1, -1, 1, 1, null, 316, 'Product/224/224_thumb.png', 'Product/224/224_medium.png', 'Product/224/224.png');
insert into [tblProductDesc] values(225, 'نردبانهای کشویی چرخدار', 37, '          ', 0, '', '1392/03/26', '', '', 1, -1, 1, 1, '

                      برای دسترسی  به نقاط  مرتفع در ساختمانها ،  مراکز صنعتی   ،    خدماتی و  سالنهای  ورزشی 

                    با سیستم  وینچ ،   گیربکس  دستی   و  قابل جابجایی توسط  نفر  و  امکان  یدک کردن بوسیله خودرو

                    مجهز به بازوهای   تنظیم شونده برای حفظ  تعادل  بیشتر  

                   محکم  ،  با دوام  و   ایمن  با  بکارگیری راحت  و  آسان  

                  نردبانهای  کشویی چرخدار بالان  صنعت  وسیله ای مدرن  و  اقتصادی   جهت استفاده از نیرو  و  امکانات شما  می باشد  .  ', 316, 'Product/225/225_thumb.png', 'Product/225/225_medium.png', 'Product/225/225.png');
insert into [tblProductDesc] values(226, 'پالت بر خود کششی  برقی', 37, '          ', 0, '', '1392/03/26', 'پالت تراک', '', 1, -1, 1, 1, '
                  دارای بوق و آلارم هشدار دهنده در هنگام پایین آمدن تیغه ها

                  مجهز به سیستم شاژ خودکار  باتری  و نشانگر  میزان شارژ دستگاه 

                  قابلیت متعادل کردن سرعت  حرکت دستگاه  متناسب با وزن بار

                  استفاده از یک موتور DC  و جعبه دنده برای حرکت دستگاه  و یک موتور  DC    جداگانه و  سیستم هیدرولیکی برای بالا و پایین کردن 
                     
                  تیغه ها 

                  مجهز به ترمز الکترو مغناتیسی خودکار 

                  مجهز به کلید اضطراری  و ترمز واکنشی', 316, 'Product/226/226_thumb.png', 'Product/226/226_medium.png', 'Product/226/226.png');
insert into [tblProductDesc] values(227, 'پالت بر خود کششی  برقی', 37, '          ', 0, '', '1392/03/26', 'پالت تراک', 'با سیستم هیدرولیکی و برق   D C  ( باتری ) ', 1, -1, 1, 1, null, 316, null, null, null);
insert into [tblProductDesc] values(228, 'لیفتراک خود کششی برقی', 37, '          ', 0, '', '1392/03/26', 'استاکر', '', 1, -1, 1, 1, null, 316, null, null, null);
insert into [tblProductDesc] values(229, 'لیفتراک خود کششی برقی', 37, '          ', 0, '', '1392/03/26', 'استاکر', 'با سیستم هیدرولیک  و برق DC   ( باتری ) 
با بهره گیری از آخرین فن آوری روز و قطعات 
استاندارد', 1, -1, 1, 1, '

                       دارای بوق و آلارم هشدار دهنده در هنگام پایین آمدن تیغه ها

                     مجهز به سیستم شارژ خودکار  (  باتری  ) 

                   قابلیت متعادل کردن سرعت حرکت دستگاه متناسب با وزن بار 

                  استفاده از یک موتور DC       و جعبه دنده برای حرکت دستگاه  و یک موتور DC   جداگانه و سیستم هیدرولیکی برای بالا و پایین بردن تیغها', 316, 'Product/229/229_thumb.png', 'Product/229/229_medium.png', 'Product/229/229.png');
insert into [tblProductDesc] values(230, 'بالابر  سوپر هیدرولیکی بالان صنعت', 37, '          ', 0, '', '1392/03/26', '', 'سیستم هیدرولیک با برق شهری یا باتری 
فشرده و کم هجم
قابل کنترل از داخل سکو و بیرون دستگاه', 1, -1, 1, 1, '
               کلیه مدلها با برق شهری کار میکند .

               کلیه مدلها  با شاسی و چرخ بزرگ قابل یدک می باشند  .

              سیستمها از لحاظ مکانیکی ، برقی و هیدرولیکی در طی زمان آزمایش شده  و  نشان داده که  دوام زیادی دارند .

             بالابر سوپر بالان صنعت با آمیزه ای از فولاد و آلومنیوم و استفاده از قطعات استاندارد در ساخت  .

             دارای سکوی بزرگ و چهار ردیف ریلهای آلومنیومی که روی شاسی فولادی چرخدار قرار دارد و به راحتی جابجا می شود و قابل یدک میباشد .', 316, 'Product/230/230_thumb.png', 'Product/230/230_medium.png', 'Product/230/230.png');
insert into [tblProductDesc] values(231, 'بالابر تعمیر گاهی بالان صنعت', 37, '          ', 0, '', '1392/03/26', '', '', 1, -1, -1, 1, '

                   این نوع بالابر ها در مدلهای مختلف بصورت تک موتور یا دو موتور و نیز پایه دار و بدون پایه باتوجه به موقعیت و مکان و درخواست مشتری

                   عرضه می گردد . 

                                 قابل استفاده برای کلیه اتوموبیلهای سواری 

                                 استفاده مفید از فضای تعمیرگاه 

                                 عدم نیاز به چاله سرویس 

                                 راه اندازی و هدایت دستگاه توسط یک نفر 

                                 نصب و راه اندازی ساده 

                                 پایداری و ایمنی زیاد در حد اکثر ارتفاع کاربردی 

                                  ', 316, 'Product/231/231_thumb.png', 'Product/231/231_medium.png', 'Product/231/231.png');
insert into [tblProductDesc] values(232, 'دستگاه راه بند برقی', 37, '          ', 0, '', '1392/03/26', '', 'مناسب برای کنترل ورود و خروج 
دارای سیستم الکترومکانیک با گیربکس حلزونی       قابل تجهیز به کنترلهای کارت مغناتیسی', 1, -1, 1, 1, '

                             بدنه دستگاه شامل محفظه های فولادی است که تجهیزات مکانیکی و برقی دستگاه در آن قرار می گیرد 

                            در رنگهای متنوع و مطابق سلیقه مشتری

                           بازوی راه بند از پروفیل چهار گوش آلومنیومی تهیه شده که با رنگهای متناسب و در صورت لزوم نوار شب رنگ 

                           با  طولهای  3   تا   5   متر 

                           پایه نگهدارنده بازو به منظور مشخص کردن حریم حرکت بازو  و  همچنین اتکای بازو در حالت افقی در نظر گرفته شده', 316, 'Product/232/232_thumb.png', 'Product/232/232_medium.png', 'Product/232/232.png');
insert into [tblProductDesc] values(233, 'بلوک سبک', 37, '          ', 0, '', '1392/03/26', '', 'طول : 60
ارتفاع: 25', 1, -1, 1, 1, 'عایق حرارتی و صوتی، جذب آب و قابلیت سیمان کاری و سنگ کاری، ترابری ارزان، همگامی با مبحث 18 و 19 ، سازگاری با محیط زیست.', 430, 'Product/233/233_thumb.png', 'Product/233/233_medium.png', 'Product/233/233.png');
insert into [tblProductDesc] values(234, 'بلوک فوق سبک پرسی', 37, '          ', 0, '', '1392/03/27', '', 'ابعاد: 67.5*25*25
         67.5*20*20', 1, -1, 1, 1, 'مزایای استفاده از قطعات پیش ساخته بتنی پرسی :
دوام بالا در برابر سیکل های متناوب یخ و ذوب شدن
مقاوت فشاری و خشمی بالا
کاهش نفوذ پذیری 
مقاوت سایشی مطلوب 
دقت ابعادی بالا
تنوع در طرح و رنگ
حذف رنگ آمیزی های مکرر
بسته بندی مناسب و کاهش دور ریز مصالح 
ارزش افزوده بالا', 430, 'Product/234/234_thumb.png', 'Product/234/234_medium.png', 'Product/234/234.png');
insert into [tblProductDesc] values(235, 'بلوک فوق سبک پرسی  40*20*10', 37, '          ', 0, '', '1392/03/27', '', 'وزن پوکه ای: 5kg
وزن پرلیتی: 3.8kg', 1, -1, 1, 1, 'مزایای استفاده از قطعات پیش ساخته بتنی پرسی :
دوام بالا در برابر سیکل های متناوب یخ و ذوب شدن
مقاوت فشاری و خشمی بالا
کاهش نفوذ پذیری 
مقاوت سایشی مطلوب 
دقت ابعادی بالا
تنوع در طرح و رنگ
حذف رنگ آمیزی های مکرر
بسته بندی مناسب و کاهش دور ریز مصالح 
ارزش افزوده بالا', 430, 'Product/235/235_thumb.png', 'Product/235/235_medium.png', 'Product/235/235.png');
insert into [tblProductDesc] values(236, 'بلوک فوق سبک پرسی 50*20*20', 37, '          ', 0, '', '1392/03/27', '', 'وزن پوکه : 11.2kg
وزن پرلیتی: 8.5kg', 1, -1, 1, 1, 'مزایای استفاده از قطعات پیش ساخته بتنی پرسی :
دوام بالا در برابر سیکل های متناوب یخ و ذوب شدن
مقاوت فشاری و خشمی بالا
کاهش نفوذ پذیری 
مقاوت سایشی مطلوب 
دقت ابعادی بالا
تنوع در طرح و رنگ
حذف رنگ آمیزی های مکرر
بسته بندی مناسب و کاهش دور ریز مصالح 
ارزش افزوده بالا', 430, 'Product/236/236_thumb.png', 'Product/236/236_medium.png', 'Product/236/236.png');
insert into [tblProductDesc] values(237, 'بلوک فوق سبک پرسی 20*20*15', 37, '          ', 0, '', '1392/03/27', '', 'وزن پوکه: 3.5kg
وزن پرلیتی: 2.7kg', 1, -1, 1, 1, 'مزایای استفاده از قطعات پیش ساخته بتنی پرسی :
دوام بالا در برابر سیکل های متناوب یخ و ذوب شدن
مقاوت فشاری و خشمی بالا
کاهش نفوذ پذیری 
مقاوت سایشی مطلوب 
دقت ابعادی بالا
تنوع در طرح و رنگ
حذف رنگ آمیزی های مکرر
بسته بندی مناسب و کاهش دور ریز مصالح 
ارزش افزوده بالا', 430, 'Product/237/237_thumb.png', 'Product/237/237_medium.png', 'Product/237/237.png');
insert into [tblProductDesc] values(238, 'جدول ', 37, '          ', 0, '', '1392/03/27', '', 'قابل اجرا : طراحی شهرسازی و معابر عمومی ، ایجاد فضای سبز و جداسازی معابر عمومی از خیابان ها', 1, -1, 1, 1, 'ابعاد: 40*12*40
ابعاد: 40*15*50', 430, 'Product/238/238_thumb.png', 'Product/238/238_medium.png', 'Product/238/238.png');
insert into [tblProductDesc] values(239, 'دیگ بخار ', 37, '          ', 0, '', '1392/03/27', '', '', 1, -1, 1, 1, 'دیگهای بخار تولیدی این شرکت دارای ظرفیت های متنوعی بوده که بر حسب میزان ظرفیت خروجی یا نظر مشتری در مدلهای مختلف   :
  
                عمودی    ،    افقی     ،  wet  back -  3pass    و   شعله   برگشتی   عرضه می گردد   .  ', 214, 'Product/239/239_thumb.png', 'Product/239/239_medium.png', 'Product/239/239.png');
insert into [tblProductDesc] values(240, 'دیگ روغن داغ', 37, '          ', 0, '', '1392/03/27', '', '', 1, -1, 1, 1, '

             از دیگهای روغن داغ در تولید درجه حرارتهای بالا تا   350  درجه سیلیسیوس   در فشار پایین استفاده می شود که در صنایع گوناگون 

            کاربرد دارند   .

            دیگهای روغن داغ تولیدی شرکت بخار سازه در ظرفیتهای متنوع ساخته شده و  در ساخت این  محصول  ،  فولادهای  17MN4 - DIN  17155

            و  لوله های بدون درز آتش خوار   SH40  -  DIN   17175   مورد استفاده قرار میگیرد .

            برای عایق کاری دیگهای روغن داغ  در داخل پوسته  از سیمان و خاک نسوز و  در خارج پوسته از پشم سنگ استفاده میشود  .', 214, 'Product/240/240_thumb.png', 'Product/240/240_medium.png', 'Product/240/240.png');
insert into [tblProductDesc] values(241, 'سختی گیر ', 37, '          ', 0, '', '1392/03/27', '', '', 1, -1, 1, 1, '

             یکی از عوامل اصلی تشکیل رسوبدر داخل دیگها مبدل های حرارتی و  سایر تجهیزات  ،   بالا بودن سختی آب سیستم  می باشد  . 

            از این رو  قبل از تزریق آب به سیستم بایستی از دستگاه سختی گیر استفاده شود  .   

            رزینهای سختی گیر در یک فرایند شیمیایی سختی آب را به میزان مطلوب کاهش می دهند  . 

           ', 214, 'Product/241/241_thumb.png', 'Product/241/241_medium.png', 'Product/241/241.png');
insert into [tblProductDesc] values(242, 'دیگ  بخار  عمودی ', 37, '          ', 0, '', '1392/03/27', '', '', 1, -1, 1, 1, '
            تجهیزات نصب شده روی  دیگ عبارتند  :

        لول   کنترل
        شیر   و   شیشه   آب نما
        پرشر  سویچ
        مانو  متر 
        سوپاپ اطمینان
        شیر اصلی بخار 
        شیر تخلیه 
        دیسکو  والو
        پمپ
        مشعل
        تابلو  برق کامل  تمام اتوماتیک
            
   
        ', 213, 'Product/242/242_thumb.png', 'Product/242/242_medium.png', 'Product/242/242.png');
insert into [tblProductDesc] values(243, 'دیگ آب گرم  مدل سوپر  دو  پاس شعله برگشتی', 37, '          ', 0, '', '1392/03/28', 'reverse', 'با ظرفیت  از  200000  تا    10.000.000  کیلو     کالری  بر  ساعت     با  انواع سوختهای  گاز  ،  گازوئیل  و   سوخت   مایع   ', 1, -1, 1, 1, '
            دیگهای  سوپر  دو  پاس  در ظرفیتهای   مختلف   با  ورقها  و  لوله های  ابا کیفیت بالا  مطابق با استاندارد  B S 855  ملی ایران

           ساخته می شود  . 

           طراحی مناسب جهت انتقال حرارت بصورت کاملا یکنواخت  در  داخل  دیگ  .

           طراحی ویژه برای به حداقل رساندن آثار  رسوبات در مخزن  آب  .
  
           دیگ مدل سوپر  در  صورت  نصب  و  راه اندازی  صحیح  به  مدت  سه  سال گارانتی  میگردد .', 213, 'Product/243/243_thumb.png', 'Product/243/243_medium.png', 'Product/243/243.png');
insert into [tblProductDesc] values(244, 'دیگ بخار افقی', 37, '          ', 0, '', '1392/03/28', '', 'برای انواع  سوختهای گازی  و گازوئیلی  با ظرفیت تولید بخار از   500kg/h   تا   15000kg/h   با فشار کار  6  -  15  اتمسفر', 1, -1, 1, 1, '
                  دیگهای بخار شرکت بخار گستر  طبرستان  (  متال  دگ )    بر اساس استاندارد بین المللی    B S 2 7 9 0   در ظرفیتهای مختلف  

                 ساخته می شود  . 

                 طراحی منایب  ، بکار بردن مواد اولیه  استاندارد  و  استفاده از دستور العملهای علمی در ساخت  محصولات  ،  ایمنی را افزایش داده 

                و  از  اتلاف  انرژی  میکاهد  و  عمر مفید  دستگاه را بالا میبرد  .

                دیگهای بخار این شرکت در صورت نصب  و  راه اندازی  و  نگهداری  صحیح  به مدت  2  سال  گارانتی  می گردد  .  ', 213, 'Product/244/244_thumb.png', 'Product/244/244_medium.png', 'Product/244/244.png');
insert into [tblProductDesc] values(245, 'هیتر هوای  گرم  مطبوع', 37, '          ', 0, '', '1392/03/28', '', 'هیتر هوای گرم  مدل  سه  پاس  شعله   غیر   مستقیم', 1, -1, 1, 1, '
            موارد   مصرف  :   

                             مرغداری     و     گلخانهها   

                            سالنهای   کاگاهی   و   تولید   

                          خشک کن های  مواد  پلاستیکی  و  خشک کن  های  پنبه

                          استخر ها     و    اماکن   عمومی', 213, 'Product/245/245_thumb.png', 'Product/245/245_medium.png', 'Product/245/245.png');
insert into [tblProductDesc] values(246, 'سختی گیر', 37, '          ', 0, '', '1392/03/28', '', '', 1, -1, 1, 1, '', 213, 'Product/246/246_thumb.png', 'Product/246/246_medium.png', 'Product/246/246.png');
insert into [tblProductDesc] values(247, 'ضد یخ', 37, '          ', 0, '', '1392/03/29', 'conmix TC117', '
1- برای پیشگیری از انجماد آب در بتن هایی که در معرض برودت شدید قرار می¬گیرند.
2- تند کردن گیرش اولیه بتن، خطر آسیب های ناشی از تغییر سریع دمای محیط.
3- کاهش نقطه انجماد و سیال شدن بتن.
4- انجام کارهای ترمیمی در هوای سرد و یخ بندان.
', 1, -1, 1, 1, 'هیدراتاسیون سیمان یک واکنش گرما زا است و از آنجایی که بهتراست¬ هیدراتاسیون سیمان در دمای بین 10 الی25 درجه سانتیگراد و در مدت 28 روز انجام پذیرد و از سوی دیگر گیرش اولیه بتن در دمای 20 درجه سانتیگراد حدود 12 ساعت به طول می انجامد. به این ترتیب برای جلوگیری از یخ زدن بتن در هنگام سرما می بایست زمان گیرایی اولیه را از 12 ساعت به حدود 3 الی5 ساعت کاهش دهیم و این کار توسط ضد یخ بتن انجام پذیر است و با استاندارد BS ISIRI 2930, ASTM C827,5075,BS EN 480-2, ACI 306 R, ASTM C494 type Cمطابقت مطابقت دارد و در دو نوع پودری و مایع تولید و عرضه می گردد.
موارد مصرف
1- برای پیشگیری از انجماد آب در بتن هایی که در معرض برودت شدید قرار می¬گیرند.
2- تند کردن گیرش اولیه بتن، خطر آسیب های ناشی از تغییر سریع دمای محیط.
3- کاهش نقطه انجماد و سیال شدن بتن.
4- انجام کارهای ترمیمی در هوای سرد و یخ بندان.
مزایا
1- TC117 محصولی است که به کمک آن می توان دردمای 5+ تا 15 درجه بتن ریزی نمود. 
2- با افـزودن TC117 واکـنش سیلـیکات موجـود در سیمان که با رسوب کردن لایه¬های هیدورکسید کلسیم روی آن به شدت کند گشته است سرعت می گیرد و حرارت حاصله به تند کردن گیرش بتن، تقلیل خطرات ناشی از افت سریع دمای محیط کمک می کند. 
3- با افزودن TC117 به مخلوط بتن می توان مقدار آب مصرفی را تا 10% کاهش داد بدون انکه در کارایی بتن تغییری ایجاد شود.به این ترتیب فشردگی و تراکم بتن تازه و پایداری بتن سخت شده در برابر سیکل های انجماد افزایش می یابد. 
4- TC117 فاقد کلراید و نیترات بوده و به آرماتورها و بتن آسیبی نمی رساند و با هر نوع سیمان سازگاری دارد. 
میزان مصرف
برای مشخص شدن میزان مصرف به جدول زیر دقت بفرمائید:
میزان مصرف بر حسب درصد وزن سیمان:
در محدوده دما (5+ تا 0) با عیار 300 (2%) با عیار 350 (5/1%) و با عیار 400 (1%)
در محدوده دما (0 تا 5-) با عیار 300 (5/2%) با عیار 350 (2%) و با عیار 400 (5/1%)
در محدوده دما (5- تا 10-) با عیار 300 (3%) با عیار 350 (5/2%) و با عیار 400 (2%) (طبق آئین نامه بهتر است دراین محدوده بتن ریزی متوقف گردد).
روش مصرف
TC117 مصرفی را به داخل تراک ریخته و پس از اختلاط کامل با بتن آماده بتن ریزی را آغاز نمائید. 
هنگام بتن ریزی در هوای سرد به نکات زیر توجه بفرمایید:
1- سطح قالب ها و آرماتورها را از آب و برف و یخ بزدایید. 
2- در صورت امکان آن ها را گرم کنید تا دمای آن ها به بیش از صفر درجه سانتیگراد برسد.
3- دمای بتن را حدود 4 الی 6 درجه سانتیگراد ثابت نگهدارید.
4- در صورت امکان با پوشش مناسب حرارت بتن را حفظ کنید. 
5- در صورت یخ زدن ضد یخ در دماهای خیلی پائین آن ها را در محیط گرم قرار بدهید تا یخ آن باز شود و از حرارت دادن آن جداً خودداری بفرمائید.
6- در صورت لزوم می توان مصالح بویژه آب مصرفی را گرم کرد و با استفاده از پوشش مناسب از اتلاف دمای بتن تازه ریخته شده جلوگیری کرد.
8- در زمان بتن ریزی دمای هیچ قسمت از بتن نباید از 5+ درجه سانتیگراد کمتر شود چون در غیر این صورت فعالیت شیمیائی هیدراتاسیون سیمان جهت گیرش و مقاومت دهی کاملاً متوقف می شود. 

مشخصات فنی نوع مایع
1- رنگ: زرد
2- وزن مخصوص: gr/cm3 1/25
3- PH : 7
4- شرایط و مدت نگهداری : در بسته بندی اولیه و در بسته به دور از سرما و گرما به مدت یک سال
5- بسته بندی: در گالن های 20 و 25 و بشکه های 220 کیلوگرمی
مشخصات فنی نوع پودری:
1- رنگ: سفید
2- وزن مخصوص: gr/cm3 1/95 
3-PH : 7
4- شرایط و مدت نگهداری: در بسته بندی اولیه و در بسته به دور از سرما و گرما و رطوبت به مدت یک سال
', 889, null, null, null);
insert into [tblProductDesc] values(248, 'آجر نما', 14, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/248/248_thumb.png', 'Product/248/248_medium.png', 'Product/248/248.png');
insert into [tblProductDesc] values(249, 'آجر نمای پرسی', 14, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/249/249_thumb.png', 'Product/249/249_medium.png', 'Product/249/249.png');
insert into [tblProductDesc] values(250, 'بلوک سقفی عایقدار', 12, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/250/250_thumb.png', 'Product/250/250_medium.png', 'Product/250/250.png');
insert into [tblProductDesc] values(251, 'تیغه دیواری 15', 11, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/251/251_thumb.png', 'Product/251/251_medium.png', 'Product/251/251.png');
insert into [tblProductDesc] values(252, 'تیغه دیواری 7', 11, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/252/252_thumb.png', 'Product/252/252_medium.png', 'Product/252/252.png');
insert into [tblProductDesc] values(253, 'تیغه دیواری 10', 11, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/253/253_thumb.png', 'Product/253/253_medium.png', 'Product/253/253.png');
insert into [tblProductDesc] values(254, 'تیغه دیواری 10 عایقدار', 11, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/254/254_thumb.png', 'Product/254/254_medium.png', 'Product/254/254.png');
insert into [tblProductDesc] values(255, 'تیغه دیواری 15 عایقدار', 11, '          ', 0, '', '1392/03/29', '', '', 1, -1, 1, 1, null, 892, 'Product/255/255_thumb.png', 'Product/255/255_medium.png', 'Product/255/255.png');
insert into [tblProductDesc] values(256, 'پوکه معدنی', 17, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, null, 893, null, null, null);
insert into [tblProductDesc] values(257, 'بلوک آجری لیکا', 10, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, 'بلوک ليکا در دو شکل تو پر و تو خالي براي کاربرد در ديوار و سقف توليد مي گردد. ضخامت جداره بلوکهاي تو خالي براي بهره گيري بيشتر از وي‍‍ژگيهاي عايق کاري آنها بيش از بلوک هاي سيماني معمولي است،که اين افزايش به خاطر وزن بسيار کم بتن مصرفي اثر چنداني بر وزن نهايي بلوک ندارد.بلوک هاي سبک ليکا در انواع مختلف ديوارهاي پيراموني وتيغه اي توليد شده و داراي کاربرد هاي گسترده اي در انواع ديوارهاي پوشش خارجي ،جدا کننده، نما ،دو جداره ،عايق ،ضد آتش و نيز سقف هاي سبک بتني (تير چه و بلوک )مي باشند.', 893, 'Product/257/257_thumb.png', 'Product/257/257_medium.png', 'Product/257/257.png');
insert into [tblProductDesc] values(258, 'بلوک نیمه 15 لیکا', 10, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, null, 893, 'Product/258/258_thumb.png', 'Product/258/258_medium.png', 'Product/258/258.png');
insert into [tblProductDesc] values(259, 'بلوک 10 لیکا', 10, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, null, 893, 'Product/259/259_thumb.png', 'Product/259/259_medium.png', 'Product/259/259.png');
insert into [tblProductDesc] values(260, 'بلوک 15 لیکا', 10, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, null, 893, 'Product/260/260_thumb.png', 'Product/260/260_medium.png', 'Product/260/260.png');
insert into [tblProductDesc] values(261, 'بلوک 20 لیکا', 10, '          ', 0, '', '1392/03/31', '', '', 1, -1, 1, 1, null, 893, 'Product/261/261_thumb.png', 'Product/261/261_medium.png', 'Product/261/261.png');
insert into [tblProductDesc] values(262, 'بلوک سبک 50', 12, '          ', 0, '', '1392/04/09', '', '', 1, -1, -1, 1, null, 894, 'Product/262/262_thumb.png', 'Product/262/262_medium.png', 'Product/262/262.png');
insert into [tblProductDesc] values(263, 'جدول 500', 37, '          ', 0, '', '1392/04/09', '', '', 1, -1, -1, 1, null, 894, 'Product/263/263_thumb.png', 'Product/263/263_medium.png', 'Product/263/263.png');
insert into [tblProductDesc] values(264, 'کفپوش خشتی', 37, '          ', 0, '', '1392/04/09', '', '', 1, -1, -1, 1, null, 894, 'Product/264/264_thumb.png', 'Product/264/264_medium.png', 'Product/264/264.png');
insert into [tblProductDesc] values(265, 'کفپوش پاپیونی', 37, '          ', 0, '', '1392/04/09', '', '', 1, -1, -1, 1, null, 894, 'Product/265/265_thumb.png', 'Product/265/265_medium.png', 'Product/265/265.png');
insert into [tblProductDesc] values(266, 'کفپوش ترکیبی', 13, '          ', 0, '', '1392/04/09', '', '', 1, -1, -1, 1, null, 894, 'Product/266/266_thumb.png', 'Product/266/266_medium.png', 'Product/266/266.png');
insert into [tblProductDesc] values(267, 'فوم پلی استایرن', 20, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, 'فوم پلی استایرن یکی از فراورده های صنایع پتروشیمی بوده و شکل ظاهری آن از بلورهای ریز تشکیل شده است که در مجاورت فشار و بخار منبسط میگردد ساختار سلولی بسته در بلوک های پلی استایرن ایران فوم مقاومت خوبی در مقابل آب داشته و نیز در برابر فساد پذیری و رشد باکتری از خود محافظت می نماید.
ویژگی های بلوک پلاستوفوم
سبکی قطعه بلوک 
کاهش 30درصدی حجم بتن 
کاهش مصرف فولاد 
کاهش مصرف تیرچه 
صرفه جویی در میزان قالب بندی 
حذف اندود گچ و خاک 
ایمن در مقابل آتش سوزی
حمل و نقل آسان
سرعت زیاد در اجرا 
کاهش هزینه های تهویه مطبوع
ضربه پذیری
مقاوم در برابر آب و رطوبت 
عایق صدا 
جلوگیری از نفوذ حشرات 
ایمن حوادث قهریه 
', 895, 'Product/267/267_thumb.png', 'Product/267/267_medium.png', 'Product/267/267.png');
insert into [tblProductDesc] values(268, 'آجر سفال نما 10 سوراخه', 13, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 896, 'Product/268/268_thumb.png', 'Product/268/268_medium.png', 'Product/268/268.png');
insert into [tblProductDesc] values(269, 'آجر ماشینی 10*20*20', 6, '          ', 0, '', '1392/04/10', 'آجر ماشینی 10*20*20', '', 1, -1, -1, -1, null, 897, 'Product/269/269_thumb.png', 'Product/269/269_medium.png', 'Product/269/269.png');
insert into [tblProductDesc] values(270, 'آجر 10*20*25', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 897, 'Product/270/270_thumb.png', 'Product/270/270_medium.png', 'Product/270/270.png');
insert into [tblProductDesc] values(271, 'آجر20*20*15', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 897, 'Product/271/271_thumb.png', 'Product/271/271_medium.png', 'Product/271/271.png');
insert into [tblProductDesc] values(272, 'آجر25*20*15', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 897, 'Product/272/272_thumb.png', 'Product/272/272_medium.png', 'Product/272/272.png');
insert into [tblProductDesc] values(273, 'آجر ماشینی 15*20*25', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 897, 'Product/273/273_thumb.png', 'Product/273/273_medium.png', 'Product/273/273.png');
insert into [tblProductDesc] values(274, 'آجر15*20*40', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 897, 'Product/274/274_thumb.png', 'Product/274/274_medium.png', 'Product/274/274.png');
insert into [tblProductDesc] values(275, 'بولت عصایی', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/275/275_thumb.png', 'Product/275/275_medium.png', 'Product/275/275.png');
insert into [tblProductDesc] values(276, 'بولت بیرونی500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/276/276_thumb.png', 'Product/276/276_medium.png', 'Product/276/276.png');
insert into [tblProductDesc] values(277, 'بولت تمام رزوه 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/277/277_thumb.png', 'Product/277/277_medium.png', 'Product/277/277.png');
insert into [tblProductDesc] values(278, 'گیره متوسط لوله به قالب', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/278/278_thumb.png', 'Product/278/278_medium.png', 'Product/278/278.png');
insert into [tblProductDesc] values(279, 'هارد فیکس 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/279/279_thumb.png', 'Product/279/279_medium.png', 'Product/279/279.png');
insert into [tblProductDesc] values(280, 'میکس فیکس 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/280/280_thumb.png', 'Product/280/280_medium.png', 'Product/280/280.png');
insert into [tblProductDesc] values(281, 'مین بولت پلاستیکی 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/281/281_thumb.png', 'Product/281/281_medium.png', 'Product/281/281.png');
insert into [tblProductDesc] values(282, 'مهره بولت 500', 37, '          ', 1, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/282/282_thumb.png', 'Product/282/282_medium.png', 'Product/282/282.png');
insert into [tblProductDesc] values(283, 'نبشی پانچ شده500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/283/283_thumb.png', 'Product/283/283_medium.png', 'Product/283/283.png');
insert into [tblProductDesc] values(284, 'پین-گوه 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/284/284_thumb.png', 'Product/284/284_medium.png', 'Product/284/284.png');
insert into [tblProductDesc] values(285, 'واشر 2 لوله 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/285/285_thumb.png', 'Product/285/285_medium.png', 'Product/285/285.png');
insert into [tblProductDesc] values(286, 'واشر کاس', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/286/286_thumb.png', 'Product/286/286_medium.png', 'Product/286/286.png');
insert into [tblProductDesc] values(287, 'ویل فیکس 500', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 898, 'Product/287/287_thumb.png', 'Product/287/287_medium.png', 'Product/287/287.png');
insert into [tblProductDesc] values(288, 'بلوک سبک', 10, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 899, 'Product/288/288_thumb.png', 'Product/288/288_medium.png', 'Product/288/288.png');
insert into [tblProductDesc] values(289, 'مایع کف زا بتن سبک', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, -1, null, 899, 'Product/289/289_thumb.png', 'Product/289/289_medium.png', 'Product/289/289.png');
insert into [tblProductDesc] values(290, 'سفال 500', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 900, 'Product/290/290_thumb.png', 'Product/290/290_medium.png', 'Product/290/290.png');
insert into [tblProductDesc] values(291, 'بلوک نیمه', 11, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, -1, null, 901, 'Product/291/291_thumb.png', 'Product/291/291_medium.png', 'Product/291/291.png');
insert into [tblProductDesc] values(292, 'بلوک تیغه', 11, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 901, 'Product/292/292_thumb.png', 'Product/292/292_medium.png', 'Product/292/292.png');
insert into [tblProductDesc] values(293, 'سفال', 6, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 903, 'Product/293/293_thumb.png', 'Product/293/293_medium.png', 'Product/293/293.png');
insert into [tblProductDesc] values(294, 'آجر 10 سوراخ', 15, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 904, 'Product/294/294_thumb.png', 'Product/294/294_medium.png', 'Product/294/294.png');
insert into [tblProductDesc] values(295, 'اجر گری', 13, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 879, null, null, null);
insert into [tblProductDesc] values(296, 'آجر سیمانی', 13, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, 'مشخصات فنی 
رده مقاومت فشاری بتن (Mpa) 	C20
عیار سیمان (kg/m3) 	400
نسبت آب به سیمان  	w/c<0.3
ابعاد (cm) 	20*10*5



مشخصات آجر سیمانی
•	آجرنما باید عاری از معایب ظاهری مانند ترک خوردگی باشد 
•	خط فصل مشترک سطوح آجرها باید مستقیم و زوایای تلا قی آنها قائمه و سطوح شان صاف باشد. 
•	آجرهای مصرفی در نما باید در برابر یخبندان پایدار باشند و در آزمایش یخ زدگی دچار خرابی ظاهر مانند ورقه ورقه شدن، ترک خوردن و خوردگی نشوند. 
•	پیچیدگی در امتداد سطح بزرگ آجر حداکثر 4 میلیمتر و در امتداد سطح متوسط آجر تا 5 میلیمتر مجاز است. آجر نباید انحنا و فرورفتگی بیش از 5 میلیمتر داشته باشد 
•	آجر باید کاملا ً عمل آوری شده و یکنواخت و سخت باشد و در برخورد با آجر دیگر صدای زنگ دار ایجاد کند. 
•	آجرهای ساختمانی مقاومت خوبی در برابر آتش دارند 
', 905, 'Product/296/296_thumb.png', 'Product/296/296_medium.png', 'Product/296/296.png');
insert into [tblProductDesc] values(297, 'آجر خطایی', 13, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 906, 'Product/297/297_thumb.png', 'Product/297/297_medium.png', 'Product/297/297.png');
insert into [tblProductDesc] values(298, 'آجر نیم گرد', 13, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 906, 'Product/298/298_thumb.png', 'Product/298/298_medium.png', 'Product/298/298.png');
insert into [tblProductDesc] values(299, 'سفال سقفی', 9, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 907, 'Product/299/299_thumb.png', 'Product/299/299_medium.png', 'Product/299/299.png');
insert into [tblProductDesc] values(300, 'آجر نما ', 14, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, 'دیوار چینی نما و سوله های دیواری', 907, 'Product/300/300_thumb.png', 'Product/300/300_medium.png', 'Product/300/300.png');
insert into [tblProductDesc] values(301, 'سفال دیواری ', 8, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 907, 'Product/301/301_thumb.png', 'Product/301/301_medium.png', 'Product/301/301.png');
insert into [tblProductDesc] values(302, 'آجر پلاک نسوز', 37, '          ', 0, '', '1392/04/10', '', '', 1, -1, -1, 1, null, 908, 'Product/302/302_thumb.png', 'Product/302/302_medium.png', 'Product/302/302.png');
insert into [tblProductDesc] values(303, 'گچ طلایی سفید کاری', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'زمان گیرش ( مصرف)

گیرش اولیه گچ طلایی بین 6 تا 8 دقیقه و گیرش ثانویه  آن بین 18 تا 24 دقیقه می باشد .

مشخصات فنی

مقدار زبره گچ طلایی برروی الک با مش 35 (500 میکرون) در حدود 8 گرم می باشد .
 
        7  N/mm2<    مقاوت فشاری  
    2  N/mm2    <   مقاوت خمشی                
بسته بندی

گچ طلایی در پاکت های پلی پروپیلن و با وزن های (5% ±) 33.33 و 40 کیلوگرم بسته بندی و به بازار عرضه
می گردد.                            
 	', 912, 'Product/303/303_thumb.png', 'Product/303/303_medium.png', 'Product/303/303.png');
insert into [tblProductDesc] values(304, 'گچ معمولی', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, ' زمان گیرش ( مصرف)

 گیرش اولیه گچ معمولی بین  5 تا 7 دقیقه و گیرش ثانویه بین 15 تا 21 دقیقه می باشد .

 بسته بندی

  گچ معمولی در پاکت های پلی پروپیلن و با وزن های (5% ±) 40 کیلوگرم بسته بندی و به بازار عرضه 
می گردد.                            

 مشخصات فنی

 مقدار زبره گچ معمولی برروی الک با مش 35 (500 میکرون) بین 10 تا 12 گرم می باشد .
 	', 912, 'Product/304/304_thumb.png', 'Product/304/304_medium.png', 'Product/304/304.png');
insert into [tblProductDesc] values(305, 'دیوار گچی', 35, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, '	
از دیر باز مهندسین ساختمان ومعماران در پی دست یافتن به دیواری با تمامی مشخصات عملکردی و با حداکثرکارایی در جهت سبک سازی ساختمان، ضد زلزله و دوام و پایداری بوده اند . شرکت سپید گچ ساوه درجهت پاسخ به این نیاز با استفاده از3 خط تولید استاندارد (گرلاخ آلمان) به ابعاد 6/66 *50  اقدام به تولید دیوار گچی با سه ضخامت 7 ، 8 و 10سانتیمتری نموده و یکی از بزرگترین تولید کنندگان دیوار های گچی درایران به شمار می آید.
 
 ویژگی ها و مزایا :
 
سبکی ، نصب سریع و آسان ، صرفه اقتصادی ،  افزایش سطح مفید ، سهولت لوله گذاری  و جا سازی کلید و پریز از مزایای این محصول می باشد.
 
 ابزار و وسایل مورد نیاز اجرای دیوار گچی :
 
 تراز ، نخ ریسمان ، ماله ، رنده  ، اره چوب بر ، چکش لاستیکی ، شیار زن  ، شاخک های اتصال ،  نوارهای درزگیر و لرزه گیر و یک همزن مکانیکی جهت آماده سازی ملات یا چسب مخصوص دیوار گچی .
 
 طرز تهیه ملات یا چسب دیوار گچی :
 
5 کیلوگرم پودر ملات دیوار گچی  به 3.5 لیتر آب اضافه می گردد سپس به آرامی با یک همزن مکانیکی به مدت1 تا 2 دقیقه تا بدست آمدن یک ملات یکسان و همگن ، همزده می شود.
زمان مناسب  برای استفاده از این ملات جهت نصب دیوار ها 45 دقیقه است .
 
مراحل آماده سازی و نصب دیوار های گچی :
 
 ابتدا محل نصب دیوار را به بطور دقیق اندازه گیری وخط کشی نموده ، سپس  در محل مورد نظر ملات ریخته و کمی پس از سفت شدن و شمشه گیری و هموار شدن سطح آن ،اقدام به کار گذاری بلوک های گچی می گردد.
در این مرحله بهتر است فاق(کام ) آن به طرف بالا باشد . برای این منظورمی بایست زبانه دیوار در ردیف اول به وسیله اره بریده شود و سپس با استفاده از ملات ساخته شده اقدام به نصب گردد .
جهت اتصال دیوار به دیوارهای پیرامون ابتدا از نوار لرزه گیر و عایق بندی استفاده نموده و سپس توسط شاخک های اتصال اقدام به نصب می گردد.
پس از پوشاندن فاق(کام) بلوک های زیرین توسط ملات ، بلوک های ردیف های بعدی چیده شده و به کمک چکش لاستیکی قطعات به یکدیگر محکم می شوند . ملات های بیرون آمده از درزها توسط یک کارتک جمع می شود.
 
 توصیه می شود که آخرین ردیف بلوک ها از ناحیه فوقانی ( محل اتصال به سقف) ، بطور اریب بریده شده تا از یک سو نیروی وارده از سقف به سمت بیرون انتقال یابد و از سوی دیگر نصب به آسانی صورت پذیرد، پس از آن محل خالی مانده  با ملات مخصوص پر می گردد .
در صورتیکه ابعاد محل مورد استفاده از ابعاد دیوار گچی کوچک تر بود می توان با یک اره چوب بری قطعه مورد نظر را سایز کرده و در محل خود قرار داد.

مشخصات فنی :

ابعاد 66 /6*50 ( که هر سه قطعه آن یک متر مربع محسوب می کردد) .
 
 وزن هر متر مربع:        کیلوگرم 80 = cm 10 دیوار       
                               کیلوگرم 65 = cm  8  دیوار      
                               کیلوگرم 55 = cm 7  دیوار      
 
 
 مشخصات فنی دیوار گچی
Kg/cm²	40	مقاومت فشاری
Kg/cm²	20	مقاومت خمشی
Kg/cm²	102	مقاومت در برابر ضربه
M2h/kcm²	0.027	اتنقال حرارت در زمان آتش سوزی
db	35	عایق در برابر صوت
K cal/he	0.35	ضریب انتقال حرارت(با رطوبت نسبی 4 تا 5 درصد )
 
بلوک گچی تا ارتفاع 3 متر و با روش ذکر شده قابلیت تحمل هر مقدار فشار باری را داشته و امکان نصب سرویس های بهداشتی و حتی کابینت را دارا می باشد .
همچنین تیغه حاصل از بلوک کچی بطول 6 متر و ارتفاع 5/3 متر نیاز به هیچگونه تقویت کننده ای ندارد .
 
تذکرات :
 
در صورت نیاز به دریل کاری از دریل بدون ضربه استفاده گردد.', 912, 'Product/305/305_thumb.png', 'Product/305/305_medium.png', 'Product/305/305.png');
insert into [tblProductDesc] values(306, 'سیمان پاششی', 37, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'سیمان پاششی محصولی است از گروه ملات های خشک آماده که با افزودنی های خاص جهت اجرای اندودهای داخلی و خارجی بر روی کلیه سطوح از جنس تری دی پنل، آجر، بتن ، سفال ، بلوک سیمانی ، هبلکس و... قابل اجرا است. این محصول بوسیله دستگاه های ملات پاش (خشک پاش) تا دانه بندی حداکثر 3 میلیمتر با سرعت بالا و به صورت تک مرحله ای اجرا می گردد. 
 
روش ساخت ملات :
 
روش ساخت این ملات به وسیله دستگاه گچ پاش و با اختلاط 10 کیلوگرم سیمان پاششی با 2 تا 3 لیتر آب صورت می پذیرد.
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و...اضافه نگردد.
 
روش استفاده :
 
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا  گرد و غبار باشد.
سیمان پاششی در دمای بین 5 تا 35 درجه سانتیگراد قابل استفاده است.
پس از ترمیم حفره ها و لکه گیری خرابی های حاصل از دیوار چینی با توجه به جنس زیر کار، ابتدا دیوارها مرطوب می گردند.
سیمان  پاششی قابلیت اجرا در ضخامت های حداقل 1 سانتیمتر تا حداکثر 2.5 سانتیمتر ، در یک مرحله را دارد . در صورت نیاز به اجرا درضخامت های بیشتر از 2.5 سانتیمتر ، کار بر روی سطوح می بایست طی دو مرحله و پس از گذشت یک روز از اجرای مرحله اول صورت پذیرد.
مدت زمان استفاده از این ملات از زمان پمپاژ در حدود 90 دقیقه می باشد . 
سیمان پاششی با توجه به شرایط آب و هوایی بین یک هفته تا 10 روز آماده بهره برداری می گردد. 
پس از اجرای سیمان پاششی(ماشینی) ازیخ زدن یا خشک شدن سریع آن جلوگیری نمایید.
همچنین می بایست از اجرای این محصول در مناطقی که در معرض وزش باد شدید که منجر به سریع تر خشک شدن این محصول می گردد خودداری گردد. 
 
 
مقدار مصرف :
 
 مقدار مصرف این محصول در ابعاد یک متر مربع با ضخامت یک سانتیمتردر حدود 14.5 کیلوگرم می باشد.
چگالی محصول خشک سیمان پاششی حدود 1450 کیلوگرم بر متر مکعب و مخلوط ترکیب شده با آب حدود 1700 کیلوگرم بر متر مکعب می باشد.
 
 
دوره نگهداری(کیورینگ) :
 
برای دوام و کیفیت بیشتر سیمان پاششی با توجه به شرایط آب و هوایی ، سطوح می بایست در حدود یک هفته پس از زمان اجرا  به دفعات مرطوب گردند.
بسته بندی :
سیمان پاششی در پاکت های لمینت (AD*star ) با وزن 2% ± 35 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه بر روی هم در حدود پنج ماه بوده و پس از باز شدن پاکت  ، سیمان حداکثر تا یک هفته قابل استفاده می باشد.
 ', 912, 'Product/306/306_thumb.png', 'Product/306/306_medium.png', 'Product/306/306.png');
insert into [tblProductDesc] values(307, 'گچ پاششی', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'زمینه های کاربرد :
گچ پاششی یک نوع گچ افزودنی داراست که قابلیت استفاده بر روی کلیه سطوح از قبیل آجر، بتن ، سفال ، بلوک سیمانی ، هبلکس و ...را دارد وبه روش ماشینی و تک مرحله ای با سرعت بالا و دور ریز بسیار کم اجرا می گردد.
گچ پاششی به دلیل دارا بودن مواد افزودنی خاص ، یک نوع گچ سبک با خصوصیات عایق حرارتی و صوتی و چسبندگی بالا است . همچنین دارای مقاومت بیشتری در برابر رطوبت می باشد.
روش ساخت ملات :
این ملات به وسیله دستگاه  گچ پاش و با اختلاط 10 کیلوگرم گچ پاششی با 5.5 تا 6 لیتر آب صورت می پذیرد.
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و یا گچ های دیگر اضافه نگردد.
   
 
روش استفاده :
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا گرد و غبار باشد.
گچ پاششی در دمای بین 5 تا 35 درجه سانتیگراد قابل استفاده است.
 
پس از ترمیم حفره ها و لکه گیری خرابی های حاصل از دیوار چینی با توجه به جنس زیر کار ، ابتدا دیوارها مرطوب می گردند.
 
گچ پاششی  قابلیت اجرا در ضخامت های  حداقل 8 میلیمتر تا حداکثر 2.5 سانتیمتر، در یک مرحله را دارد. در صورت نیاز به اجرا در ضخامتهای بیشتر از 2.5 سانتیمتر، کار بر روی سطح می بایست طی دو مرحله و پس از خشک شدن مرحله اول صورت پذیرد.                         
 
مدت زمان استفاده از این ملات از زمان پمپاژ 120 دقیقه و گیرش نهایی آن  180 دقیقه است. 
 
پس از اجرای گچ پاششی(ماشینی) از یخ زدن یا خشک شدن سریع آن جلوگیری نمایید. همچنین می بایست از اجرای این گچ در مناطقی که در معرض وزش باد شدید که منجر به سریع تر خشک شدن این محصول می گردد خودداری گردد.  
 
گچ پاششی با توجه به شرایط آب و هوایی بین یک هفته تا 10 روز آماده بهره برداری می گردد. 
 
 
 
 مقدار مصرف :
میزان مصرف  این محصول در ابعاد یک متر مربع با ضخامت یک سانتیمتر در حدود 10 کیلوگرم می باشد.  
  
بسته بندی :
گچ پاششی (ماشینی)در پاکت های لمینت ( AD*star) با وزن 2% ± 35 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه بر روی هم درحدود دو ماه بوده و پس از باز شدن پاکت، گچ حداکثر تا یک هفته قابل استفاده می باشد.
 ', 912, 'Product/307/307_thumb.png', 'Product/307/307_medium.png', 'Product/307/307.png');
insert into [tblProductDesc] values(308, 'گچ سیوا', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'زمینه های کاربرد :
 گچ سیوا محصولی است با افزودنی های خاص که به عنوان گچ زیر کار بر روی سطوح مختلف از قبیل آجر، بتن ، سفال ، بلوک سیمانی ، هبلکس و ... به روش دستی وبه آسانی قابل اجرا می باشد.
این محصول بدلیل دارا بودن  مواد افزودنی خاص یک نوع گچ سبک با خصوصیات عایق حرارتی و صوتی است . همچنین دارای مقاومت بیشتری در برابر رطوبت می باشد
 
روش ساخت ملات :
با ترکیب 10 کیلوگرم گچ سیوا با 5 تا 6 لیتر آب و با استفاده از یک همزن برقی حدود 2 تا 3 دقیقه یک ملات گچی همگن پر قوام ,چسبنده و آماده به کار، بدست می آید.
 
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و یا گچ های دیگر اضافه نگردد. 
روش استفاده :
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا گرد و غبار باشد.
گچ سیوا در دمای بین 5 تا 35 درجه سانتیگراد قابل استفاده است.
پس از ترمیم حفره ها و لکه گیری خرابی های حاصل از دیوار چینی با توجه به جنس زیر کار ، ابتدا دیوارها مرطوب می گردند.
چنانچه ضخامت سطح مورد گچ کاری بیشتر از 2.5 سانتیمتر باشد ، گچ کاری می بایست طی دو مرحله و پس از خشک شدن مرحله اول صورت پذیرد.
مدت زمان استفاده از این ملات آماده حدود 60 تا 90 دقیقه و گیرش نهایی آن  120 دقیقه است. 
پس از اجرای گچ سیوا (دستی) ازیخ زدن یا خشک شدن سریع آن جلوگیری نمایید. همچنین می بایست از اجرای این گچ در مناطقی که درمعرض وزش باد شدید که منجر به سریع تر خشک شدن این محصول می گردد خودداری گردد.  
محل گچ کاری شده توسط گچ سیوا با توجه به شرایط آب و هوایی بین یک هفته تا 10 روز آماده بهره برداری می گردد.
 
مقدار مصرف :
میزان مصرف این محصول در ابعاد یک متر مربع با ضخامت یک سانتیمتر در حدود 9 کیلوگرم می باشد. 
 
بسته بندی :
گچ سیوا(دستی) درپاکت های لمینت( AD*star ) با  وزن 2% ± 30 کیلوگرم بسته بندی وبه بازارعرضه می گردد.  
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه  بر روی هم درحدود دو ماه بوده و پس از باز شدن پاکت ، گچ حداکثر تا یک هفته قابل استفاده می باشد.
 ', 912, 'Product/308/308_thumb.png', 'Product/308/308_medium.png', 'Product/308/308.png');
insert into [tblProductDesc] values(309, 'گچ ساتن', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'زمینه های کاربرد :
 
گچ ساتن محصولی فرآوری شده و افزودنی دار است که به عنوان لایه نهایی و پرداخت سطوح گچ کاری شده استفاده می شود.
 
روش ساخت ملات :
 
حدود 6.5 تا 7 لیتر آب را بر روی 10 کیلوگرم گچ ساتن(پرداخت نهایی) اضافه نموده وپس از 3 دقیقه  با استفاده از یک همزن برقی به مدت2 تا 3 دقیقه همزده می شود. این عمل را می بایست تا بدست آمدن یک ملات یک دست ، همگن ، پر قوام و چسبنده ادامه داد.
 باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و یا گچ های دیگر اضافه نگردد.
 
روش استفاده :
 
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا  گرد و غبار باشد.
گچ ساتن در دمای بین 5 تا 35 درجه سانتیگراد قابل استفاده است.
 
پس از اجرای گچ ساتن(پرداخت نهایی) ازیخ زدن یا خشک شدن سریع آن جلوگیری نمایید. همچنین می بایست از اجرای این گچ در مناطقی که در معرض وزش باد شدید که منجر به سریع تر خشک شدن این محصول می گردد خودداری گردد. 
ملات آماده شده می بایست با استفاده از ماله های مخصوص پرداخت کاری در حدود 2 تا 3 میلیمتر بر روی سطح مورد نظر اجرا شود. بدیهی است پس از اتمام کار سطحی کاملا صاف و صیقلی و با قابلیت رنگ پذیری سریع بدست خواهد آمد.             
مدت زمان استفاده از ملات آماده شده حدود 50 تا 70 دقیقه بوده و گیرش نهایی آن 130 است.  
گچ ساتن(پرداخت نهایی) با توجه به شرایط آب و هوایی در حدود 3 روز آماده بهره برداری و نقاشی می گردد.
 
مقدار مصرف :
 
مقدار مصرف  این محصول در ابعاد یک متر مربع با ضخامت یک میلیمتر در حدود  0.5 تا 1 کیلوگرم می باشد.
 
بسته بندی :
گچ ساتن (پرداخت نهایی)در پاکت های لمینت (   AD*star   ) با وزن 2% ± 30 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوای و چیدمان حداکثر هشت کیسه بر روی هم ، در حدود دو ماه بوده و پس از باز شدن پاکت ، گچ حداکثر تا یک هفته قابل استفاده می باشد.
', 912, 'Product/309/309_thumb.png', 'Product/309/309_medium.png', 'Product/309/309.png');
insert into [tblProductDesc] values(310, 'گچ جیبتون ( گچ مخصوص روکش بتن )', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'یکی از مشکلات اساسی در گچ کاری برروی سقف و سطوح بتنی صاف ، عدم چسبندگی ، پوسته و لایه لایه شدن گچ است.
 شرکت سپید گچ ساوه پس از آزمایشات کنترل کیفت در آزمایشگاه تخصصی خود (واقع در محل کارخانه) و بهره گیری از متخصصین کار آزموده و خلاق ، اقدام به تولید گچ جیپتون (مخصوص روکش بتن) نموده است .
 
این محصول از ترکیب گچ یسیار مرغوب (طلایی) و میکرونیزه شده، با افزودنی های مورد نیاز تولید می گردد و به راحتی بر روی دیوار، سقف و سطوح بتنی قابل اجراست . همچنین سریع تر از گچ های معمولی خشک می شود و زمان گیرش آن نسبت به گچ های معمولی بیشتر است. در نتیجه به استادکار زمان لازم جهت پرداخت نمودن سطح را می دهد.
همچنین به علت وجود مواد افزودنی نگهدارنده آب ، سیمان نمی تواند بلافاصله آب موجود در گچ را جذب نموده و باعث پوسته شدن گچ از محل اتصال گردد.
گچ جیپتون در کیسه های پلی پروپلین و با وزن 35 کیلوگرم بسته بندی و به بازار عرضه می شود.
 
ویژگی های گچ جیپتون :
 الف : قدرت چسبندگی بالا ، برروی سقف و سطوح بتنی صاف و صیقلی .
 
ب : استحکام و ماندگاری بیشتر از گچ های معمولی .
 
ج : مقاوم در برابر ترک خوردن و پوسته شدن .
 
د : نرمی و زمان گیرش مناسب برای سرعت و سهولت در اجرای کار.
 
 
روش استفاده :
با ترکیب 10 کیلوگرم گچ جیپتون با 7 تا 8 لیتر آب و با استفاده از یک همزن برقی در حدود 2 دقیقه ، یک ملات گچ همگن ، چسبنده و آماده به کار بدست می آید.
 
زمان گیرش ( مصرف) :
 گیرش اولیه ملات آماده شده 8 تا 12 دقیقه و گیرش ثانویه 20 تا 25 دقیقه است.
 	', 912, 'Product/310/310_thumb.png', 'Product/310/310_medium.png', 'Product/310/310.png');
insert into [tblProductDesc] values(311, 'بتن ترمیمی', 37, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, '	
زمینه های کاربرد :
 محصولی است آماده با افزودنی های خاص که برای  تعمیر و لکه گیری سطوح سیمانی آسیب دیده ، ترمیم ترک های محل اتصالات دیوار به آهن و یا رفع معایبی که در فضاهای داخلی وخارجی ساختمان بوجود آماده است مورد استفاده قرار می گیرد.     
 
 روش ساخت ملات :
 حدود 2.5 تا 3 لیتر آب را بر روی 10 کیلوگرم بتن ترمیمی اضافه نموده و پس از حدود 5 دقیقه با استفاده از یک همزن برقی به مدت2 تا 3 دقیقه هم زده می شود. این عمل را می بایست تا بدست آمدن یک ملات یک دست ، همگن ، پر قوام و چسبنده ادامه داد.
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و ... اضافه نگردد.
 
 روش استفاده
 سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا  گرد و غبار باشد.
سطح زیر کار را مرطوب نموده و سپس ملات آماده شده بتن ترمیمی ، با استفاده از ماله و یا دیگر ابزارآلات بنایی مناسب جهت ترمیم مورد استفاده قرار می گیرد.
چنانچه سطح مورد نظر در اتصال به ستون ها و یا دیگر سطوح فلزی باشد در صورت زنگ زدگی سطوح فلزی، ابتدا میبایست سطح مورد نظر با برس سیمی تمیز و پس از آن به استفاده از ملات آماده شده اقدام نمود.
بتن ترمیمی در دمای بین 5 تا 35 درجه سانتیگراد قابل استفاده است.
 اجرای بتن ترمیمی  در ضخامت های حد اقل 3 سانتیمتر تا حداکثر 6 سانتیمتر در یک مرحله قابل اجراست و در صورت نیاز به اجرا بر روی سطوح با ضخامت های بیشتر ،کار می بایست طی دو مرحله و پس از خشک شدن مرحله اول صورت پذیرد.
پس از اجرای بتن ترمیمی ، ازیخ زدن یا خشک شدن سریع آن جلوگیری نمایید. همچنین می بایست از اجرای این محصول در مناطقیکه در معرض وزش باد شدید که منجر به سریع تر خشک شدن این محصول می گردد خودداری گردد.   
بتن ترمیمی با توجه به شرایط آب و هوایی بین یک هفته تا 10 روز آماده بهره برداری می گردد.
 
مقدار مصرف :
مقدار مصرف این محصول در ابعاد یک متر مربع با ضخامت یک سانتیمتر حدود 16 کیلوگرم می باشد. 
 
بسته بندی :
بتن ترمیمی  در پاکت های لمینت ( AD*star   ) با وزن 2% ± 35 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه بر روی هم در حدود پنج ماه بوده و پس از باز شدن پاکت ،سیمان حداکثر تا یک هفته قابل استفاده می باشد.', 912, 'Product/311/311_thumb.png', 'Product/311/311_medium.png', 'Product/311/311.png');
insert into [tblProductDesc] values(312, 'چسب کاشی', 37, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, '		
 	
زمینه های کاربرد :
چسب کاشی محصولی است با پایه سیمانی و افزودنی های خاص که جهت (نصب)چسباندن کاشی و سرامیک بر روی سطوح از قبل آماده شده سیمانی و یا  بر روی کاشی های قدیمی و ... استفاده می گردد.  
 
روش ساخت ملات :
برای ساخت این ملات  ابتدا 10 کیلوگرم  چسب کاشی و 2.5 تا 3  لیتر آب ، با یکدیگر مخلوط و بوسیله یک دستگاه همزن برقی چند ثانیه همزده می شود . پس از حدود 5 دقیقه مجددا این عمل تا بدست آمدن یک ملات خمیری یکدست ادامه می یابد.   
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و ... اضافه نگردد.
 
روش استفاده :
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا  گرد و غبار باشد.
سطح زیر کار را کمی مرطوب نموده و پس از آماده سازی ملات چسب کاشی با استفاده از یک ماله شانه ای تا ضخامت 3 تا 10 میلیمتر چسب کاشی را پهن نموده و سپس اقدام به نصب کاشی ها می گردد.
قبل از چسباندن ، کاشی ها را می بایست مرطوب نموده تا عمل چسبیدن چسب به پشت کاشی بصورت کامل صورت پذیرد.  
چنانچه از کاشی های بزرگتر از ابعاد 20 * 20 سانتیمتر استفاده شود ،علاوه بر سطح کار، پشت کاشی نیزمی بایست به چسب کاشی آغشته گردد.
بندهای کاشی را می توان پس از 24 ساعت از اجرای کاشی کاری، با استفاده از پودر بندکشی(درزبندی)  پر نمود.          
از ملات خمیری شکل آماده شده می توان تا حدود 20 دقیقه جهت اجرای کاشی کاری استفاده کرد. این ملات پس از 2.5 ساعت به گیرش نهایی خواهد رسید.
    
مقدار مصرف  :
 مقدار مصرف چسب کاشی 4.5 کیلوگرم بر متر مربع می باشد.
 
مقدار مصرف چسب کاشی
سایز شیار ماله (mm)	 مقدار مصرف(kgm²)
3	 2
4	 2-3
6	 4
6	 5-6
بسته بندی :
چسب کاشی در پاکت های لمینت ( AD*star ) و یا کاغذی با وزن 2% ± 25 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه بر روی هم در حدود پنج ماه بوده و پس از باز شدن پاکت ، حداکثر تا یک هفته قابل استفاده می باشد.
 
 مشخصات فنی :
 
مشخصات فنی چسپ کاشی
kg/m3	1450 ± 100	چگالی ماده خشک
kg/m3	1650 ± 100	چگالی ماده مرطوب
', 912, 'Product/312/312_thumb.png', 'Product/312/312_medium.png', 'Product/312/312.png');
insert into [tblProductDesc] values(313, 'پودر بند کشی', 37, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, '	
 
 
زمینه های کاربرد :
 
پودر بند کشی و درز بندی محصولی است با پایه سیمانی و افزودنی های خاص که جهت پر کردن مفاصلی (بند فاصله) که از اتصال کاشی ها بواسطه استفاده از بندهای صلیبی بوجود می آید، استفاده می گردد.
این محصول در حال حاضر با توجه به رنگ سیمان پایه ، در دو رنگ سفید و خاکستری تولید و عرضه می گردد.
 
روش ساخت ملات :
 
برای ساخت این ملات ابتدا 10 کیلوگرم پودر بند کشی و 3.5 تا 4 لیتر آب ، بوسیله یک دستگاه همزن برقی به مدت چند ثانیه همزده می شود.
 پس از حدود 5 دقیقه مجددا می بایست این عمل را تا بدست آمدن یک مخلوط خمیری یکدست ادامه داد .   
باید توجه داشت که هنگام ساخت این ملات هیچ گونه مواد افزودنی از قبیل سیمان ، آهک و ...اضافه نگردد.
 
روش استفاده :
 
سطح زیر کار می بایست عاری از هرگونه چربی ، رنگ و یا  گرد و غبار باشد.
ابتدا سطح زیر کار را کمی مرطوب نموده و پس از آماده سازی ، ملات درزبندی را با استفاده از یک ماله لاستیکی مخصوص بر روی کاشی ها پهن نموده تا تمامی مفاصل را در بر گیرد . پس از مدت 45 دقیقه بوسیله یک اسفنج مرطوب ، باقیمانده ملات از روی سطح کاشی ها پاک می گردد.
مدت زمان استفاده از این ملات از زمان ساخت حدود 90 دقیقه می باشد. 
 
مقدار مصرف :
 
 مقدار مصرف این ملات بر اساس سایز کاشی و سایز فاصله مفاصل(بندها) به شرح ذیل می باشد.
 
 
(مقدار مصرف پودر بندکشی (درز بندی
ابعاد کاشی	سایز بند mm (gr/m²)
--	3	4	5	6
10*20	450	625	800	900
  
 
بسته بندی :
 
چسب کاشی در پاکت های لمینت (  AD*star ) و یا کاغذی با وزن 2% ± 25 کیلوگرم بسته بندی و به بازار عرضه می گردد.
مدت ماندگاری این محصول با توجه به شرایط آب و هوایی و چیدمان حداکثر هشت کیسه بر روی هم در حدود پنج ماه بوده و پس از باز شدن پاکت ، حداکثر تا یک هفته قابل استفاده می باشد.
 
 
مشخصات فنی :
 
 
(مشخصات فنی پودر بندکشی (درزبندی
kg/m3	1150 ± 100	چگالی ماده خشک
kg/m3	1900 ± 200	چگالی ماده مرطوب
N/mm2	15 <	مقاومت فشاری
', 912, 'Product/313/313_thumb.png', 'Product/313/313_medium.png', 'Product/313/313.png');
insert into [tblProductDesc] values(314, 'گچ معمولی', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, null, 81, 'Product/314/314_thumb.png', 'Product/314/314_medium.png', 'Product/314/314.png');
insert into [tblProductDesc] values(315, 'گچ ویژه پارس', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'گچ ويژه فارس  با دانه بندي مناسب ، جهت سفيد كاري ساختمان( روكاري ساختمان ) مورد استفاده قرار مي گيرد . اين محصول به صورت بسته بندي در كيسه هاي پلي پروپيلن ۳۵ كيلوگرمي قابل عرضه به بازار مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۶ مش زير ۲ %

۲- مدت زمان گيرش : گيرش اوليه ۷:۰۰ الي ۱۲:۰۰ دقيقه و گيرش ثانويه ۱۷:۰۰ الي ۱۹:۰۰ دقيقه

۳- سفيدي گچ : حداقل ۸۵ درصد

۴- مقاومت گچ : مقاومت فشاري حداقل ۷N/mm2ومقاومت خمشي حداقل۳N/mm2', 913, 'Product/315/315_thumb.png', 'Product/315/315_medium.png', 'Product/315/315.png');
insert into [tblProductDesc] values(316, 'گچ گیبتون', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'گچ گيپتون فارس با اضافه نمودن مواد تركيبي و فرمولاسيون مناسب ، با قدرت چسبندگي بالا بر روي سقف و سطوح صاف و صيقلي مي چسبد . همچنين با استحكام بالا در مقابل ترك خوردن و پوسته شدن مقاوم مي باشد . اين محصول به صورت بسته بندي در كيسه هاي ADSTAR 30 كيلوگرمي قابل عرضه به بازار داخل و خارج از كشور مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۰۰ مش زير ۱ %

۲- مدت زمان گيرش : گيرش اوليه ۲۵:۰۰ الي ۳۰:۰۰ دقيقه و گيرش ثانويه ۴۰:۰۰ الي ۵۰:۰۰ دقيقه

۳- سفيدي گچ : حداقل ۹۰ درصد

۴- مقاومت گچ : مقاومت فشاري حداقل ۶N/mm2

دستورالعمل كاركرد گچ گيپتون به شرح ذيل مي باشد .

· سطوح مورد استفاده بايد از هر گونه مواد چربي ، گرد و غبار پاك شود .
· نسبت اختلاط آب به پودر ۵/۶ تا ۷ ليتر آب براي ۱۰ كيلوگرم پودر مي باشد .
· حداكثر ضخامت مورد استفاده روي سطوح ۵ ميليمتر است .
· قبل از خشك شدن كامل گچ گيپتون ، محصول نهايي را استفاده نماييد .', 913, 'Product/316/316_thumb.png', 'Product/316/316_medium.png', 'Product/316/316.png');
insert into [tblProductDesc] values(317, 'گچ بتونه صنعتی', 7, '          ', 0, '', '1392/04/11', '', '', 1, -1, -1, 1, 'بتونه صنعتي فارس با اضافه نمودن مواد تركيبي و فرمولاسيون مناسب ، با قدرت چسبندگي بالا جهت بتونه كاري  و چسبانيدن قطعات پيش ساخته گچي به طور مثال ديوار هاي پيش ساخته گچي به كار مي رود  . اين محصول به صورت بسته بندي در كيسه هاي پلاستيكي ۱۰ كيلوگرمي قابل عرضه به بازار مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۰۰ مش زير ۱ %

۲- مدت زمان گيرش : گيرش اوليه ۲۵:۰۰ الي ۳۰:۰۰ دقيقه و گيرش ثانويه ۴۰:۰۰ الي ۵۰:۰۰ دقيقه

۳- سفيدي گچ : حداقل ۹۰ درصد

۴- مقاومت گچ : مقاومت فشاري حداقل (N/mm2) 6', 913, 'Product/317/317_thumb.png', 'Product/317/317_medium.png', 'Product/317/317.png');
insert into [tblProductDesc] values(318, 'گچ پاششی', 7, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'گچ پاششي  فارس با اضافه نمودن مواد تركيبي ويژه و فرمولاسيون منحصر به فرد ، محصولي مناسب جهت گچ كاري ساختمان توسط دستگاه گچ پاش و مناسب براي همه نوع مصالح بتني ، سفال ، سيپوركس ، يونوليت ، بلوك ، آجر و  ... ، مي باشد  . اين محصول را مي توان بر روي سطوح مختلف از جمله آجر ، بلوك هاي سفالي و سيماني ، بلوك بتن سبك و پوشش سيماني استفاده نمود .

سطوح بسيار صاف و يا جاذب شديد آب ممكن است به آماده سازي قبلي جهت استفاده از گچ پاششي نياز داشته باشد .

اين محصول به صورت بسته بندي در كيسه هاي ADSTAR 30 كيلوگرمي قابل عرضه به بازار مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۶ مش زير ۱۰ %

۲- مدت زمان گيرش : گيرش اوليه ۵۳ الي ۶۰ دقيقه و گيرش ثانويه ۱۵۰ دقيقه

۳- سفيدي گچ : حداقل ۸۵ درصد

۴- مقاومت گچ : مقاومت فشاري حداقل (N/mm2) 6 و مقاومت خمشي حداقل  (N/mm2) 3

5- آماده سازي :

- گچ پاششي مي بايست بصورت مداوم و يكدست پاشيده و صاف گردد . (به ضخامت دلخواه و از فاصله ۱۰ الي ۱۵ سانتي متري)

- هنگاميكه گچ بطور كافي جامد (سفت شد) مي بايست مقداري نم داده شده و توسط ماله اسفنجي پرداخت گردد و سپس توسط ماله گچكاري مجددا" صاف گردد .

توجه :

۱- درجه دماي محيط كار و سطوحي كه گچ بر آن اجرا مي شود نبايد كمتر از ۵ درجه سانتي گراد باشد .

۲- ابزار هاي دستي كه به كار برده مي شوند مي بايست كاملا" تميز باشند .

- روغن ، گرد و خاك ، آهك و هر گونه كثيفي اگر روي سطوح باشند مي بايست قبل از شروع كار تميز شوند و قطعه هاي شل و سقوط كننده تعمير گردند . قبل از اجراي كار ، بسيار مهم مي باشد كه سطح اجرا بسيار خشك يا خيلي خيس نباشد .

- آب گچ اضافي نمي بايست به ملاتي كه در حال خشك شدن افزوده گردد .

- روي سطوح بتني صيقلي از يك لايه گچ گيپتون به عنوان پوشش اوليه استفاده شود .

- بكار بردن گچ ساتن بر روي گچ پاششي ضروري مي باشد .استفاده از مش (توري) در جايي كه مصالح مختلف با هم برخورد مي كنند توصيه مي گردد .

- در صورت نياز مي توانيم توري را همراه با گچ بر روي كل سطوح به كار برد .

قوانين سلامتي و ايمني :

- در صورت برخورد با پوست با آب شستشو دهيد .

- در صورت برخورد با چشمان آنها را با آب فراوان به مدت ۱۵ دقيقه  شستشو داده  و در صورت ضرورت به درمانگاه مراجعه شود .

- در صورت بلعيدن ، دهان را با آب شستشو داده و سپس آب بنوشيد .

شرايط فني استفاده :

۱- مقدار استفاده : براي ضخامت يك سانتي متر حدود ۵/۸ كيلوگرم بر متر مربع (ضخامت حداقل : ۸/۰ سانتي متر) .

۲- دما : حداقل ۵ درجه سانتي گراد .

۳- تاريخ مصرف : شش ماه پس از تاريخ توليد و هفت روز بعد باز نمودن كيسه توصيه مي گردد .

۴- مدت زمان پرداخت پذيري ۸۰ تا ۱۰۰ دقيقه مي باشد .

۵- مدت زمان گيرش : حدودا ۱۵۰ دقيقه

شرايط انبار داري :

كيسه ها در محل خشك روي پالتها و دور از آب و رطوبت نگهداري شود .

طبقه بندي آتش سوزي :

مصالح ساختماني ضد آتش . A – ۱ ( بر اساس ۱-۱۳۵۰۱ TSEN )

', 913, 'Product/318/318_thumb.png', 'Product/318/318_medium.png', 'Product/318/318.png');
insert into [tblProductDesc] values(319, 'گچ ضد رطوبت', 7, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'گچ ضد رطوبت فارس با اضافه نمودن مواد تركيبي و فرمولاسيون منحصر به فرد ، محصولي مناسب جهت استفاده در محيط هاي در معرض رطوبت به ويژه سرويس هاي بهداشتي ، مي باشد  . اين محصول به صورت بسته بندي در كيسه هاي ADSTAR 30 كيلوگرمي قابل عرضه به بازار داخل و خارج از كشور مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۰۰ مش زير ۱ %

۲- مدت زمان گيرش : گيرش اوليه ۷:۰۰ الي ۸:۰۰ دقيقه و گيرش ثانويه ۱۲:۰۰ الي ۱۴:۰۰ دقيقه

۳- سفيدي گچ : حداقل ۹۰ درصد

۴- مقاومت گچ : مقومت اين نوع گچ پس از قرار گيري در محيط با درصد رطوبت بالا ، ۹۰ درصد مقاومت اوليه گچ مي باشد .', 913, 'Product/319/319_thumb.png', 'Product/319/319_medium.png', 'Product/319/319.png');
insert into [tblProductDesc] values(320, 'گچ میکرونیزه', 7, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'گچ سوپر فارس با دانه بندي ريز و زمان گيرايش مناسب ، جهت لايه آخر رو كاري ساختمان( نرمه كشي يا كشته كشي ) و مصارف متعدد قالب سازي از جمله ساخت قالب هاي پيش ساخته گچي مورد استفاده قرار مي گيرد  . اين محصول به صورت بسته بندي در كيسه هاي ۲۵ كيلوگرمي و بسته بندي در جامبوبگ قابل عرضه به بازار داخل و خارج از كشور مي باشد . مشخصات فني اين گچ به شرح ذيل است .

۱- اندازه دانه :  مانده روي الك ۱۰۰ مش زير ۱ %

۲- مدت زمان گيرش : گيرش اوليه ۷:۰۰ الي ۹:۰۰ دقيقه و گيرش ثانويه ۱۷:۰۰ الي ۱۹:۰۰ دقيقه

۳- سفيدي گچ : حداقل ۹۰ درصد

۴- مقاومت گچ : مقاومت فشاري حداقل (N/mm2) 8 و مقاومت خمشي حداقل (N/mm2) 4', 913, 'Product/320/320_thumb.png', 'Product/320/320_medium.png', 'Product/320/320.png');
insert into [tblProductDesc] values(321, 'سفال تیغه 15', 8, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'ابعاد : 20×25×40
تعداد در هر متر مربع : 8
وزن میانگین : 8300 gr', 915, 'Product/321/321_thumb.png', 'Product/321/321_medium.png', 'Product/321/321.png');
insert into [tblProductDesc] values(322, 'سفال دیواری فوم دار', 8, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'ابعاد : 15×20×25
تعداد در هر متر مربع : 20
وزن میانگین : 4670 gr', 915, 'Product/322/322_thumb.png', 'Product/322/322_medium.png', 'Product/322/322.png');
insert into [tblProductDesc] values(323, 'سفال دیواری تیغه 7', 8, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'ابعاد : 7×20×25
تعداد در هر متر مربع : 20
وزن میانگین : 2490 gr', 915, 'Product/323/323_thumb.png', 'Product/323/323_medium.png', 'Product/323/323.png');
insert into [tblProductDesc] values(324, 'سفال سقفی بلوک 20', 8, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'ابعاد : 20×25×40
تعداد در هر متر مربع : 8
وزن میانگین : 8300 gr', 915, 'Product/324/324_thumb.png', 'Product/324/324_medium.png', 'Product/324/324.png');
insert into [tblProductDesc] values(325, 'سفال سقف 25', 8, '          ', 0, '', '1392/04/12', '', '', 1, -1, -1, 1, 'ابعاد : 25×25×40
تعداد در هر متر مربع : 8
وزن میانگین : 10400 gr
', 915, 'Product/325/325_thumb.png', 'Product/325/325_medium.png', 'Product/325/325.png');
insert into [tblProductDesc] values(326, 'بتن سبک فومی', 33, '          ', 0, '', '1392/04/15', 'پرلکس', '', 1, -1, 1, 1, 'تولید بتن سبک که از آن به عنوان بتن قرن نام می برند توانست ضمن کاهش بار مرده ساختمان از نیروی وارده بر سازه ، در اثر شتاب زلزله کاسته و در صورت تخریب ، وزن آوار را کاهش دهد ضمنا خواص دیگری از قبیل فاق و زباله ، مقاوت در برابر آتش سوزی ، جذب آب وقابلیت سیمان کاری ، عایق رطوبتی ، ترابری ارزان ، دوام و غیرقابل تجزیه بودن ، سازگاری با محیط زیست ، همگام با مبحث 19 و 18 رعایت استانداردهای ملی ساختمان و ... نیز باعث می گردد که هیچ متخصصی در استاده از آن شک نکند.', 917, 'Product/326/326_thumb.png', 'Product/326/326_medium.png', 'Product/326/326.png');
insert into [tblProductDesc] values(327, 'بتن آماده', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 917, 'Product/327/327_thumb.png', 'Product/327/327_medium.png', 'Product/327/327.png');
insert into [tblProductDesc] values(328, 'جدول 5/5*40*40', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/328/328_thumb.png', 'Product/328/328_medium.png', 'Product/328/328.png');
insert into [tblProductDesc] values(329, 'کف پوش 10*10*6', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/329/329_thumb.png', 'Product/329/329_medium.png', 'Product/329/329.png');
insert into [tblProductDesc] values(330, 'کف پوش 6*10*10', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/330/330_thumb.png', 'Product/330/330_medium.png', 'Product/330/330.png');
insert into [tblProductDesc] values(331, 'کف پوش 6*10*20', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/331/331_thumb.png', 'Product/331/331_medium.png', 'Product/331/331.png');
insert into [tblProductDesc] values(332, 'کف پوش پاپیونی', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/332/332_thumb.png', 'Product/332/332_medium.png', 'Product/332/332.png');
insert into [tblProductDesc] values(333, 'کف پوش 14*30*40', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/333/333_thumb.png', 'Product/333/333_medium.png', 'Product/333/333.png');
insert into [tblProductDesc] values(334, 'جدول 7*35*30*22', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/334/334_thumb.png', 'Product/334/334_medium.png', 'Product/334/334.png');
insert into [tblProductDesc] values(335, 'جدول 15*50*30', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/335/335_thumb.png', 'Product/335/335_medium.png', 'Product/335/335.png');
insert into [tblProductDesc] values(336, 'جدول 15*40*60', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/336/336_thumb.png', 'Product/336/336_medium.png', 'Product/336/336.png');
insert into [tblProductDesc] values(337, 'جدول 15*30*40', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/337/337_thumb.png', 'Product/337/337_medium.png', 'Product/337/337.png');
insert into [tblProductDesc] values(338, 'جدول 15*50*35', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/338/338_thumb.png', 'Product/338/338_medium.png', 'Product/338/338.png');
insert into [tblProductDesc] values(339, 'جدول 15*30*40', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, null, null, null);
insert into [tblProductDesc] values(340, 'جدول 15*50*50', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/340/340_thumb.png', 'Product/340/340_medium.png', 'Product/340/340.png');
insert into [tblProductDesc] values(341, 'جدول  15*30*70', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/341/341_thumb.png', 'Product/341/341_medium.png', 'Product/341/341.png');
insert into [tblProductDesc] values(342, 'جدول 15*30*35', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, null, null, null);
insert into [tblProductDesc] values(343, 'جدول 15*30*35', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/343/343_thumb.png', 'Product/343/343_medium.png', 'Product/343/343.png');
insert into [tblProductDesc] values(344, 'دیوارهای پیش ساخته', 37, '          ', 0, '', '1392/04/15', 'نیوجرسی', '', 1, -1, 1, 1, null, 918, 'Product/344/344_thumb.png', 'Product/344/344_medium.png', 'Product/344/344.png');
insert into [tblProductDesc] values(345, 'دیوارهای پیش ساخته 90*220*300', 37, '          ', 0, '', '1392/04/15', 'نیوجرسی', '', 1, -1, 1, 1, null, 918, 'Product/345/345_thumb.png', 'Product/345/345_medium.png', 'Product/345/345.png');
insert into [tblProductDesc] values(346, 'بلوک دیواری سبک', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/346/346_thumb.png', 'Product/346/346_medium.png', 'Product/346/346.png');
insert into [tblProductDesc] values(347, 'بلوک دیواری سبک 10*25*60', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/347/347_thumb.png', 'Product/347/347_medium.png', 'Product/347/347.png');
insert into [tblProductDesc] values(348, 'بلوک پیش ساخته 20*20*40', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/348/348_thumb.png', 'Product/348/348_medium.png', 'Product/348/348.png');
insert into [tblProductDesc] values(349, 'جدول 15*40*80', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/349/349_thumb.png', 'Product/349/349_medium.png', 'Product/349/349.png');
insert into [tblProductDesc] values(350, 'جدول 10*30*60', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/350/350_thumb.png', 'Product/350/350_medium.png', 'Product/350/350.png');
insert into [tblProductDesc] values(351, 'جدول 15*40*80', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/351/351_thumb.png', 'Product/351/351_medium.png', 'Product/351/351.png');
insert into [tblProductDesc] values(352, 'جدول 15*30*70', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/352/352_thumb.png', 'Product/352/352_medium.png', 'Product/352/352.png');
insert into [tblProductDesc] values(353, 'دال مسطح 20*50*70', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/353/353_thumb.png', 'Product/353/353_medium.png', 'Product/353/353.png');
insert into [tblProductDesc] values(354, 'دال مسلح 20*50*70', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/354/354_thumb.png', 'Product/354/354_medium.png', 'Product/354/354.png');
insert into [tblProductDesc] values(355, 'دال مسلح 15*50*70', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/355/355_thumb.png', 'Product/355/355_medium.png', 'Product/355/355.png');
insert into [tblProductDesc] values(356, 'نیوجرسی 80*110*150', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/356/356_thumb.png', 'Product/356/356_medium.png', 'Product/356/356.png');
insert into [tblProductDesc] values(357, 'نیوجرسی 80*110*300', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/357/357_thumb.png', 'Product/357/357_medium.png', 'Product/357/357.png');
insert into [tblProductDesc] values(358, 'نیوجرسی 40*90*200', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/358/358_thumb.png', 'Product/358/358_medium.png', 'Product/358/358.png');
insert into [tblProductDesc] values(359, 'دال مسلح 20*50*120', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/359/359_thumb.png', 'Product/359/359_medium.png', 'Product/359/359.png');
insert into [tblProductDesc] values(360, 'دال مسلح 15*50*90', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 918, 'Product/360/360_thumb.png', 'Product/360/360_medium.png', 'Product/360/360.png');
insert into [tblProductDesc] values(361, 'ال نیمه یاقوت قرمز 5.2*11*11*4', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/361/361_thumb.png', 'Product/361/361_medium.png', 'Product/361/361.png');
insert into [tblProductDesc] values(362, 'ال نیمه مروارید قرمز  2/5*11*11*4', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/362/362_thumb.png', 'Product/362/362_medium.png', 'Product/362/362.png');
insert into [tblProductDesc] values(363, 'ال نیمه یاقوت قرمز  2/5*11*11*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/363/363_thumb.png', 'Product/363/363_medium.png', 'Product/363/363.png');
insert into [tblProductDesc] values(364, 'ال نیمه مروارید قرمز  2/5*11*11*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/364/364_thumb.png', 'Product/364/364_medium.png', 'Product/364/364.png');
insert into [tblProductDesc] values(365, 'ال یاقوت قرمز  2/5*10*22*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/365/365_thumb.png', 'Product/365/365_medium.png', 'Product/365/365.png');
insert into [tblProductDesc] values(366, 'ال مروارید قرمز  2/5*10*22*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/366/366_thumb.png', 'Product/366/366_medium.png', 'Product/366/366.png');
insert into [tblProductDesc] values(367, 'ال مروارید قرمز  2/5*10*22*4', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/367/367_thumb.png', 'Product/367/367_medium.png', 'Product/367/367.png');
insert into [tblProductDesc] values(368, 'ال یاقوت قرمز  2/5*10*22*4', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/368/368_thumb.png', 'Product/368/368_medium.png', 'Product/368/368.png');
insert into [tblProductDesc] values(369, 'ال یاقوت قرمز  2/5*10*22*6/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/369/369_thumb.png', 'Product/369/369_medium.png', 'Product/369/369.png');
insert into [tblProductDesc] values(370, 'ال یاقوت قرمز  2/5*10*22* 6/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/370/370_thumb.png', 'Product/370/370_medium.png', 'Product/370/370.png');
insert into [tblProductDesc] values(371, 'لفتون یاقوت قرمز 10*21*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/371/371_thumb.png', 'Product/371/371_medium.png', 'Product/371/371.png');
insert into [tblProductDesc] values(372, 'لفتون مروارید قرمز 10*21*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/372/372_thumb.png', 'Product/372/372_medium.png', 'Product/372/372.png');
insert into [tblProductDesc] values(373, 'لفتون یاقوت قرمز 10*21*5/5', 37, '          ', 0, '', '1392/04/15', '', '', 1, -1, 1, 1, null, 112, 'Product/373/373_thumb.png', 'Product/373/373_medium.png', 'Product/373/373.png');
insert into [tblProductDesc] values(374, 'لفتون مروارید قرمز 10*21*5/5', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 112, 'Product/374/374_thumb.png', 'Product/374/374_medium.png', 'Product/374/374.png');
insert into [tblProductDesc] values(375, 'لفتون یاقوت قرمز 10*21*4', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 112, 'Product/375/375_thumb.png', 'Product/375/375_medium.png', 'Product/375/375.png');
insert into [tblProductDesc] values(376, 'لفتون مروارید قرمز 10*21*4', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 112, 'Product/376/376_thumb.png', 'Product/376/376_medium.png', 'Product/376/376.png');
insert into [tblProductDesc] values(377, 'پلاک یاقوت قرمز  2*22*5/5', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 112, 'Product/377/377_thumb.png', 'Product/377/377_medium.png', 'Product/377/377.png');
insert into [tblProductDesc] values(378, 'مرمریت اعلمی نور', 34, '          ', 0, '', '1392/04/16', 'Alamy-light', '', 1, -1, 1, 1, null, 120, 'Product/378/378_thumb.png', 'Product/378/378_medium.png', 'Product/378/378.png');
insert into [tblProductDesc] values(379, 'مرمریت آراگونیت', 34, '          ', 0, '', '1392/04/16', 'Aragonit', '', 1, -1, 1, 1, null, 120, 'Product/379/379_thumb.png', 'Product/379/379_medium.png', 'Product/379/379.png');
insert into [tblProductDesc] values(380, 'مرمریت آباده صورتی', 34, '          ', 0, '', '1392/04/16', 'Abade -pink', '', 1, -1, 1, 1, null, 120, 'Product/380/380_thumb.png', 'Product/380/380_medium.png', 'Product/380/380.png');
insert into [tblProductDesc] values(381, 'مرمریت اعلمی شکلاتی ', 34, '          ', 0, '', '1392/04/16', 'Alamy - choclate', '', 1, -1, 1, 1, null, 120, 'Product/381/381_thumb.png', 'Product/381/381_medium.png', 'Product/381/381.png');
insert into [tblProductDesc] values(382, 'مرمریت نجف آباد سیاه', 34, '          ', 0, '', '1392/04/16', 'najafabad-black', '', 1, -1, 1, 1, null, 120, 'Product/382/382_thumb.png', 'Product/382/382_medium.png', 'Product/382/382.png');
insert into [tblProductDesc] values(383, 'مرمریت بیجانی', 34, '          ', 0, '', '1392/04/16', 'bijany', '', 1, -1, 1, 1, null, 120, 'Product/383/383_thumb.png', 'Product/383/383_medium.png', 'Product/383/383.png');
insert into [tblProductDesc] values(384, 'مرمریت سمیروم', 34, '          ', 0, '', '1392/04/16', 'semirom', '', 1, -1, 1, 1, null, 120, 'Product/384/384_thumb.png', 'Product/384/384_medium.png', 'Product/384/384.png');
insert into [tblProductDesc] values(385, 'مرمریت سبزوار', 34, '          ', 0, '', '1392/04/16', 'sabzevar', '', 1, -1, 1, 1, null, 120, 'Product/385/385_thumb.png', 'Product/385/385_medium.png', 'Product/385/385.png');
insert into [tblProductDesc] values(386, 'مرمریت پارسیان', 34, '          ', 0, '', '1392/04/16', 'parsian', '', 1, -1, 1, 1, null, 120, 'Product/386/386_thumb.png', 'Product/386/386_medium.png', 'Product/386/386.png');
insert into [tblProductDesc] values(387, 'مرمریت بجستان', 34, '          ', 0, '', '1392/04/16', 'bejestan', '', 1, -1, 1, 1, null, 120, 'Product/387/387_thumb.png', 'Product/387/387_medium.png', 'Product/387/387.png');
insert into [tblProductDesc] values(388, 'گرانیت چین قرمز', 34, '          ', 0, '', '1392/04/16', 'chini -Red', '', 1, -1, 1, 1, null, 120, 'Product/388/388_thumb.png', 'Product/388/388_medium.png', 'Product/388/388.png');
insert into [tblProductDesc] values(389, 'گرانیت یزد قرمز', 34, '          ', 0, '', '1392/04/16', 'yazd- Red', '', 1, -1, 1, 1, null, 120, 'Product/389/389_thumb.png', 'Product/389/389_medium.png', 'Product/389/389.png');
insert into [tblProductDesc] values(390, 'گرانیت قم مینیاتور', 34, '          ', 0, '', '1392/04/16', 'miniature', '', 1, -1, 1, 1, null, 120, 'Product/390/390_thumb.png', 'Product/390/390_medium.png', 'Product/390/390.png');
insert into [tblProductDesc] values(391, 'گرانیت هندوستان سبز', 34, '          ', 0, '', '1392/04/16', 'india-green', '', 1, -1, 1, 1, null, 120, 'Product/391/391_thumb.png', 'Product/391/391_medium.png', 'Product/391/391.png');
insert into [tblProductDesc] values(392, 'گرانیت جنگل سبز', 34, '          ', 0, '', '1392/04/16', 'jungle green', '', 1, -1, 1, 1, null, 120, 'Product/392/392_thumb.png', 'Product/392/392_medium.png', 'Product/392/392.png');
insert into [tblProductDesc] values(393, 'چینی ارباب', 34, '          ', 0, '', '1392/04/16', 'Arbab', '', 1, -1, 1, 1, null, 120, 'Product/393/393_thumb.png', 'Product/393/393_medium.png', 'Product/393/393.png');
insert into [tblProductDesc] values(394, 'چینی نی ریز', 34, '          ', 0, '', '1392/04/16', 'neyriz', '', 1, -1, 1, 1, null, 120, 'Product/394/394_thumb.png', 'Product/394/394_medium.png', 'Product/394/394.png');
insert into [tblProductDesc] values(395, 'چینی گناباد', 34, '          ', 0, '', '1392/04/16', 'gonabad', '', 1, -1, 1, 1, null, 120, 'Product/395/395_thumb.png', 'Product/395/395_medium.png', 'Product/395/395.png');
insert into [tblProductDesc] values(396, 'چینی هوشیار الوان', 34, '          ', 0, '', '1392/04/16', 'chini-hushyar-alvan', '', 1, -1, 1, 1, null, 120, 'Product/396/396_thumb.png', 'Product/396/396_medium.png', 'Product/396/396.png');
insert into [tblProductDesc] values(397, 'چینی هوشیار کرم', 34, '          ', 0, '', '1392/04/16', 'chini-hushyar-cream', '', 1, -1, 1, 1, null, 120, 'Product/397/397_thumb.png', 'Product/397/397_medium.png', 'Product/397/397.png');
insert into [tblProductDesc] values(398, 'تراورتن حاجی آباد آرام', 34, '          ', 0, '', '1392/04/16', 'hajiabad-waveless', '', 1, -1, 1, 1, null, 120, 'Product/398/398_thumb.png', 'Product/398/398_medium.png', 'Product/398/398.png');
insert into [tblProductDesc] values(399, 'تراورتن حاجی آباد مواج', 34, '          ', 0, '', '1392/04/16', 'hajiabad-wavy', '', 1, -1, 1, 1, null, 120, 'Product/399/399_thumb.png', 'Product/399/399_medium.png', 'Product/399/399.png');
insert into [tblProductDesc] values(400, 'تراورتن حاجی آباد کرم', 34, '          ', 0, '', '1392/04/16', 'hajiabad-cream', '', 1, -1, 1, 1, null, 120, 'Product/400/400_thumb.png', 'Product/400/400_medium.png', 'Product/400/400.png');
insert into [tblProductDesc] values(401, 'تراورتن عباس آباد آرام', 34, '          ', 0, '', '1392/04/16', 'Abasabad-waveless', '', 1, -1, 1, 1, null, 120, 'Product/401/401_thumb.png', 'Product/401/401_medium.png', 'Product/401/401.png');
insert into [tblProductDesc] values(402, 'تراورتن عباس آباد مواج', 34, '          ', 0, '', '1392/04/16', 'abasabad-wavy', '', 1, -1, 1, 1, null, 120, 'Product/402/402_thumb.png', 'Product/402/402_medium.png', 'Product/402/402.png');
insert into [tblProductDesc] values(403, 'گرانیت الموت کوچک امضاء', 34, '          ', 0, '', '1392/04/16', 'Alamut-small sign', '', 1, -1, 1, 1, null, 120, 'Product/403/403_thumb.png', 'Product/403/403_medium.png', 'Product/403/403.png');
insert into [tblProductDesc] values(404, 'گرانیت الموت بزرگ امضاء', 34, '          ', 0, '', '1392/04/16', 'alamut-big sign', '', 1, -1, 1, 1, null, 120, 'Product/404/404_thumb.png', 'Product/404/404_medium.png', 'Product/404/404.png');
insert into [tblProductDesc] values(405, 'تراورتن عتیقه قرمز', 34, '          ', 0, '', '1392/04/16', 'Antique-red', '', 1, -1, 1, 1, null, 120, 'Product/405/405_thumb.png', 'Product/405/405_medium.png', 'Product/405/405.png');
insert into [tblProductDesc] values(406, 'تراورتن آذرشهر قرمز', 34, '          ', 0, '', '1392/04/16', 'Azarshahr-red', '', 1, -1, 1, 1, null, 120, 'Product/406/406_thumb.png', 'Product/406/406_medium.png', 'Product/406/406.png');
insert into [tblProductDesc] values(407, 'تراورتن بروجرد کتون', 34, '          ', 0, '', '1392/04/16', 'borujerd -coton', '', 1, -1, 1, 1, null, 120, 'Product/407/407_thumb.png', 'Product/407/407_medium.png', 'Product/407/407.png');
insert into [tblProductDesc] values(408, 'تراورتن بروجرد', 34, '          ', 0, '', '1392/04/16', 'borojerd', '', 1, -1, 1, 1, null, 120, 'Product/408/408_thumb.png', 'Product/408/408_medium.png', 'Product/408/408.png');
insert into [tblProductDesc] values(409, 'تراورتن چایان سیاه', 34, '          ', 0, '', '1392/04/16', 'chayan-black', '', 1, -1, 1, 1, null, 120, 'Product/409/409_thumb.png', 'Product/409/409_medium.png', 'Product/409/409.png');
insert into [tblProductDesc] values(410, 'تراورتن دهشیر شکلاتی', 34, '          ', 0, '', '1392/04/16', 'dehshir-choclate', '', 1, -1, 1, 1, null, 120, 'Product/410/410_thumb.png', 'Product/410/410_medium.png', 'Product/410/410.png');
insert into [tblProductDesc] values(411, 'تراورتن حاجی آباد کرمی', 34, '          ', 0, '', '1392/04/16', 'hajiabad -cream', '', 1, -1, 1, 1, null, 120, 'Product/411/411_thumb.png', 'Product/411/411_medium.png', 'Product/411/411.png');
insert into [tblProductDesc] values(412, 'تراوین هلویی', 34, '          ', 0, '', '1392/04/16', 'holouey', '', 1, -1, 1, 1, null, 120, 'Product/412/412_thumb.png', 'Product/412/412_medium.png', 'Product/412/412.png');
insert into [tblProductDesc] values(413, 'تراوین کاشان ببر', 34, '          ', 0, '', '1392/04/16', 'kashan-tiger', '', 1, -1, 1, 1, null, 120, 'Product/413/413_thumb.png', 'Product/413/413_medium.png', 'Product/413/413.png');
insert into [tblProductDesc] values(414, 'تراورتن خرم دره', 34, '          ', 0, '', '1392/04/16', 'khoramdare', '', 1, -1, 1, 1, null, 120, 'Product/414/414_thumb.png', 'Product/414/414_medium.png', 'Product/414/414.png');
insert into [tblProductDesc] values(415, 'تراورتن لیمو مواج', 34, '          ', 0, '', '1392/04/16', 'lemon-wavy', '', 1, -1, 1, 1, null, 120, 'Product/415/415_thumb.png', 'Product/415/415_medium.png', 'Product/415/415.png');
insert into [tblProductDesc] values(416, 'تراورتن لیمو مواج', 34, '          ', 0, '', '1392/04/16', 'lemon-wavy', '', 1, -1, 1, 1, null, 120, 'Product/416/416_thumb.png', 'Product/416/416_medium.png', 'Product/416/416.png');
insert into [tblProductDesc] values(417, 'تراورتن لیمو آرام', 34, '          ', 0, '', '1392/04/16', 'lemon-waveless', '', 1, -1, 1, 1, null, 120, 'Product/417/417_thumb.png', 'Product/417/417_medium.png', 'Product/417/417.png');
insert into [tblProductDesc] values(418, 'تراورتن لیمو', 34, '          ', 0, '', '1392/04/16', 'lemon', '', 1, -1, 1, 1, null, 120, 'Product/418/418_thumb.png', 'Product/418/418_medium.png', 'Product/418/418.png');
insert into [tblProductDesc] values(419, 'تراورتن ماکو کلاسیک کرم', 34, '          ', 0, '', '1392/04/16', 'makou-classic-cream', '', 1, -1, 1, 1, null, 120, 'Product/419/419_thumb.png', 'Product/419/419_medium.png', 'Product/419/419.png');
insert into [tblProductDesc] values(420, 'تراورتن ماکو نارنجی', 34, '          ', 0, '', '1392/04/16', 'makou- orange', '', 1, -1, 1, 1, null, 120, 'Product/420/420_thumb.png', 'Product/420/420_medium.png', 'Product/420/420.png');
insert into [tblProductDesc] values(421, 'تراورتن ماکو قرمز', 34, '          ', 0, '', '1392/04/16', 'makou-red', '', 1, -1, 1, 1, null, 120, 'Product/421/421_thumb.png', 'Product/421/421_medium.png', 'Product/421/421.png');
insert into [tblProductDesc] values(422, 'تراورتن مروارید', 34, '          ', 0, '', '1392/04/16', 'morvarid', '', 1, -1, -1, -1, null, 120, 'Product/422/422_thumb.png', 'Product/422/422_medium.png', 'Product/422/422.png');
insert into [tblProductDesc] values(423, 'تراورتن مروارید', 34, '          ', 0, '', '1392/04/16', 'morvarid', '', 1, -1, 1, 1, null, 120, 'Product/423/423_thumb.png', 'Product/423/423_medium.png', 'Product/423/423.png');
insert into [tblProductDesc] values(424, 'تراورتن نطنز', 34, '          ', 0, '', '1392/04/16', 'natanz', '', 1, -1, 1, 1, null, 120, 'Product/424/424_thumb.png', 'Product/424/424_medium.png', 'Product/424/424.png');
insert into [tblProductDesc] values(425, 'تراورتن نهبندان قدس', 34, '          ', 0, '', '1392/04/16', 'nehbandan-qods', '', 1, -1, 1, 1, null, 120, 'Product/425/425_thumb.png', 'Product/425/425_medium.png', 'Product/425/425.png');
insert into [tblProductDesc] values(426, 'تراورتن نهبندان احرار', 34, '          ', 0, '', '1392/04/16', 'nehbandan-ahrar', '', 1, -1, 1, 1, null, 120, 'Product/426/426_thumb.png', 'Product/426/426_medium.png', 'Product/426/426.png');
insert into [tblProductDesc] values(427, 'تراورتن نارنجی', 34, '          ', 0, '', '1392/04/16', 'orange', '', 1, -1, 1, 1, null, 120, 'Product/427/427_thumb.png', 'Product/427/427_medium.png', 'Product/427/427.png');
insert into [tblProductDesc] values(428, 'تراورتن پیرانشهر سبز', 34, '          ', 0, '', '1392/04/16', 'piranshahr green', '', 1, -1, 1, 1, null, 120, 'Product/428/428_thumb.png', 'Product/428/428_medium.png', 'Product/428/428.png');
insert into [tblProductDesc] values(429, 'تراورتن شاهین دژ', 34, '          ', 0, '', '1392/04/16', 'shahindej', '', 1, -1, 1, 1, null, 120, 'Product/429/429_thumb.png', 'Product/429/429_medium.png', 'Product/429/429.png');
insert into [tblProductDesc] values(430, 'تراورتن تربت سیاه', 34, '          ', 0, '', '1392/04/16', 'torbat-black', '', 1, -1, 1, 1, null, 120, 'Product/430/430_thumb.png', 'Product/430/430_medium.png', 'Product/430/430.png');
insert into [tblProductDesc] values(431, 'تراورتن یزد شکلاتی', 34, '          ', 0, '', '1392/04/16', 'yazd- choclate', '', 1, -1, 1, 1, null, 120, 'Product/431/431_thumb.png', 'Product/431/431_medium.png', 'Product/431/431.png');
insert into [tblProductDesc] values(432, 'تراورتن یزد', 34, '          ', 0, '', '1392/04/16', 'yazd', '', 1, -1, 1, 1, null, 120, 'Product/432/432_thumb.png', 'Product/432/432_medium.png', 'Product/432/432.png');
insert into [tblProductDesc] values(433, 'تراورتن زاهدان', 34, '          ', 0, '', '1392/04/16', 'zahedan', '', 1, -1, 1, 1, null, 120, 'Product/433/433_thumb.png', 'Product/433/433_medium.png', 'Product/433/433.png');
insert into [tblProductDesc] values(434, 'پوکه صنعتی ', 18, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/434/434_thumb.png', 'Product/434/434_medium.png', 'Product/434/434.png');
insert into [tblProductDesc] values(435, 'پوکه معدنی عدسی', 17, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/435/435_thumb.png', 'Product/435/435_medium.png', 'Product/435/435.png');
insert into [tblProductDesc] values(436, 'پوکه معدنی مخلوط', 17, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/436/436_thumb.png', 'Product/436/436_medium.png', 'Product/436/436.png');
insert into [tblProductDesc] values(437, 'پوکه معدنی بادامی', 17, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/437/437_thumb.png', 'Product/437/437_medium.png', 'Product/437/437.png');
insert into [tblProductDesc] values(438, 'پوکه سفال', 18, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/438/438_thumb.png', 'Product/438/438_medium.png', 'Product/438/438.png');
insert into [tblProductDesc] values(439, 'آجر سفال نما 60*25*20', 9, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/439/439_thumb.png', 'Product/439/439_medium.png', 'Product/439/439.png');
insert into [tblProductDesc] values(440, 'آجر سفال نما 40*25*20', 9, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/440/440_thumb.png', 'Product/440/440_medium.png', 'Product/440/440.png');
insert into [tblProductDesc] values(441, 'آجر سفال نما لب گرد', 9, '          ', 0, '', '1392/04/16', '', 'ابعاد: 20*10*5
         20*10*4', 1, -1, 1, 1, null, 102, 'Product/441/441_thumb.png', 'Product/441/441_medium.png', 'Product/441/441.png');
insert into [tblProductDesc] values(442, 'آجر سفال نما  20*10*5', 9, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/442/442_thumb.png', 'Product/442/442_medium.png', 'Product/442/442.png');
insert into [tblProductDesc] values(443, 'آجر سفال نما 20*10*4', 9, '          ', 0, '', '1392/04/16', '', 'ابعاد: 20*10*5', 1, -1, 1, 1, null, 102, 'Product/443/443_thumb.png', 'Product/443/443_medium.png', 'Product/443/443.png');
insert into [tblProductDesc] values(444, 'آجر سنتی', 6, '          ', 0, '', '1392/04/16', '', 'ابعاد: 20*10*5', 1, -1, 1, 1, null, 102, 'Product/444/444_thumb.png', 'Product/444/444_medium.png', 'Product/444/444.png');
insert into [tblProductDesc] values(445, 'سفال عایق دار 19*19*8.5', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/445/445_thumb.png', 'Product/445/445_medium.png', 'Product/445/445.png');
insert into [tblProductDesc] values(446, 'سفال عایق دار 25*20*13.5', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/446/446_thumb.png', 'Product/446/446_medium.png', 'Product/446/446.png');
insert into [tblProductDesc] values(447, 'سفال عایق دار 25*20*20', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/447/447_thumb.png', 'Product/447/447_medium.png', 'Product/447/447.png');
insert into [tblProductDesc] values(448, 'سفال عایق دار 25*20*10', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/448/448_thumb.png', 'Product/448/448_medium.png', 'Product/448/448.png');
insert into [tblProductDesc] values(449, 'سفال دیواری 20*20*20', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/449/449_thumb.png', 'Product/449/449_medium.png', 'Product/449/449.png');
insert into [tblProductDesc] values(450, 'سفال دیواری 19*19*13.5', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/450/450_thumb.png', 'Product/450/450_medium.png', 'Product/450/450.png');
insert into [tblProductDesc] values(451, 'سفال دیواری  20*20*9', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/451/451_thumb.png', 'Product/451/451_medium.png', 'Product/451/451.png');
insert into [tblProductDesc] values(452, 'سفال دیواری  19*19*7', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/452/452_thumb.png', 'Product/452/452_medium.png', 'Product/452/452.png');
insert into [tblProductDesc] values(453, 'سفال دیواری 19*19*5', 8, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/453/453_thumb.png', 'Product/453/453_medium.png', 'Product/453/453.png');
insert into [tblProductDesc] values(454, 'هبلکس  60*25*12', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/454/454_thumb.png', 'Product/454/454_medium.png', 'Product/454/454.png');
insert into [tblProductDesc] values(455, 'هبلکس 60*25*15', 37, '          ', 0, '', '1392/04/16', '', '', 1, -1, 1, 1, null, 102, 'Product/455/455_thumb.png', 'Product/455/455_medium.png', 'Product/455/455.png');
insert into [tblProductDesc] values(456, 'هبلکس 60*25*20', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 102, 'Product/456/456_thumb.png', 'Product/456/456_medium.png', 'Product/456/456.png');
insert into [tblProductDesc] values(457, 'هبلکس 60*25*10', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 102, 'Product/457/457_thumb.png', 'Product/457/457_medium.png', 'Product/457/457.png');
insert into [tblProductDesc] values(458, 'دیوار پیش ساخته بتنی طرحدار', 37, '          ', 0, '', '1392/04/17', '', 'محصور کردن زمین ، باغ ، ویلا ، کارخانه ، خانه و....', 1, -1, 1, 1, 'نوع بتن: مسلح عیار   350kg با شبکه میلگرد 10 آجدارد روزنه 25*25 
مقاوت فشار بتن 300kg

در 6 رنگ مختلف', 920, 'Product/458/458_thumb.png', 'Product/458/458_medium.png', 'Product/458/458.png');
insert into [tblProductDesc] values(459, 'کف پوشهای بتنی ', 37, '          ', 0, '', '1392/04/17', '', 'کاربرد:
پارکها ، پیاده روها ، استخرها ، پارکنیگ ، محوطه منازل ، بازسازی بناهای تاریخی و...', 1, -1, 1, 1, 'سرعت عمل در اجرا ، مقاومت بالا ، عمرمفید طولانی ، تنوع طرح و رنگ ، سازگار با طبیعت
در 6 رنگ متفاوت', 920, 'Product/459/459_thumb.png', 'Product/459/459_medium.png', 'Product/459/459.png');
insert into [tblProductDesc] values(460, 'پلاک مروارید قرمز 2*22*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/460/460_thumb.png', 'Product/460/460_medium.png', 'Product/460/460.png');
insert into [tblProductDesc] values(461, 'لفتون عراقی 23*11*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/461/461_thumb.png', 'Product/461/461_medium.png', 'Product/461/461.png');
insert into [tblProductDesc] values(462, 'لفتون عراقی 24*12*8', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/462/462_thumb.png', 'Product/462/462_medium.png', 'Product/462/462.png');
insert into [tblProductDesc] values(463, 'پلاک یاقوت قرمز 2*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/463/463_thumb.png', 'Product/463/463_medium.png', 'Product/463/463.png');
insert into [tblProductDesc] values(464, 'پلاک مروارید قرمز  2*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/464/464_thumb.png', 'Product/464/464_medium.png', 'Product/464/464.png');
insert into [tblProductDesc] values(465, 'پلاک یاقوت قرمز 2*33*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/465/465_thumb.png', 'Product/465/465_medium.png', 'Product/465/465.png');
insert into [tblProductDesc] values(466, 'پلاک مروارید قرمز  2*33*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/466/466_thumb.png', 'Product/466/466_medium.png', 'Product/466/466.png');
insert into [tblProductDesc] values(467, 'پلاک 5 یاقوت قرمز  2*20*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/467/467_thumb.png', 'Product/467/467_medium.png', 'Product/467/467.png');
insert into [tblProductDesc] values(468, 'پلاک 5 مروارید قرمز  2*20*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/468/468_thumb.png', 'Product/468/468_medium.png', 'Product/468/468.png');
insert into [tblProductDesc] values(469, 'پلاک یاقوت قرمز 2*30*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/469/469_thumb.png', 'Product/469/469_medium.png', 'Product/469/469.png');
insert into [tblProductDesc] values(470, 'پلاک مروارید قرمز  2*30*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/470/470_thumb.png', 'Product/470/470_medium.png', 'Product/470/470.png');
insert into [tblProductDesc] values(471, 'لفتون نیمه یاقوت قرمز 6*21*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/471/471_thumb.png', 'Product/471/471_medium.png', 'Product/471/471.png');
insert into [tblProductDesc] values(472, 'لفتون نیمه مروارید قرمز 6*21*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/472/472_thumb.png', 'Product/472/472_medium.png', 'Product/472/472.png');
insert into [tblProductDesc] values(473, 'پلاک نیمه یاقوت قرمز 2*11*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/473/473_thumb.png', 'Product/473/473_medium.png', 'Product/473/473.png');
insert into [tblProductDesc] values(474, 'پلاک نیمه مروارید قرمز  2*11*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/474/474_thumb.png', 'Product/474/474_medium.png', 'Product/474/474.png');
insert into [tblProductDesc] values(475, 'پلاک نیمه یاقوت قرمز  2*10*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/475/475_thumb.png', 'Product/475/475_medium.png', 'Product/475/475.png');
insert into [tblProductDesc] values(476, 'پلاک نیمه مروارید قرمز  2*10*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/476/476_thumb.png', 'Product/476/476_medium.png', 'Product/476/476.png');
insert into [tblProductDesc] values(477, 'ال 5 یاقوت قرمز 2/5*10*22*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/477/477_thumb.png', 'Product/477/477_medium.png', 'Product/477/477.png');
insert into [tblProductDesc] values(478, 'ال 5 یاقوت قرمز 2/5*10*22*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/478/478_thumb.png', 'Product/478/478_medium.png', 'Product/478/478.png');
insert into [tblProductDesc] values(479, 'ال 5 مروارید قرمز  2/5*10*22*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/479/479_thumb.png', 'Product/479/479_medium.png', 'Product/479/479.png');
insert into [tblProductDesc] values(480, 'کف فرش یاقوت قرمز 2/5*20*20', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/480/480_thumb.png', 'Product/480/480_medium.png', 'Product/480/480.png');
insert into [tblProductDesc] values(481, 'کف فرش مروارید قرمز 2/5*20*20', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/481/481_thumb.png', 'Product/481/481_medium.png', 'Product/481/481.png');
insert into [tblProductDesc] values(482, 'کرافت یاقوت قرمز 23*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/482/482_thumb.png', 'Product/482/482_medium.png', 'Product/482/482.png');
insert into [tblProductDesc] values(483, 'کرافت مروارید قرمز 23*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/483/483_thumb.png', 'Product/483/483_medium.png', 'Product/483/483.png');
insert into [tblProductDesc] values(484, 'پلاک یاقوت قرمز 2*26/5*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/484/484_thumb.png', 'Product/484/484_medium.png', 'Product/484/484.png');
insert into [tblProductDesc] values(485, 'پلاک مروارید قرمز 2*26/5*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/485/485_thumb.png', 'Product/485/485_medium.png', 'Product/485/485.png');
insert into [tblProductDesc] values(486, 'پلاک یاقوت قرمز 2*26/5*6/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/486/486_thumb.png', 'Product/486/486_medium.png', 'Product/486/486.png');
insert into [tblProductDesc] values(487, 'پلاک مروارید قرمز 2*26/5*6/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/487/487_thumb.png', 'Product/487/487_medium.png', 'Product/487/487.png');
insert into [tblProductDesc] values(488, 'پلاک ام پی 600 رویال   2*22*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/488/488_thumb.png', 'Product/488/488_medium.png', 'Product/488/488.png');
insert into [tblProductDesc] values(489, 'پلاک ام پی 600 رویال 2/5*26/5*6/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/489/489_thumb.png', 'Product/489/489_medium.png', 'Product/489/489.png');
insert into [tblProductDesc] values(490, 'پلاک ام پی 600 رویال 2/5*32/5*7', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/490/490_thumb.png', 'Product/490/490_medium.png', 'Product/490/490.png');
insert into [tblProductDesc] values(491, 'کرافت ام پی 600 رویال 24*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/491/491_thumb.png', 'Product/491/491_medium.png', 'Product/491/491.png');
insert into [tblProductDesc] values(492, 'ال ام پی 600 رویال 2/7*11*22*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/492/492_thumb.png', 'Product/492/492_medium.png', 'Product/492/492.png');
insert into [tblProductDesc] values(493, 'ال ام پی 600 رویال 2/5*13*26/5*6/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/493/493_thumb.png', 'Product/493/493_medium.png', 'Product/493/493.png');
insert into [tblProductDesc] values(494, 'پلاک 2/5*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/494/494_thumb.png', 'Product/494/494_medium.png', 'Product/494/494.png');
insert into [tblProductDesc] values(495, 'ال 2/5*10*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/495/495_thumb.png', 'Product/495/495_medium.png', 'Product/495/495.png');
insert into [tblProductDesc] values(496, 'پلاک نیمه  2/5*10*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/496/496_thumb.png', 'Product/496/496_medium.png', 'Product/496/496.png');
insert into [tblProductDesc] values(497, 'ال نیمه  2/5*10*10*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/497/497_thumb.png', 'Product/497/497_medium.png', 'Product/497/497.png');
insert into [tblProductDesc] values(498, 'پلاک 2/5*11*22*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/498/498_thumb.png', 'Product/498/498_medium.png', 'Product/498/498.png');
insert into [tblProductDesc] values(499, 'ال 2/5*11*22*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 112, 'Product/499/499_thumb.png', 'Product/499/499_medium.png', 'Product/499/499.png');
insert into [tblProductDesc] values(500, 'آجر نمای پلاک زرد 2/1*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/500/500_thumb.png', 'Product/500/500_medium.png', 'Product/500/500.png');
insert into [tblProductDesc] values(501, 'آجر نمای پلاک قرمز 2/5*21/5*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/501/501_thumb.png', 'Product/501/501_medium.png', 'Product/501/501.png');
insert into [tblProductDesc] values(502, 'آجر نمای پلاک زرد 2/1*20*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/502/502_thumb.png', 'Product/502/502_medium.png', 'Product/502/502.png');
insert into [tblProductDesc] values(503, 'آجر نمای پلاک قرمز  2/1*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/503/503_thumb.png', 'Product/503/503_medium.png', 'Product/503/503.png');
insert into [tblProductDesc] values(504, 'آجر نمای پلاک قرمز 2/1*20*5/5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/504/504_thumb.png', 'Product/504/504_medium.png', 'Product/504/504.png');
insert into [tblProductDesc] values(505, 'آجر نمای ال قرمز  2.5*10*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/505/505_thumb.png', 'Product/505/505_medium.png', 'Product/505/505.png');
insert into [tblProductDesc] values(506, 'آجر نمای ال قرمز  2.5*10*20*5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/506/506_thumb.png', 'Product/506/506_medium.png', 'Product/506/506.png');
insert into [tblProductDesc] values(507, 'آجر نمای ال زرد 2.5*10*20*4', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/507/507_thumb.png', 'Product/507/507_medium.png', 'Product/507/507.png');
insert into [tblProductDesc] values(508, 'آجر نمای ال زرد 2.5*10*20*5.5', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/508/508_thumb.png', 'Product/508/508_medium.png', 'Product/508/508.png');
insert into [tblProductDesc] values(509, 'آجرنمای پلاک صابونی قرمز ', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/509/509_thumb.png', 'Product/509/509_medium.png', 'Product/509/509.png');
insert into [tblProductDesc] values(510, 'آجرنمای پلاک قرمز 5.5 و 4سانتی', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/510/510_thumb.png', 'Product/510/510_medium.png', 'Product/510/510.png');
insert into [tblProductDesc] values(511, 'آجرنمای مدل قرمز حصیری', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/511/511_thumb.png', 'Product/511/511_medium.png', 'Product/511/511.png');
insert into [tblProductDesc] values(512, 'آجرنمای پلاک مدل', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 921, 'Product/512/512_thumb.png', 'Product/512/512_medium.png', 'Product/512/512.png');
insert into [tblProductDesc] values(513, 'حاجی آباد A1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/513/513_thumb.png', 'Product/513/513_medium.png', 'Product/513/513.png');
insert into [tblProductDesc] values(514, 'حاجی آباد A2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/514/514_thumb.png', 'Product/514/514_medium.png', 'Product/514/514.png');
insert into [tblProductDesc] values(515, 'حاجی آباد A3', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/515/515_thumb.png', 'Product/515/515_medium.png', 'Product/515/515.png');
insert into [tblProductDesc] values(516, 'قهوه ای یزد B1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/516/516_thumb.png', 'Product/516/516_medium.png', 'Product/516/516.png');
insert into [tblProductDesc] values(517, 'قهوه ای یزد B2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/517/517_thumb.png', 'Product/517/517_medium.png', 'Product/517/517.png');
insert into [tblProductDesc] values(518, 'قرمز آذرخش C1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/518/518_thumb.png', 'Product/518/518_medium.png', 'Product/518/518.png');
insert into [tblProductDesc] values(519, 'قرمز آذرخش C2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/519/519_thumb.png', 'Product/519/519_medium.png', 'Product/519/519.png');
insert into [tblProductDesc] values(520, 'قرمز آذرخش C3', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/520/520_thumb.png', 'Product/520/520_medium.png', 'Product/520/520.png');
insert into [tblProductDesc] values(521, 'زرد ماکو D1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/521/521_thumb.png', 'Product/521/521_medium.png', 'Product/521/521.png');
insert into [tblProductDesc] values(522, 'زرد ماکو D2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/522/522_thumb.png', 'Product/522/522_medium.png', 'Product/522/522.png');
insert into [tblProductDesc] values(523, 'اعلمی E1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/523/523_thumb.png', 'Product/523/523_medium.png', 'Product/523/523.png');
insert into [tblProductDesc] values(524, 'کوثر E2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/524/524_thumb.png', 'Product/524/524_medium.png', 'Product/524/524.png');
insert into [tblProductDesc] values(525, 'بجستان E3', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/525/525_thumb.png', 'Product/525/525_medium.png', 'Product/525/525.png');
insert into [tblProductDesc] values(526, 'زرد ماکو چرمی F2', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/526/526_thumb.png', 'Product/526/526_medium.png', 'Product/526/526.png');
insert into [tblProductDesc] values(527, 'پوست مار F1', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/527/527_thumb.png', 'Product/527/527_medium.png', 'Product/527/527.png');
insert into [tblProductDesc] values(528, 'چرمی حاجی آباد F3', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/528/528_thumb.png', 'Product/528/528_medium.png', 'Product/528/528.png');
insert into [tblProductDesc] values(529, 'مشکی تربت ', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/529/529_thumb.png', 'Product/529/529_medium.png', 'Product/529/529.png');
insert into [tblProductDesc] values(530, 'گیوتین', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/530/530_thumb.png', 'Product/530/530_medium.png', 'Product/530/530.png');
insert into [tblProductDesc] values(531, 'حاشیه', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/531/531_thumb.png', 'Product/531/531_medium.png', 'Product/531/531.png');
insert into [tblProductDesc] values(532, 'پازل ', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 137, 'Product/532/532_thumb.png', 'Product/532/532_medium.png', 'Product/532/532.png');
insert into [tblProductDesc] values(533, 'پی وی سی قالب ریزی', 37, '          ', 0, '', '1392/04/17', 'pvc moulding', '', 1, -1, 1, 1, null, 581, 'Product/533/533_thumb.png', 'Product/533/533_medium.png', 'Product/533/533.png');
insert into [tblProductDesc] values(534, 'پی وی سی', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, null, 581, 'Product/534/534_thumb.png', 'Product/534/534_medium.png', 'Product/534/534.png');
insert into [tblProductDesc] values(535, 'تیرچه', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, 'رديف	نام محصول                               كاربرد	
1	تیرچه 3سیم		مانند تیرچه معمولی اما با مزایای صرفه جویی در قیمت، صرفه جویی در مصرف بتن و میلگرد و ...
2	تیرچه 4سیم		مانند تیرچه معمولی اما با مزایای صرفه جویی در قیمت، صرفه جویی در مصرف بتن و میلگرد و ...
3	تیرچه 5سیم		مانند تیرچه معمولی اما با مزایای صرفه جویی در قیمت، صرفه جویی در مصرف بتن و میلگرد و ...', 421, 'Product/535/535_thumb.png', 'Product/535/535_medium.png', 'Product/535/535.png');
insert into [tblProductDesc] values(536, 'بتن آماده', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, 'مواد افزودنی شامل انواع فوق روان کننده و افزودنی های بتن را دار بوده و به راحتی قابلیت تولید بتنهای خاص مانند بتن خود تراکم بتن الیافی ... را دارا میباشد.', 421, 'Product/536/536_thumb.png', 'Product/536/536_medium.png', 'Product/536/536.png');
insert into [tblProductDesc] values(537, 'شن و ماسه شسته و شکسته و لوله های بتنی', 37, '          ', 0, '', '1392/04/17', '', '', 1, -1, 1, 1, 'خط تولید لوله های ساکت دار قادر به تولید لوله های بتنی با مقاطع و ظرفیتهای متفاوت به شرح زیر می باشد.
مقطع 300 میلی متر که قابت آن سه تایی است و قابلیت روزانه 500 متر طول.
مقطع 300 متر که قالب آن دوتایی و قابلیت تولید را تا دو برابر افزایش می دهد و با طرفیت تولید روزانه 300 متر طول
مقطع 400 میلی متر با قالب تکی و ظرفیت تولید روزانه 100 متر طول.
مقطع 500 میلی متر با قالب تکی و ظرفیت تولید روزانه 100 متر طول.
مقطع 600 میلی متر با قالب تکی و ظرفیت تولید روزانه 100 متر طول', 421, 'Product/537/537_thumb.png', 'Product/537/537_medium.png', 'Product/537/537.png');
insert into [tblProductDesc] values(538, 'سنگ فرش آجری ساده و رنگی', 37, '          ', 0, '', '1392/04/17', '', 'طول : 20 سانتی متر
عرض: 10 سانتی متر
ارتفاع:6 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/538/538_thumb.png', 'Product/538/538_medium.png', 'Product/538/538.png');
insert into [tblProductDesc] values(539, 'سنگفرش قرقره ای ساده و رنگی', 37, '          ', 0, '', '1392/04/17', '', 'طول : 20 سانتی متر
عرض: 16 سانتی متر
ارتفاع : 6 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/539/539_thumb.png', 'Product/539/539_medium.png', 'Product/539/539.png');
insert into [tblProductDesc] values(540, 'سنگفرش هلالی ساده و رنگی', 37, '          ', 0, '', '1392/04/17', '', 'طول : 23 سانتی متر
عرض: 11 سانتی متر
ارتفاع : 7 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/540/540_thumb.png', 'Product/540/540_medium.png', 'Product/540/540.png');
insert into [tblProductDesc] values(541, 'جداول نیوجرسی', 37, '          ', 0, '', '1392/04/17', '', ' ابعاد دلخواه مشتری و تا حداکثر ابعاد: 110*80*30', 1, -1, 1, 1, null, 421, 'Product/541/541_thumb.png', 'Product/541/541_medium.png', 'Product/541/541.png');
insert into [tblProductDesc] values(542, 'جدول 35*18*30', 37, '          ', 0, '', '1392/04/17', '', 'ابعاد B : 
طول : 35 سانتی متر
عرض: 18 سانتی متر
ارتفاع : 45 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/542/542_thumb.png', 'Product/542/542_medium.png', 'Product/542/542.png');
insert into [tblProductDesc] values(543, 'جدول 35*18*30', 37, '          ', 0, '', '1392/04/17', '', 'ابعاد B : طول : 35 سانتی متر
عرض: 18 سانتی متر
ارتفاع : 45 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/543/543_thumb.png', 'Product/543/543_medium.png', 'Product/543/543.png');
insert into [tblProductDesc] values(544, 'جدول 35*15*35', 37, '          ', 0, '', '1392/04/17', '', 'ابعاد B : طول: 50 سانتی متر
عرض: 15 سانتی متر
ارتفاع: 30 سانتی متر', 1, -1, 1, 1, null, 421, 'Product/544/544_thumb.png', 'Product/544/544_medium.png', 'Product/544/544.png');
insert into [tblProductDesc] values(545, 'نما صخره ای', 37, '          ', 0, '', '1392/04/17', '', 'استفاده از نمای خارجی ساختمان و طراحی داخلی از کاربردهای ویژه این محصول است', 1, -1, 1, 1, 'رنگ زمینه و رنگ رگه های موجود در این محصول قابل تغییر و به انتخاب مشتری است.', 922, 'Product/545/545_thumb.png', 'Product/545/545_medium.png', 'Product/545/545.png');
insert into [tblProductDesc] values(546, 'نما انگلیسی', 37, '          ', 0, '', '1392/04/17', '', 'استفاده در نمای داخلی و خارجی به عنوان قرنیز و دیواره باغچه از کاربردهای ویژه این محصول می یاشد.', 1, -1, 1, 1, 'ابعاد هر تایل (40*60) در رنگهای متفاوت به انتخاب مشتری است.', 922, 'Product/546/546_thumb.png', 'Product/546/546_medium.png', 'Product/546/546.png');
insert into [tblProductDesc] values(547, 'نما باد بر عریض', 37, '          ', 0, '', '1392/04/17', '', 'استفاده در نماهای خارجی از کاربردهای ویژه این محصول می باشد.', 1, -1, 1, 1, 'رنگ زمینه و رنگ رگه های موجود در این محصول قابل تغییر و به انتخاب مشتری است. این محصول دارای سه سایز متفاوت (20*30) و (20*45) و (20*60) است که به صورت ترکیبی و نامنظم چیده میشود.', 922, 'Product/547/547_thumb.png', 'Product/547/547_medium.png', 'Product/547/547.png');
insert into [tblProductDesc] values(548, 'نما بادبر باریک', 37, '          ', 0, '', '1392/04/17', '', 'استفاده در نماهای خارجی و طراحی داخلی ساختمان از کاربردهای وِیژه این محصول می باشد.', 1, -1, 1, 1, 'رنگ زمینه و رنگ رگه های موجود در این محصول قابل تغییر و به انتخاب مشتری است. این محصول داری چها سایز متفاوت (11*20)و(11*25)و  (11*35)و(11*40) است که به صورت ترکیبی و نامنظم چیده میشود.', 922, 'Product/548/548_thumb.png', 'Product/548/548_medium.png', 'Product/548/548.png');
insert into [tblProductDesc] values(549, 'نما پژواک', 37, '          ', 0, '', '1392/04/17', '', 'استفاده در نماهای خارجی و طراحی داخلی ساختمان از کاربردهای وِیژه این محصول است', 1, -1, 1, 1, null, 922, 'Product/549/549_thumb.png', 'Product/549/549_medium.png', 'Product/549/549.png');
insert into [tblProductDesc] values(550, 'نما پردیس', 37, '          ', 0, '', '1392/04/18', '', 'استفاده در نماهای خارجی و طراحی داخلی ساختمان (نمای ستون و بالای شومینه) از کاربردهای ویژه این محصول می باشد.', 1, -1, 1, 1, '4 تایل در سایزهای مختلف و رنگ های متفاوت به صورت ترکیبی و نامنظم چیدمان این محصول را تشکیل می دهد.', 922, 'Product/550/550_thumb.png', 'Product/550/550_medium.png', 'Product/550/550.png');
insert into [tblProductDesc] values(551, 'نما براش', 37, '          ', 0, '', '1392/04/18', '', 'استفاده در نمای خارجی ساختمان ، دیوار حیاط ، دیوار پیلوت از کاربردهای ویژه این محصول می باشد.', 1, -1, 1, 1, null, 922, 'Product/551/551_thumb.png', 'Product/551/551_medium.png', 'Product/551/551.png');
insert into [tblProductDesc] values(552, 'کف سنتی', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, 'ابعاد هر تایل (30*30) در رنگهای متنوع به انتخاب مشتری است.', 922, 'Product/552/552_thumb.png', 'Product/552/552_medium.png', 'Product/552/552.png');
insert into [tblProductDesc] values(553, 'کف برگی', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, 'ابعاد هر تایل (30*30) در رنگهای متنوع به انتخاب مشتری است.', 922, 'Product/553/553_thumb.png', 'Product/553/553_medium.png', 'Product/553/553.png');
insert into [tblProductDesc] values(554, 'کف برفی', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, 'ابعاد هر تایل (30*30) در رنگهای متنوع به انتخاب مشتری است.', 922, 'Product/554/554_thumb.png', 'Product/554/554_medium.png', 'Product/554/554.png');
insert into [tblProductDesc] values(555, 'کف راهوار', 37, '          ', 0, '', '1392/04/18', '', 'مشخص نمودن یک مسیر روی چمن در محوطه های وسیع و ویلاها از کابردهای این محصول می باشد.', 1, -1, 1, 1, 'رنگبندی محصول راهوار متنوع و به انتخاب مشتری است', 922, 'Product/555/555_thumb.png', 'Product/555/555_medium.png', 'Product/555/555.png');
insert into [tblProductDesc] values(556, 'کف پرنگ', 37, '          ', 0, '', '1392/04/18', '', 'استفاده در کف سازی معابر عمومی ، ویلاها، پیلوت و حیاط از کابردهای ویژه این محصول است.', 1, -1, 1, 1, 'ابعاد هر تایل (15*30) در رنگهای متنوع به انتخاب مشتری است.', 922, 'Product/556/556_thumb.png', 'Product/556/556_medium.png', 'Product/556/556.png');
insert into [tblProductDesc] values(557, 'کف موج', 37, '          ', 0, '', '1392/04/18', '', 'کاربرد ویژه در کف سازی پیاده روها ، حیاط و پیلوت است. ', 1, -1, 1, 1, null, 922, 'Product/557/557_thumb.png', 'Product/557/557_medium.png', 'Product/557/557.png');
insert into [tblProductDesc] values(558, 'کف و نما سنگواره', 37, '          ', 0, '', '1392/04/18', '', 'استفاده در نماسازی و کف سازی می باشد.', 1, -1, 1, 1, 'رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.  و در دو سایز (30*30)(30*60) می باشد.', 922, 'Product/558/558_thumb.png', 'Product/558/558_medium.png', 'Product/558/558.png');
insert into [tblProductDesc] values(559, 'کف و نما حکمی', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, 'رنگبندی این محصول متنوع و به انتخاب مشتری می باشد. و در سایز 30*30 ارائه می گردد.', 922, 'Product/559/559_thumb.png', 'Product/559/559_medium.png', 'Product/559/559.png');
insert into [tblProductDesc] values(560, 'کف خشتی', 37, '          ', 0, '', '1392/04/18', '', 'استفاده در کف سازی معابر عمومی ، ویلاها ، پیلوت و حیاط از کاربردهای ویژه این محصول می باشد.', 1, -1, 1, 1, 'رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.', 922, 'Product/560/560_thumb.png', 'Product/560/560_medium.png', 'Product/560/560.png');
insert into [tblProductDesc] values(561, 'کف ترنج', 37, '          ', 0, '', '1392/04/18', '', 'کف سازی محوطه های وسیع همچون پارک ها و پیاده ها روها از کاربردهای ویژه آن به شمار میرود.', 1, -1, 1, 1, 'ابعاد این محصولات 40*40 و رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.', 922, 'Product/561/561_thumb.png', 'Product/561/561_medium.png', 'Product/561/561.png');
insert into [tblProductDesc] values(562, 'کف خورشیدی', 37, '          ', 0, '', '1392/04/18', '', 'کف سازی محوطه های وسیع همچون پارک ها و پیاده ها روها از کاربردهای ویژه آن به شمار میرود.', 1, -1, 1, 1, 'ابعاد این محصولات 40*40 و رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.', 922, 'Product/562/562_thumb.png', 'Product/562/562_medium.png', 'Product/562/562.png');
insert into [tblProductDesc] values(563, 'کف چرمی', 37, '          ', 0, '', '1392/04/18', '', 'کف سازی محوطه های وسیع همچون پارک ها و پیاده ها روها از کاربردهای ویژه آن به شمار میرود.', 1, -1, 1, 1, 'ابعاد این محصولات 40*40 و رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.', 922, 'Product/563/563_thumb.png', 'Product/563/563_medium.png', 'Product/563/563.png');
insert into [tblProductDesc] values(564, 'کف شکلاتی', 37, '          ', 0, '', '1392/04/18', '', 'کف سازی محوطه های وسیع همچون پارک ها و پیاده ها روها از کاربردهای ویژه آن به شمار میرود.', 1, -1, 1, 1, 'ابعاد این محصولات 40*40 و رنگبندی این محصول متنوع و به انتخاب مشتری می باشد.', 922, 'Product/564/564_thumb.png', 'Product/564/564_medium.png', 'Product/564/564.png');
insert into [tblProductDesc] values(565, 'موزائیک  V 6090', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/565/565_thumb.png', 'Product/565/565_medium.png', 'Product/565/565.png');
insert into [tblProductDesc] values(566, 'آجر فوندوله', 36, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'پالت هایی جهت استفاده در ساخت تیرچه

', 923, 'Product/566/566_thumb.png', 'Product/566/566_medium.png', 'Product/566/566.png');
insert into [tblProductDesc] values(567, 'کف پوش  P 1000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/567/567_thumb.png', 'Product/567/567_medium.png', 'Product/567/567.png');
insert into [tblProductDesc] values(568, ' کف پوش  T 1010', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/568/568_thumb.png', 'Product/568/568_medium.png', 'Product/568/568.png');
insert into [tblProductDesc] values(569, 'کف پوش  T 1020', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/569/569_thumb.png', 'Product/569/569_medium.png', 'Product/569/569.png');
insert into [tblProductDesc] values(570, 'کف پوش T 2020', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, -1, null, 117, 'Product/570/570_thumb.png', 'Product/570/570_medium.png', 'Product/570/570.png');
insert into [tblProductDesc] values(571, 'موزائیک V 4010', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/571/571_thumb.png', 'Product/571/571_medium.png', 'Product/571/571.png');
insert into [tblProductDesc] values(572, 'موزائیک V 4020', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/572/572_thumb.png', 'Product/572/572_medium.png', 'Product/572/572.png');
insert into [tblProductDesc] values(573, 'موزائیک V 4030', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/573/573_thumb.png', 'Product/573/573_medium.png', 'Product/573/573.png');
insert into [tblProductDesc] values(574, 'کف پوش T 4040', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/574/574_thumb.png', 'Product/574/574_medium.png', 'Product/574/574.png');
insert into [tblProductDesc] values(575, 'کف پوش B 4040', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/575/575_thumb.png', 'Product/575/575_medium.png', 'Product/575/575.png');
insert into [tblProductDesc] values(576, 'موزائیک V 4050', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/576/576_thumb.png', 'Product/576/576_medium.png', 'Product/576/576.png');
insert into [tblProductDesc] values(577, 'تیغه دیواری', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'تیغه دیواری
ابعاد  25*20*8
وزن 2.200 
تعداد در هر M2       بیست و پنج عدد
ظرفیت هر ماشین       5000 جفت و 4000 تک
', 923, 'Product/577/577_thumb.png', 'Product/577/577_medium.png', 'Product/577/577.png');
insert into [tblProductDesc] values(578, 'موزائیک V 4070', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/578/578_thumb.png', 'Product/578/578_medium.png', 'Product/578/578.png');
insert into [tblProductDesc] values(579, 'موزائیک V 4080', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/579/579_thumb.png', 'Product/579/579_medium.png', 'Product/579/579.png');
insert into [tblProductDesc] values(580, 'بلوک سقفی کرومیت ', 9, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 60*25*20
وزن : 12 کیلوگرم
تعداد در هر متر مربع : 6
ظرفیت هر ماشین:1000 جفت و 800 تک', 923, 'Product/580/580_thumb.png', 'Product/580/580_medium.png', 'Product/580/580.png');
insert into [tblProductDesc] values(581, 'موزائیک V 6000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/581/581_thumb.png', 'Product/581/581_medium.png', 'Product/581/581.png');
insert into [tblProductDesc] values(582, 'موزائیک V 6010', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/582/582_thumb.png', 'Product/582/582_medium.png', 'Product/582/582.png');
insert into [tblProductDesc] values(583, 'پنل تیغه ای ', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد: 10*25*10
وزن: 10 
تعداد در هر متر مربع : 10 عدد
ظرفیت هر ماشین : 1200 جفت و 1000تک', 923, 'Product/583/583_thumb.png', 'Product/583/583_medium.png', 'Product/583/583.png');
insert into [tblProductDesc] values(584, 'موزائیک V 6015 P', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/584/584_thumb.png', 'Product/584/584_medium.png', 'Product/584/584.png');
insert into [tblProductDesc] values(585, 'موزائیک V 6030', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/585/585_thumb.png', 'Product/585/585_medium.png', 'Product/585/585.png');
insert into [tblProductDesc] values(586, 'موزائیک V 6035', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/586/586_thumb.png', 'Product/586/586_medium.png', 'Product/586/586.png');
insert into [tblProductDesc] values(587, 'موزائیک V 6040', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/587/587_thumb.png', 'Product/587/587_medium.png', 'Product/587/587.png');
insert into [tblProductDesc] values(588, 'موزائیک V 6045', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/588/588_thumb.png', 'Product/588/588_medium.png', 'Product/588/588.png');
insert into [tblProductDesc] values(589, 'پنل تیغه ای', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 40*25*10
وزن 6 کیلوگرم
تعداد در هر متر مربع : 10 عدد
ظرفیت هر ماشین : 2200 جفت و 1750 تک 

', 923, 'Product/589/589_thumb.png', 'Product/589/589_medium.png', 'Product/589/589.png');
insert into [tblProductDesc] values(590, 'موزائیک V6055', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/590/590_thumb.png', 'Product/590/590_medium.png', 'Product/590/590.png');
insert into [tblProductDesc] values(591, 'تیغه دیواری', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 25*20*10
وزن : 2.900
تعداد در هر متر مربع : 20
ظرفیت هر ماشین:4500 جفت و 3500 تک


', 923, 'Product/591/591_thumb.png', 'Product/591/591_medium.png', 'Product/591/591.png');
insert into [tblProductDesc] values(592, 'موزائیک V 6055', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/592/592_thumb.png', 'Product/592/592_medium.png', 'Product/592/592.png');
insert into [tblProductDesc] values(593, 'موزائیک V 6060 A', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/593/593_thumb.png', 'Product/593/593_medium.png', 'Product/593/593.png');
insert into [tblProductDesc] values(594, 'موزائیک V 6060 F', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/594/594_thumb.png', 'Product/594/594_medium.png', 'Product/594/594.png');
insert into [tblProductDesc] values(595, 'تیغه دیواری ', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 25*20*8
وزن : 2.200 
تعداد در هر متر مربع : 25
ظرفیت هر ماشین : 5000 جفت و 4000 تک
', 923, 'Product/595/595_thumb.png', 'Product/595/595_medium.png', 'Product/595/595.png');
insert into [tblProductDesc] values(596, 'موزائیک V 6070', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/596/596_thumb.png', 'Product/596/596_medium.png', 'Product/596/596.png');
insert into [tblProductDesc] values(597, 'موزائیک V 6080', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/597/597_thumb.png', 'Product/597/597_medium.png', 'Product/597/597.png');
insert into [tblProductDesc] values(598, 'موزائیک V 6085 r', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/598/598_thumb.png', 'Product/598/598_medium.png', 'Product/598/598.png');
insert into [tblProductDesc] values(599, 'موزائیک V 6085 m', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/599/599_thumb.png', 'Product/599/599_medium.png', 'Product/599/599.png');
insert into [tblProductDesc] values(600, 'موزائیک V 6095', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/600/600_thumb.png', 'Product/600/600_medium.png', 'Product/600/600.png');
insert into [tblProductDesc] values(601, 'جدول H 14000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/601/601_thumb.png', 'Product/601/601_medium.png', 'Product/601/601.png');
insert into [tblProductDesc] values(602, 'جدول L 16000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/602/602_thumb.png', 'Product/602/602_medium.png', 'Product/602/602.png');
insert into [tblProductDesc] values(603, 'جدول K 17000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/603/603_thumb.png', 'Product/603/603_medium.png', 'Product/603/603.png');
insert into [tblProductDesc] values(604, 'تیغه دیواری ساده ', 9, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 923, 'Product/604/604_thumb.png', 'Product/604/604_medium.png', 'Product/604/604.png');
insert into [tblProductDesc] values(605, 'جدول G 19000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/605/605_thumb.png', 'Product/605/605_medium.png', 'Product/605/605.png');
insert into [tblProductDesc] values(606, 'تیغه دیواری ساده  9 شبکه', 9, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد :25*20*20
وزن : 4.5 کیلو
تعداد در هر متر مربع 20
ظرفیت هر ماشین : 2700 جفت و 2200 تک
', 923, 'Product/606/606_thumb.png', 'Product/606/606_medium.png', 'Product/606/606.png');
insert into [tblProductDesc] values(607, 'موزائیک V 4040', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/607/607_thumb.png', 'Product/607/607_medium.png', 'Product/607/607.png');
insert into [tblProductDesc] values(608, 'تیغه دیواری ساده ', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد: 25*20*15
وزن:3.600
تعداد در هر متر مربع : 20
ظرفیت هر ماشین : 3600 جفت و 2700 تک
', 923, 'Product/608/608_thumb.png', 'Product/608/608_medium.png', 'Product/608/608.png');
insert into [tblProductDesc] values(609, 'تیغه دیواری عایق دار ', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد: 25*20*15
وزن : 4 کیلو
تعداد در هر متر مربع : 20
ظرفیت هر ماشین : 3200 جفت و 2500 تک
', 923, 'Product/609/609_thumb.png', 'Product/609/609_medium.png', 'Product/609/609.png');
insert into [tblProductDesc] values(610, 'تیغه دیواری عایق دار', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 25*20*20
وزن : 4.5 ک
تعداد در هر متر مربع : 20 عدد
ظرفیت هر ماشین : 2700 جفت و 2200 تک
', 923, 'Product/610/610_thumb.png', 'Product/610/610_medium.png', 'Product/610/610.png');
insert into [tblProductDesc] values(611, 'تیغه دیواری عایق  دار', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 25*20*10
وزن : 3 کیلو
تعداد در هر متر مربع : 20
ظرفیت هر ماشین : 4500 جفت : 3300 تک
', 923, 'Product/611/611_thumb.png', 'Product/611/611_medium.png', 'Product/611/611.png');
insert into [tblProductDesc] values(612, 'بلوک سقفی ', 9, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 20*25*25
وزن : 1.600 کیلوگرم 
تعداد در هر متر مربع : 8 
ظرفیت هر ماشین :1100جفت و 900 تک ', 923, 'Product/612/612_thumb.png', 'Product/612/612_medium.png', 'Product/612/612.png');
insert into [tblProductDesc] values(613, 'بلوک سقفی ', 9, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : 40*25*20
وزن : 9.200 کیلوگرم
تعداد در هر متر مربع : 8
ظرفیت هر ماشین : 1300 جفت و 1100تک', 923, 'Product/613/613_thumb.png', 'Product/613/613_medium.png', 'Product/613/613.png');
insert into [tblProductDesc] values(614, 'موزائیک G 3000', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/614/614_thumb.png', 'Product/614/614_medium.png', 'Product/614/614.png');
insert into [tblProductDesc] values(615, 'موزائیک G 3060', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/615/615_thumb.png', 'Product/615/615_medium.png', 'Product/615/615.png');
insert into [tblProductDesc] values(616, 'موزائیک G 3070', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/616/616_thumb.png', 'Product/616/616_medium.png', 'Product/616/616.png');
insert into [tblProductDesc] values(617, 'موزائیک G 3090', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/617/617_thumb.png', 'Product/617/617_medium.png', 'Product/617/617.png');
insert into [tblProductDesc] values(618, 'موزائیک G 4010', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/618/618_thumb.png', 'Product/618/618_medium.png', 'Product/618/618.png');
insert into [tblProductDesc] values(619, 'موزائیک G 4015', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/619/619_thumb.png', 'Product/619/619_medium.png', 'Product/619/619.png');
insert into [tblProductDesc] values(620, 'موزائیک G 4020', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/620/620_thumb.png', 'Product/620/620_medium.png', 'Product/620/620.png');
insert into [tblProductDesc] values(621, 'موزائیک G 4025', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/621/621_thumb.png', 'Product/621/621_medium.png', 'Product/621/621.png');
insert into [tblProductDesc] values(622, 'موزائیک G 4030', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/622/622_thumb.png', 'Product/622/622_medium.png', 'Product/622/622.png');
insert into [tblProductDesc] values(623, 'موزائیک G 4035', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/623/623_thumb.png', 'Product/623/623_medium.png', 'Product/623/623.png');
insert into [tblProductDesc] values(624, 'موزائیک G 4050', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/624/624_thumb.png', 'Product/624/624_medium.png', 'Product/624/624.png');
insert into [tblProductDesc] values(625, 'موزائیک G 4060', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/625/625_thumb.png', 'Product/625/625_medium.png', 'Product/625/625.png');
insert into [tblProductDesc] values(626, 'موزائیک G 4070', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/626/626_thumb.png', 'Product/626/626_medium.png', 'Product/626/626.png');
insert into [tblProductDesc] values(627, 'موزائیک G 4080', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/627/627_thumb.png', 'Product/627/627_medium.png', 'Product/627/627.png');
insert into [tblProductDesc] values(628, 'موزائیک G 4090', 34, '          ', 0, '', '1392/04/18', '', '', 1, -1, 1, 1, null, 117, 'Product/628/628_thumb.png', 'Product/628/628_medium.png', 'Product/628/628.png');
insert into [tblProductDesc] values(629, 'سفال کف و نما طرح دار ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 20x20x3 - 10x20x3 - 10x20x5
Weight : 2.300 Kg , 1.100 Kg, 1.800 Kg
تعداد در هر m2 : 25 , 50 , 50
ظرفیت هر ماشین : تک : 4500 , جفت : 6600 - تک : 9100 , جفت : 13700, تک : 5600, جفت : 8400', 925, 'Product/629/629_thumb.png', 'Product/629/629_medium.png', 'Product/629/629.png');
insert into [tblProductDesc] values(630, 'سفال کف و نما بادبر', 34, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 15x20x3
Weight : 1.5 Kg
تعداد در هر m2 : 34
ظرفیت هر ماشین : تک : 6700 , جفت : 10000', 925, 'Product/630/630_thumb.png', 'Product/630/630_medium.png', 'Product/630/630.png');
insert into [tblProductDesc] values(631, 'آجر فندوله 12.5x4x25', 36, '          ', 1, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 12.5x4x25
Weight : 1.100 Kg
تعداد در هر m2 : 4
ظرفیت هر ماشین : تک : 10000 , جفت : 15000', 925, 'Product/631/631_thumb.png', 'Product/631/631_medium.png', 'Product/631/631.png');
insert into [tblProductDesc] values(632, 'سفال کف و نما ساده 15x20x3 - 7x20x3', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 15x20x3 - 7x20x3
Weight : 0.700 Kg - 1.600 Kg
تعداد در هر m2 : 70 - 34
ظرفیت هر ماشین : تک : 14500 , جفت :22000 - تک : 6300 , جفت : 9400', 925, 'Product/632/632_thumb.png', 'Product/632/632_medium.png', 'Product/632/632.png');
insert into [tblProductDesc] values(633, 'پلاک لایت و قرمز 5.5x20x1.8 - 4x20x1.8', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'Dimension : 5.5x20x1.8 - 4x20x1.8
Weight : 0.320 Kg - 0.270 Kg
تعداد در هر m2 : 85 - 125
ظرفیت هر ماشین : تک : 37000 , جفت :56500 - تک : 32000 , جفت : 47000', 925, 'Product/633/633_thumb.png', 'Product/633/633_medium.png', 'Product/633/633.png');
insert into [tblProductDesc] values(634, ' آجر فشاری 10x20x7.5', 15, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 10x20x7.5
Weight : 2.600 Kg
تعداد در هر m2 : 
ظرفیت هر ماشین : تک : 10 تن, جفت : 15 تن', 925, 'Product/634/634_thumb.png', 'Product/634/634_medium.png', 'Product/634/634.png');
insert into [tblProductDesc] values(635, 'نما صنعتی 20x19x29 - 13x19x29', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 20x19x29 - 13x19x29
Weight : 5.500 Kg - 8 Kg
تعداد در هر m2 : 16.6 - 25.5
ظرفیت هر ماشین : تک : 1800 , جفت : 2700 - تک : 1250 , جفت : 1850', 925, 'Product/635/635_thumb.png', 'Product/635/635_medium.png', 'Product/635/635.png');
insert into [tblProductDesc] values(636, 'آجر قزاقی 5x10x20', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 5x10x20
Weight : 1.800 Kg
تعداد در هر m2 : 100
ظرفیت هر ماشین : تک : 5600 , جفت : 8400', 925, 'Product/636/636_thumb.png', 'Product/636/636_medium.png', 'Product/636/636.png');
insert into [tblProductDesc] values(637, ' تیغه پله ای 25x40x20 - 20x40x20', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 25x40x20 - 20x40x20
Weight : 9.800kg - 7.600kg
تعداد در هر m2 : 20 - 25
ظرفیت هر ماشین : تک : 1300 , جفت : 1950 - تک : 1000 , جفت : 1500', 925, 'Product/637/637_thumb.png', 'Product/637/637_medium.png', 'Product/637/637.png');
insert into [tblProductDesc] values(638, 'آجرنمای 5.5*10*21.5', 14, '          ', 0, '', '1392/04/18', 'آجرنما', '', 1, -1, -1, 1, null, 926, 'Product/638/638_thumb.png', 'Product/638/638_medium.png', 'Product/638/638.png');
insert into [tblProductDesc] values(639, 'بلوک تیغه ای به ابعاد 7*20*20', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/639/639_thumb.png', 'Product/639/639_medium.png', 'Product/639/639.png');
insert into [tblProductDesc] values(640, 'بلوک تیغه 15*20*20', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/640/640_thumb.png', 'Product/640/640_medium.png', 'Product/640/640.png');
insert into [tblProductDesc] values(641, 'آجر نمای لب تخت 4و 5و 5.5', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/641/641_thumb.png', 'Product/641/641_medium.png', 'Product/641/641.png');
insert into [tblProductDesc] values(642, 'آجرنمای 7*11*23', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '', 926, 'Product/642/642_thumb.png', 'Product/642/642_medium.png', 'Product/642/642.png');
insert into [tblProductDesc] values(643, 'آجر نمای 10*10*20', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/643/643_thumb.png', 'Product/643/643_medium.png', 'Product/643/643.png');
insert into [tblProductDesc] values(644, 'آجر نمای لبگرد 5و 5.5', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/644/644_thumb.png', 'Product/644/644_medium.png', 'Product/644/644.png');
insert into [tblProductDesc] values(645, 'آجر نما 4*10*21.5', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/645/645_thumb.png', 'Product/645/645_medium.png', 'Product/645/645.png');
insert into [tblProductDesc] values(646, 'آجر نما 5*10*21.5', 14, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/646/646_thumb.png', 'Product/646/646_medium.png', 'Product/646/646.png');
insert into [tblProductDesc] values(647, 'بلوک تیغه به ابعاد 10*20*20', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 926, 'Product/647/647_thumb.png', 'Product/647/647_medium.png', 'Product/647/647.png');
insert into [tblProductDesc] values(648, 'بلوک دیواری با عرض متغیر ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : متغیر * ۱۰۰ * ۳۰ سانتی متر	', 927, 'Product/648/648_thumb.png', 'Product/648/648_medium.png', 'Product/648/648.png');
insert into [tblProductDesc] values(649, 'قطعه ته بند ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : ۱۴ * ۳۰ * ۶ سانتی متر	', 927, 'Product/649/649_thumb.png', 'Product/649/649_medium.png', 'Product/649/649.png');
insert into [tblProductDesc] values(650, 'بلوک گوشه ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : ۸۰ * ۴۰ * ۳۰ * ۲۵ سانتی متر	', 927, 'Product/650/650_thumb.png', 'Product/650/650_medium.png', 'Product/650/650.png');
insert into [tblProductDesc] values(651, 'بلوک نشیمن تیرچه', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : ۱۰۰ * ۳۰ * ۲۵ سانتی متر	', 927, 'Product/651/651_thumb.png', 'Product/651/651_medium.png', 'Product/651/651.png');
insert into [tblProductDesc] values(652, 'بلوک نعل درگاه ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : ۱۰۰ * ۳۰ * ۲۵ سانتی متر	', 927, 'Product/652/652_thumb.png', 'Product/652/652_medium.png', 'Product/652/652.png');
insert into [tblProductDesc] values(653, 'بلوک دیواری ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'ابعاد : ۱۰۰ * ۳۰ * ۲۵ سانتی متر	', 927, 'Product/653/653_thumb.png', 'Product/653/653_medium.png', 'Product/653/653.png');
insert into [tblProductDesc] values(654, 'تیغه دیواری 15x20x25', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 15x20x25
Weight : 4 kg
تعداد در هر m2 : 20
ظرفیت هر ماشین : تک : 2550 , جفت : 3200', 925, 'Product/654/654_thumb.png', 'Product/654/654_medium.png', 'Product/654/654.png');
insert into [tblProductDesc] values(655, 'تیغه دیواری عایق دار 15x20x25', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'Dimension : 15x20x25
Weight : 4 kg
تعداد در هر m2 : 20
ظرفیت هر ماشین : تک : 2500 , جفت : 3200', 925, 'Product/655/655_thumb.png', 'Product/655/655_medium.png', 'Product/655/655.png');
insert into [tblProductDesc] values(656, 'تیغه دیواری 15x20x25', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'Dimension : 15x20x25
Weight : 4 kg
تعداد در هر m2 : 20
ظرفیت هر ماشین : تک : 2550 , جفت : 3200', 925, 'Product/656/656_thumb.png', 'Product/656/656_medium.png', 'Product/656/656.png');
insert into [tblProductDesc] values(657, 'تیغه دیواری 15x20x20', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, 'Dimension : 15x20x20
Weight : 3.300 Kg
تعداد در هر m2 : 25
ظرفیت هر ماشین : تک : 3200 , جفت : 4300', 925, 'Product/657/657_thumb.png', 'Product/657/657_medium.png', 'Product/657/657.png');
insert into [tblProductDesc] values(658, 'تیغه عایق دار پنلی 15x20x25', 8, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 15x20x25
Weight : 4 kg
تعداد در هر m2 : 20
ظرفیت هر ماشین : تک : 2200 , جفت : 3200', 925, 'Product/658/658_thumb.png', 'Product/658/658_medium.png', 'Product/658/658.png');
insert into [tblProductDesc] values(659, 'بلوک سقفی کرومیت 20x20x70', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, '
Dimension : 20x20x70
Weight : 14 kg
تعداد در هر m2 : 8
ظرفیت هر ماشین : تک :650, جفت: 900', 925, 'Product/659/659_thumb.png', 'Product/659/659_medium.png', 'Product/659/659.png');
insert into [tblProductDesc] values(660, 'خرپای میلگردی ', 37, '          ', 0, '', '1392/04/18', '', '', 1, -1, -1, 1, null, 928, 'Product/660/660_thumb.png', 'Product/660/660_medium.png', 'Product/660/660.png');
insert into [tblProductDesc] values(661, 'آجر سفال تیغه 15', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد : 20*20*15
ظرفیت خاور : 1800 عدد
ظرفیت تک : 3000 عدد
ظرفیت جفت : 5000عدد
', 93, 'Product/661/661_thumb.png', 'Product/661/661_medium.png', 'Product/661/661.png');
insert into [tblProductDesc] values(662, 'آجر سفال تیغه 10', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد: 20*20*10
ظرفیت خاور :2400عدد
ظرفیت تک : 5000 عدد
ظرفیت جفت : 7000 عدد
', 93, 'Product/662/662_thumb.png', 'Product/662/662_medium.png', 'Product/662/662.png');
insert into [tblProductDesc] values(663, 'آجر سفال تیغه 25*10', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد: 25*20*10
ظرفیت خاور :1500 عدد
ظرفیت تک :3500 عدد
ظرفیت جفت : 6000عدد
', 93, 'Product/663/663_thumb.png', 'Product/663/663_medium.png', 'Product/663/663.png');
insert into [tblProductDesc] values(664, 'آجر سفال تیغه هفت ', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد : 20*20*7
ظرفیت خاور :3500 عدد
ظرفیت تک: 6000عدد
ظرفیت جفت : 8000عدد
', 93, 'Product/664/664_thumb.png', 'Product/664/664_medium.png', 'Product/664/664.png');
insert into [tblProductDesc] values(665, 'آجر سفال نیمه 15', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد : 20*10*15
', 93, 'Product/665/665_thumb.png', 'Product/665/665_medium.png', 'Product/665/665.png');
insert into [tblProductDesc] values(666, 'آجر سفال نیمه 10', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد:20*10*10
', 93, 'Product/666/666_thumb.png', 'Product/666/666_medium.png', 'Product/666/666.png');
insert into [tblProductDesc] values(667, 'آجر سفال لفتن', 14, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد : 20*10*5
ظرفیت تک :11000 عدد
ظرفیت جفت : 16000 عدد
', 93, 'Product/667/667_thumb.png', 'Product/667/667_medium.png', 'Product/667/667.png');
insert into [tblProductDesc] values(668, 'تیغه 20*15 فوم دار', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد: 20*20*15
 ظرفیت خاور : 1800 عدد
ظرفیت تک : 3000 عدد
ظرفیت جفت : 5000 عدد

', 93, 'Product/668/668_thumb.png', 'Product/668/668_medium.png', 'Product/668/668.png');
insert into [tblProductDesc] values(669, 'تیغه 20*10 فوم دار', 8, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد: 20*20*10
ظرفیت خاور :2400عدد
ظرفیت تک :5000 عدد
ظرفیت جفت :7000 عدد
', 93, 'Product/669/669_thumb.png', 'Product/669/669_medium.png', 'Product/669/669.png');
insert into [tblProductDesc] values(670, 'بلوک سیمانی هفت ', 10, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد : 40*20*7
ظرفیت خاور :1300 عدد
ظرفیت تک :2500 عدد
وزن:4 کیلو
تعداد در متر مربع:12.5عدد
', 93, 'Product/670/670_thumb.png', 'Product/670/670_medium.png', 'Product/670/670.png');
insert into [tblProductDesc] values(671, 'گرانیک Art:9.5', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/671/671_thumb.png', 'Product/671/671_medium.png', 'Product/671/671.png');
insert into [tblProductDesc] values(672, 'بلوک سیمانی 10', 10, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد:40*20*10
ظرفیت خاور :1000عدد
ظرفیت تک :2000 عدد
وزن: 5 کیلو
تعداد در متر مربع : 12.5 عدد
', 93, 'Product/672/672_thumb.png', 'Product/672/672_medium.png', 'Product/672/672.png');
insert into [tblProductDesc] values(673, 'گرانیت 94.2 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/673/673_thumb.png', 'Product/673/673_medium.png', 'Product/673/673.png');
insert into [tblProductDesc] values(674, 'گرانیت 19 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/674/674_thumb.png', 'Product/674/674_medium.png', 'Product/674/674.png');
insert into [tblProductDesc] values(675, 'بلوک سیمانی 15', 10, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, 'ابعاد:50*20*15
ظرفیت خاور 600عدد
ظرفیت تک :1150 عدد 
وزن : 8.5 کیلو
تعداد در هر متر مربع :10 عدد
', 93, 'Product/675/675_thumb.png', 'Product/675/675_medium.png', 'Product/675/675.png');
insert into [tblProductDesc] values(676, 'گرانیت 37 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/676/676_thumb.png', 'Product/676/676_medium.png', 'Product/676/676.png');
insert into [tblProductDesc] values(677, 'گرانیت 38 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/677/677_thumb.png', 'Product/677/677_medium.png', 'Product/677/677.png');
insert into [tblProductDesc] values(678, 'گرانیت 86 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/678/678_thumb.png', 'Product/678/678_medium.png', 'Product/678/678.png');
insert into [tblProductDesc] values(679, 'گرانیت 93 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/679/679_thumb.png', 'Product/679/679_medium.png', 'Product/679/679.png');
insert into [tblProductDesc] values(680, 'گرانیت 94 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/680/680_thumb.png', 'Product/680/680_medium.png', 'Product/680/680.png');
insert into [tblProductDesc] values(681, 'گرانیت 98 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/681/681_thumb.png', 'Product/681/681_medium.png', 'Product/681/681.png');
insert into [tblProductDesc] values(682, 'گرانیت 126 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/682/682_thumb.png', 'Product/682/682_medium.png', 'Product/682/682.png');
insert into [tblProductDesc] values(683, 'گرانیت 127 Art', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 118, 'Product/683/683_thumb.png', 'Product/683/683_medium.png', 'Product/683/683.png');
insert into [tblProductDesc] values(684, 'بلوک سیمانی 20', 11, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, 1, null, 93, 'Product/684/684_thumb.png', 'Product/684/684_medium.png', 'Product/684/684.png');
insert into [tblProductDesc] values(685, 'سنگ 114', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/685/685_thumb.png', 'Product/685/685_medium.png', 'Product/685/685.png');
insert into [tblProductDesc] values(686, 'سنگ  120', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/686/686_thumb.png', 'Product/686/686_medium.png', 'Product/686/686.png');
insert into [tblProductDesc] values(687, 'سنگ 115', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/687/687_thumb.png', 'Product/687/687_medium.png', 'Product/687/687.png');
insert into [tblProductDesc] values(688, 'سنگ 116', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/688/688_thumb.png', 'Product/688/688_medium.png', 'Product/688/688.png');
insert into [tblProductDesc] values(689, 'سنگ 117', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/689/689_thumb.png', 'Product/689/689_medium.png', 'Product/689/689.png');
insert into [tblProductDesc] values(690, 'سنگ  122', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/690/690_thumb.png', 'Product/690/690_medium.png', 'Product/690/690.png');
insert into [tblProductDesc] values(691, 'سنگ  118', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/691/691_thumb.png', 'Product/691/691_medium.png', 'Product/691/691.png');
insert into [tblProductDesc] values(692, 'سنگ   107.1', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/692/692_thumb.png', 'Product/692/692_medium.png', 'Product/692/692.png');
insert into [tblProductDesc] values(693, 'سنگ 107.2', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/693/693_thumb.png', 'Product/693/693_medium.png', 'Product/693/693.png');
insert into [tblProductDesc] values(694, 'سنگ  107.3', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/694/694_thumb.png', 'Product/694/694_medium.png', 'Product/694/694.png');
insert into [tblProductDesc] values(695, 'سنگ  107.4', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, -1, -1, null, 119, 'Product/695/695_thumb.png', 'Product/695/695_medium.png', 'Product/695/695.png');
insert into [tblProductDesc] values(696, 'سنگ  107.5', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/696/696_thumb.png', 'Product/696/696_medium.png', 'Product/696/696.png');
insert into [tblProductDesc] values(697, 'سنگ  125', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/697/697_thumb.png', 'Product/697/697_medium.png', 'Product/697/697.png');
insert into [tblProductDesc] values(698, 'سنگ 124', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/698/698_thumb.png', 'Product/698/698_medium.png', 'Product/698/698.png');
insert into [tblProductDesc] values(699, 'سنگ 123', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/699/699_thumb.png', 'Product/699/699_medium.png', 'Product/699/699.png');
insert into [tblProductDesc] values(700, 'سنگ  119', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/700/700_thumb.png', 'Product/700/700_medium.png', 'Product/700/700.png');
insert into [tblProductDesc] values(701, 'سنگ  101', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/701/701_thumb.png', 'Product/701/701_medium.png', 'Product/701/701.png');
insert into [tblProductDesc] values(702, 'سنگ  102', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/702/702_thumb.png', 'Product/702/702_medium.png', 'Product/702/702.png');
insert into [tblProductDesc] values(703, 'سنگ 103', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/703/703_thumb.png', 'Product/703/703_medium.png', 'Product/703/703.png');
insert into [tblProductDesc] values(704, 'سنگ  104', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/704/704_thumb.png', 'Product/704/704_medium.png', 'Product/704/704.png');
insert into [tblProductDesc] values(705, 'سنگ  105', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/705/705_thumb.png', 'Product/705/705_medium.png', 'Product/705/705.png');
insert into [tblProductDesc] values(706, 'سنگ  106', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/706/706_thumb.png', 'Product/706/706_medium.png', 'Product/706/706.png');
insert into [tblProductDesc] values(707, 'سنگ  108', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/707/707_thumb.png', 'Product/707/707_medium.png', 'Product/707/707.png');
insert into [tblProductDesc] values(708, 'سنگ 109', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/708/708_thumb.png', 'Product/708/708_medium.png', 'Product/708/708.png');
insert into [tblProductDesc] values(709, 'سنگ 110', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/709/709_thumb.png', 'Product/709/709_medium.png', 'Product/709/709.png');
insert into [tblProductDesc] values(710, 'سنگ  111', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/710/710_thumb.png', 'Product/710/710_medium.png', 'Product/710/710.png');
insert into [tblProductDesc] values(711, 'سنگ 112', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/711/711_thumb.png', 'Product/711/711_medium.png', 'Product/711/711.png');
insert into [tblProductDesc] values(712, 'سنگ 113', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/712/712_thumb.png', 'Product/712/712_medium.png', 'Product/712/712.png');
insert into [tblProductDesc] values(713, 'تراورتن گردویی یزد', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/713/713_thumb.png', 'Product/713/713_medium.png', 'Product/713/713.png');
insert into [tblProductDesc] values(714, 'مرمریت قرمز پر رنگ', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/714/714_thumb.png', 'Product/714/714_medium.png', 'Product/714/714.png');
insert into [tblProductDesc] values(715, 'مرمریت کرم', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/715/715_thumb.png', 'Product/715/715_medium.png', 'Product/715/715.png');
insert into [tblProductDesc] values(716, 'تراورتن شکلاتی یزد', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/716/716_thumb.png', 'Product/716/716_medium.png', 'Product/716/716.png');
insert into [tblProductDesc] values(717, 'تراورتن شکلاتی یزد', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/717/717_thumb.png', 'Product/717/717_medium.png', 'Product/717/717.png');
insert into [tblProductDesc] values(718, 'تراورتن کرم تیره', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/718/718_thumb.png', 'Product/718/718_medium.png', 'Product/718/718.png');
insert into [tblProductDesc] values(719, 'تراورتن سفید عباس آباد', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/719/719_thumb.png', 'Product/719/719_medium.png', 'Product/719/719.png');
insert into [tblProductDesc] values(720, 'چینی پلنگی', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/720/720_thumb.png', 'Product/720/720_medium.png', 'Product/720/720.png');
insert into [tblProductDesc] values(721, 'تراورتن کرم حاجی آباد', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 119, 'Product/721/721_thumb.png', 'Product/721/721_medium.png', 'Product/721/721.png');
insert into [tblProductDesc] values(722, 'سنگ مرمر M 001', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/722/722_thumb.png', 'Product/722/722_medium.png', 'Product/722/722.png');
insert into [tblProductDesc] values(723, 'سنگ مرمر M 002', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/723/723_thumb.png', 'Product/723/723_medium.png', 'Product/723/723.png');
insert into [tblProductDesc] values(724, 'سنگ مرمر M 003', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/724/724_thumb.png', 'Product/724/724_medium.png', 'Product/724/724.png');
insert into [tblProductDesc] values(725, 'سنگ مرمر M 004', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/725/725_thumb.png', 'Product/725/725_medium.png', 'Product/725/725.png');
insert into [tblProductDesc] values(726, 'تراورتن T 001', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/726/726_thumb.png', 'Product/726/726_medium.png', 'Product/726/726.png');
insert into [tblProductDesc] values(727, 'تراورتن T 002', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/727/727_thumb.png', 'Product/727/727_medium.png', 'Product/727/727.png');
insert into [tblProductDesc] values(728, 'تراورتن T 003', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/728/728_thumb.png', 'Product/728/728_medium.png', 'Product/728/728.png');
insert into [tblProductDesc] values(729, 'تراورتن T 004', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/729/729_thumb.png', 'Product/729/729_medium.png', 'Product/729/729.png');
insert into [tblProductDesc] values(730, 'مرمریت R 001', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/730/730_thumb.png', 'Product/730/730_medium.png', 'Product/730/730.png');
insert into [tblProductDesc] values(731, 'مرمریت R 002', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/731/731_thumb.png', 'Product/731/731_medium.png', 'Product/731/731.png');
insert into [tblProductDesc] values(732, 'مرمریت R 003', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/732/732_thumb.png', 'Product/732/732_medium.png', 'Product/732/732.png');
insert into [tblProductDesc] values(733, 'مرمریت R 004', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/733/733_thumb.png', 'Product/733/733_medium.png', 'Product/733/733.png');
insert into [tblProductDesc] values(734, 'مرمریت R 005', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/734/734_thumb.png', 'Product/734/734_medium.png', 'Product/734/734.png');
insert into [tblProductDesc] values(735, 'مرمریت R 006', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/735/735_thumb.png', 'Product/735/735_medium.png', 'Product/735/735.png');
insert into [tblProductDesc] values(736, 'آنتیک Rhapsody', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/736/736_thumb.png', 'Product/736/736_medium.png', 'Product/736/736.png');
insert into [tblProductDesc] values(737, 'آنتیک Puzzle', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/737/737_thumb.png', 'Product/737/737_medium.png', 'Product/737/737.png');
insert into [tblProductDesc] values(738, 'آنتیک  Chiseled edge', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/738/738_thumb.png', 'Product/738/738_medium.png', 'Product/738/738.png');
insert into [tblProductDesc] values(739, 'آنتیک Pattern set', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/739/739_thumb.png', 'Product/739/739_medium.png', 'Product/739/739.png');
insert into [tblProductDesc] values(740, 'آنتیک Square set', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/740/740_thumb.png', 'Product/740/740_medium.png', 'Product/740/740.png');
insert into [tblProductDesc] values(741, 'آنتیک  Stagger joint', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 141, 'Product/741/741_thumb.png', 'Product/741/741_medium.png', 'Product/741/741.png');
insert into [tblProductDesc] values(742, 'کفپوش 8 ضلعی ', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/742/742_thumb.png', 'Product/742/742_medium.png', 'Product/742/742.png');
insert into [tblProductDesc] values(743, 'کفپوش مدور ترکیبی', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/743/743_thumb.png', 'Product/743/743_medium.png', 'Product/743/743.png');
insert into [tblProductDesc] values(744, 'کف پوش پاپیونی ', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/744/744_thumb.png', 'Product/744/744_medium.png', 'Product/744/744.png');
insert into [tblProductDesc] values(745, 'کف پوش پاپیونی  8*16*20', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/745/745_thumb.png', 'Product/745/745_medium.png', 'Product/745/745.png');
insert into [tblProductDesc] values(746, 'کف پوش پاپیونی  6*16*20', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/746/746_thumb.png', 'Product/746/746_medium.png', 'Product/746/746.png');
insert into [tblProductDesc] values(747, 'کف پوش خشتی', 37, '          ', 0, '', '1392/04/19', '', 'کلیه معابر پیاده و ماشین رو با قابلیت تحمل ترافیک بالا ، قابلیت اجرا با ملات خیس و خشک بسته به مکان مورد نظر', 1, -1, 1, 1, 'ابعاد: 6*10*20', 430, 'Product/747/747_thumb.png', 'Product/747/747_medium.png', 'Product/747/747.png');
insert into [tblProductDesc] values(748, 'کف پوش ترکیبی ', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/748/748_thumb.png', 'Product/748/748_medium.png', 'Product/748/748.png');
insert into [tblProductDesc] values(749, 'کف پوش 6*10*10', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/749/749_thumb.png', 'Product/749/749_medium.png', 'Product/749/749.png');
insert into [tblProductDesc] values(750, 'کف پوش ترکیبی ', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 430, 'Product/750/750_thumb.png', 'Product/750/750_medium.png', 'Product/750/750.png');
insert into [tblProductDesc] values(751, 'فوم بتن', 37, '          ', 0, '', '1392/04/19', '', 'عایق بندی ، قوی حرارتی، درجه بالای سیالیت (روانروی یا ویسکوزیه) میخ خوری و برش پذیری', 1, -1, 1, 1, 'فوم بنت را می توان در کف بندی طبقات ، شیب بندی پشت بام ، تهیه بلوک های غیر باربر سبک و بلوکهای پیش ساخته بکار برد.', 483, 'Product/751/751_thumb.png', 'Product/751/751_medium.png', 'Product/751/751.png');
insert into [tblProductDesc] values(752, 'بلوک سبک', 37, '          ', 0, '', '1392/04/19', '', '', 1, -1, 1, 1, null, 483, 'Product/752/752_thumb.png', 'Product/752/752_medium.png', 'Product/752/752.png');
insert into [tblProductDesc] values(753, 'بلوک سبک 18*30*40', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'مزیت های :
1- وزن سبک تر ، کم کردن اثرات تخریبی زلزله
2- مقاوت و اتحکام بسیار بالاتر
3- عایق صوت ، تامین کننده الزامات مبحث 18 مقررات ملی ساختمان
4- عایق حرارت ، صرفه جویی در انرژی و تامین کننده الزامات مبحث 19 مقررات ملی ساختمان
5- کارپذیری بسیار مطلوب نظیر سوراخ کاری ، شیار زنی ، برش با اره فرز معمولی و کاهش پرت مصالح
6- سرعت در اجرا بعلت توخالی و ته پر بودن
7- تنوع ابعاد
8- بدون نیاز به گچ و خاک', 931, 'Product/753/753_thumb.png', 'Product/753/753_medium.png', 'Product/753/753.png');
insert into [tblProductDesc] values(754, 'بلوک سبک 10*30*40', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'مزیت های :
1- وزن سبک تر ، کم کردن اثرات تخریبی زلزله
2- مقاوت و اتحکام بسیار بالاتر
3- عایق صوت ، تامین کننده الزامات مبحث 18 مقررات ملی ساختمان
4- عایق حرارت ، صرفه جویی در انرژی و تامین کننده الزامات مبحث 19 مقررات ملی ساختمان
5- کارپذیری بسیار مطلوب نظیر سوراخ کاری ، شیار زنی ، برش با اره فرز معمولی و کاهش پرت مصالح
6- سرعت در اجرا بعلت توخالی و ته پر بودن
7- تنوع ابعاد
8- بدون نیاز به گچ و خاک', 931, 'Product/754/754_thumb.png', 'Product/754/754_medium.png', 'Product/754/754.png');
insert into [tblProductDesc] values(755, 'بلوک سبک 15*30*40', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'مزیت های :
1- وزن سبک تر ، کم کردن اثرات تخریبی زلزله
2- مقاوت و اتحکام بسیار بالاتر
3- عایق صوت ، تامین کننده الزامات مبحث 18 مقررات ملی ساختمان
4- عایق حرارت ، صرفه جویی در انرژی و تامین کننده الزامات مبحث 19 مقررات ملی ساختمان
5- کارپذیری بسیار مطلوب نظیر سوراخ کاری ، شیار زنی ، برش با اره فرز معمولی و کاهش پرت مصالح
6- سرعت در اجرا بعلت توخالی و ته پر بودن
7- تنوع ابعاد
8- بدون نیاز به گچ و خاک', 931, 'Product/755/755_thumb.png', 'Product/755/755_medium.png', 'Product/755/755.png');
insert into [tblProductDesc] values(756, 'بلوک سبک 10*30*90', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'مزیت های :
1- وزن سبک تر ، کم کردن اثرات تخریبی زلزله
2- مقاوت و اتحکام بسیار بالاتر
3- عایق صوت ، تامین کننده الزامات مبحث 18 مقررات ملی ساختمان
4- عایق حرارت ، صرفه جویی در انرژی و تامین کننده الزامات مبحث 19 مقررات ملی ساختمان
5- کارپذیری بسیار مطلوب نظیر سوراخ کاری ، شیار زنی ، برش با اره فرز معمولی و کاهش پرت مصالح
6- سرعت در اجرا بعلت توخالی و ته پر بودن
7- تنوع ابعاد
8- بدون نیاز به گچ و خاک', 931, 'Product/756/756_thumb.png', 'Product/756/756_medium.png', 'Product/756/756.png');
insert into [tblProductDesc] values(757, 'بلوک سبک بتنی ساده 25*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/757/757_thumb.png', 'Product/757/757_medium.png', 'Product/757/757.png');
insert into [tblProductDesc] values(758, 'بلوک سبک بتنی ساده 10*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه ', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/758/758_thumb.png', 'Product/758/758_medium.png', 'Product/758/758.png');
insert into [tblProductDesc] values(759, 'بلوک سبک بتنی ساده 20*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/759/759_thumb.png', 'Product/759/759_medium.png', 'Product/759/759.png');
insert into [tblProductDesc] values(760, 'بلوک سبک بتنی ساده 15*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/760/760_thumb.png', 'Product/760/760_medium.png', 'Product/760/760.png');
insert into [tblProductDesc] values(761, 'بلوک سبک بتنی فاق و زبانه دار 10*25*50', 37, '          ', 0, '', '1392/04/20', '', '
کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/761/761_thumb.png', 'Product/761/761_medium.png', 'Product/761/761.png');
insert into [tblProductDesc] values(762, 'بلوک سبک بتنی فاق و زبانه دار 15*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/762/762_thumb.png', 'Product/762/762_medium.png', 'Product/762/762.png');
insert into [tblProductDesc] values(763, 'بلوک سبک بتنی فاق و زبانه دار 20*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/763/763_thumb.png', 'Product/763/763_medium.png', 'Product/763/763.png');
insert into [tblProductDesc] values(764, 'بلوک سبک بتنی فاق و زبانه دار 25*25*50', 37, '          ', 0, '', '1392/04/20', '', 'کاربردها: قابلیت اجرای در جا در محل پروژها جهت شیب بندی بام ، کف سازی طبقات ، بلوکهای غیر باربر، پانل های جداکننده و یکپارچه', 1, -1, 1, 1, 'ویژگی های منحصر به فرد بتن سبک CLC
1- سبک کردن وزن ساختمان 
2- افزایش عمر مفید ساختمان
3- افزایش ایمنی ساختمان در برابر زلزله
4- کاهش زمان اجرای پروژه ساختمانی 
5- کاهش مصرف انرژی در ساختمان
6- عایق حرارت ، برودت و صوت
7- مقاومت در برابر حریق
8- قابلیت برش با فرز و اره 
9- قابلیت چکش پذیری بالا ، گیرش میخ ، پیچ و پلاک 
10- قابلیت پیش ساختگی
11- مقاوم در برابر نفوز آب و عدم هدایت رطوبت
12- سهولت در اجرا و نصب تاسیسات مکانیکی و برقی
13- سهولت حمل و نقل
14- نصب سریع و آسان بلوکها
15- تشکیل دیوار یکنواخت و حذف پروسه گچ و خاک
16- عدم وجود ضایعات در حین اجرا
17- هماهنگی با سایر مصالح
18- کاهش هزینه های ساخت و ساز
19- مطابقت با مبحث 18و19 مقررات ملی ساختمان ایران', 431, 'Product/764/764_thumb.png', 'Product/764/764_medium.png', 'Product/764/764.png');
insert into [tblProductDesc] values(765, 'بلوک سبک 60*25*15', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, null, 442, 'Product/765/765_thumb.png', 'Product/765/765_medium.png', 'Product/765/765.png');
insert into [tblProductDesc] values(766, 'بلوک سبک 60*25*10', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, null, 442, 'Product/766/766_thumb.png', 'Product/766/766_medium.png', 'Product/766/766.png');
insert into [tblProductDesc] values(767, 'بلوک سبک 60*25*8', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, null, 442, 'Product/767/767_thumb.png', 'Product/767/767_medium.png', 'Product/767/767.png');
insert into [tblProductDesc] values(768, 'درب اتوماتیک منحنی ', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'این درب ها با انحناهای مختلف و منطبق بر ظاهر سازه و معماری ساختمان و با بهره گیری از مکانیزم کشویی همواره به عنوان یکی از انتخابهای آرشیتکت ها و معماران خلاق محسوب می گرددند. در این درب ها 2 لنگه شیشه منحنی بر روی 2 شیشه منحنی ثابت به صورت کشویی به حرکت در می آیند.', 932, 'Product/768/768_thumb.png', 'Product/768/768_medium.png', 'Product/768/768.png');
insert into [tblProductDesc] values(769, 'درب اتوماتیک لولایی', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'دربهای لولایی نیز از جمله انواع در بهایی است که برای ورودی های کم عرض که امکان نصب دربهای کشویی وجود ندارد توصیه میگردد. عملکرد ساده و روان و قیمت مناسب آن این دربها را به عنوان گزینه ای برای ورودیهای کم عرض و کم تردد معرفی میگردد. ویژگی منحصر به فرد این دربها این است که در بسیاری از موارد بر روی دربهای موجود به راحتی قابل نصب است و نیز ساخت درب جدید چندان ضرورتی ندارد.', 932, 'Product/769/769_thumb.png', 'Product/769/769_medium.png', 'Product/769/769.png');
insert into [tblProductDesc] values(770, 'درب اتوماتیک تاشو', 37, '          ', 0, '', '1392/04/20', 'فولدینگ', '', 1, -1, 1, 1, 'درب های فولدینگ یا بادبزنی با امکان تاشدن برای داخل دهانه های کم عرض بسیار مناسب است زیرا این دربها راه حل منحصر به فردی برای راهروها ، کریدورها و ورودی های ست که برای سایر دربها محدودیت جدی وجود دارد.', 932, 'Product/770/770_thumb.png', 'Product/770/770_medium.png', 'Product/770/770.png');
insert into [tblProductDesc] values(771, 'درب اتوماتیک مثلثی', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'این دربهای نیز راه حلی وِیژه برای سازه هایی است که دارای محدودیت در فضای داخلی ، یا نیازمند نصب دربی است که با شکل ضاهری ساختمان هماهنگی بیشتری داشته باشد.
این دربها نیز برای ایجاد فیلتر و به منظور جلوگیری از اتلاف انرژی راه حل مناسب به شمار می آیند در مواردی که معماری ساختمان از زوایای هندسی خاص استفاده می نمایند این دربها می توانند کمک شایانی به زیبایی ورودی ساختمان بنمایند.', 932, 'Product/771/771_thumb.png', 'Product/771/771_medium.png', 'Product/771/771.png');
insert into [tblProductDesc] values(772, 'درب اتوماتیک پارکینگی', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'ویژگیها و خصوصیات منحصر به فرد این دربها که آنها را بعنوان پر مصرف ترین نوع دربهای اتوماتیک معرفی نموده عبارتند از:
 عملکرد هوشمند درب که آن را قادر می سازد که هنگام برخورد با مانع متوقف و در جهت معکوس حرکت نماید.
سیستم دو سرعته که درب بصورت تک لنگه در ابتدای مسیر با سرعت حرکت میکند و در انتهای مسیر سرعت آن کاهش پیدا می یابد.
قابلیت استفاده برای تردد افراد بصورت تک لنگه و دو لنگه ای برای اتومبیل 
قابلیت نصب بر روی دربهای فعلی و موجود بدون نیاز به ساخت درب جدید.
تنظیم قدرت و سرعت موتور از داخل تابلو فرمان
امکان کدگذاری با ریموت که فقط به دارندگان کد ریموت مخصوص اجازه استفاده از پارکنیک را می دهد.
دارای کلیه خلاص کن درب جهت استفاده دستی در مواقع قطع برق و ....', 932, 'Product/772/772_thumb.png', 'Product/772/772_medium.png', 'Product/772/772.png');
insert into [tblProductDesc] values(773, 'درب اتوماتیک بالارونده ', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'این دربها  بدلیل استفاده از (Slate یا Panel) یا تیغه های آلومینومی و گالوانیزه در ابعاد مختلف از 4 سانتی متر تا 12 سانتی متر جهت اتوماسیون خانگی (پنجره بالکن ها و پارکنیک ها) تاتجهیز اماکن صنعتی (سوله ها و کارخانجات ، انبارها پارکنیک های صنعتی) دارای کاربرد گسترده ای هستند.
ویژگیهای عمده درب:
دارای استحکام و ایمنی بالا برای اماکن مختلف 
موثر در جلوگیری از اتلاف انرژی و جلوگیری از آلودگی صوتی 
راه حلی مناسب برای پارکنیک هایی که داری محدودیت در عمق فضای داخلی هستند.
فضای بسیار کم اشتغالی در بالای درب 
سهولت نصب و استفاده 
تنوع در صرح و رنگ Slat (تیغه ها)', 932, 'Product/773/773_thumb.png', 'Product/773/773_medium.png', 'Product/773/773.png');
insert into [tblProductDesc] values(774, 'درب اتوماتیک گردان', 37, '          ', 0, '', '1392/04/20', '', '', 1, -1, 1, 1, 'این سیستم از لحاظ عملکرد به گونه ای طراحی گردیده است که درب همیشه بسته است در حالی که همیشه باز است با استفاده از این درب ضمن امکان ورود و خروج همزمان افراد از برخورد جلوگیری می شود.
این دربها بسیار موثر برای جلوگیری از انتشار صدا و هوا می باشند و یکی از کار آمدترین ابزار برای جلوگیری از اتلاف انرژی هستند.
می توانند 2 یا 3 یا 4 باله طراحی شوند.
می تواند دستی یا اتوماتیک طراحی شوند.
می تواند موارد امنیتی خاص را بر روی این دربها تعبیه کنند.
کمترین نگهداری یا پشتیبانی را نیاز دارد.', 932, 'Product/774/774_thumb.png', 'Product/774/774_medium.png', 'Product/774/774.png');
insert into [tblProductDesc] values(775, 'بلوک سفال سقفی کرومیت ۲۰', 9, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال سقفی

کرومیت ارتفاع ۲۰سانتی

۱۱۵۰۰	
۲۰×۲۰×۶۰

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۸۸۰ قالب

۱۰۵۰ قالب	 ۱۷۶۰  قالب', 911, 'Product/775/775_thumb.png', 'Product/775/775_medium.png', 'Product/775/775.png');
insert into [tblProductDesc] values(776, 'بلوک سفال سقفی کرومیت ۲۵', 9, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال سقفی

کرومیت ارتفاع ۲۵سانتی

۱۱۵۰۰	
۲۰×۲۵×۶۰

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۸۸۰ قالب

۱۰۵۰ قالب	 ۱۷۶۰ قالب', 911, 'Product/776/776_thumb.png', 'Product/776/776_medium.png', 'Product/776/776.png');
insert into [tblProductDesc] values(777, 'بلوک سفال تیغه ساده ۱۰ سانتی', 8, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال تیغه ساده

۱۰سانتی

۱۸۰۰

۱۸۰۰

۷/۵×۱۷/۵×۱۸/۵

۸×۱۸×۱۹

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۵۷۰۰

۸۰۰۰	 ۱۲۰۰۰', 911, 'Product/777/777_thumb.png', 'Product/777/777_medium.png', 'Product/777/777.png');
insert into [tblProductDesc] values(778, 'بلوک سفال تیغه ساده ۱۵ سانتی', 8, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال تیغه ساده

۱۵سانتی

۲۸۰۰	
۱۳/۵×۱۸×۱۹/۵

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۳۷۰۰

۵۲۰۰	 ۸۰۰۰', 911, 'Product/778/778_thumb.png', 'Product/778/778_medium.png', 'Product/778/778.png');
insert into [tblProductDesc] values(779, 'بلوک سفال تیغه ساده ۲۰ سانتی', 8, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال تیغه ساده

۲۰سانتی

۴۳۰۰	
۲۰×۲۰×۲۰

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۲۳۰۰

۳۵۰۰	 ۵۱۰۰', 911, 'Product/779/779_thumb.png', 'Product/779/779_medium.png', 'Product/779/779.png');
insert into [tblProductDesc] values(780, 'بلوک سفال تیغه فوم ۲/۵ سانتی', 9, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال تیغه فوم دار

۱۵سانتی

۲۸۰۰	
۱۳×۱۸×۱۷/۵

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۳۷۰۰

۵۲۰۰	 ۸۰۰۰', 911, 'Product/780/780_thumb.png', 'Product/780/780_medium.png', 'Product/780/780.png');
insert into [tblProductDesc] values(781, 'بلوک سفال تیغه فوم دار ۲۰سانتی', 8, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
بلوک سفال تیغه فوم دار

۲۰سانتی

۴۳۰۰	
۱۴×۲۰×۲۰

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۲۳۰۰

۳۵۰۰	 ۵۱۰۰', 911, null, null, null);
insert into [tblProductDesc] values(782, 'آجر 10 سوراخ نما ساده 4 سانتی', 14, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
آجر ۱۰سوراخ نما ساده ۴سانتی		
۴×۱۰×۲/۷

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۱۱۵۰۰

۱۶۵۰۰	 ۲۴۰۰۰', 911, 'Product/782/782_thumb.png', 'Product/782/782_medium.png', 'Product/782/782.png');
insert into [tblProductDesc] values(783, 'آجر 10 سوراخ نما لبگرد 4سانتی', 14, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
آجر ۱۰سوراخ نما لبگرد ۴سانتی	 ۹۵۰	
۴×۱۰×۲۱

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۱۱۰۰۰

۱۶۰۰۰	 ۲۴۰۰۰', 911, 'Product/783/783_thumb.png', 'Product/783/783_medium.png', 'Product/783/783.png');
insert into [tblProductDesc] values(784, 'آجر 10 سوراخ نما 4 سانتی نیمه', 14, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'اطلاعات فنی:

نوع جنس	 وزن (گرم)	 ابعاد کاری	 قیمت (ریال)
آجر ۱۰سوراخ نما نیمه ۴سانتی	 ۴۵۰	
۴×۱۰×۲/۷

 
ظرفیت حمل و نقل:

تک	 ۱۰ چرخ	 تریلی
۱۱۵۰۰

۱۶۵۰۰	 ۲۴۰۰۰', 911, 'Product/784/784_thumb.png', 'Product/784/784_medium.png', 'Product/784/784.png');
insert into [tblProductDesc] values(785, 'MCS1   Allpes', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, null, 488, 'Product/785/785_thumb.png', 'Product/785/785_medium.png', 'Product/785/785.png');
insert into [tblProductDesc] values(786, 'بلوک بتنی سبک هوادار اتوکلاو شده', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'ابـعـاد بلـوک هـای آرامـکـس :

   
بــلــوک
ســایــز - سانتیمتر
آرامـکـس  7.5
60 * 25 * 7.5 
آرامـکـس   10
60 * 25 *  10
آرامـکـس   15
60 * 25 *  15
آرامـکـس   20
60 * 25 *  20
آرامـکـس   25
60 * 25 *  25
آرامـکـس   30
60 * 25 *  30

  بلوک های بتن سبک هوادار اتوکلاو شده (AAC) در اوایل قرن بیستم در سوئد ابداع شد و جوزف هبل تولید تجاری آن را در سال های 1940 آغاز کرد. در حال حاضر این بلوک ها به طور عمده و گسترده در اروپا کاربرد داشته و در 50% ساخت و سازهای مسکونی از این بلوک ها استفاده می شود ، و همچنین در استرالیا و آسیا نیز به سرعت جایگاه خود را ایجاد کرده اند. هم اکنون کارخانجات تولید AAC در بیش از 50 کشور جهان مشغول به فعالیت هستند.



بلوک های بتن سبک هوادار اتوکلاو شده از موادی همچون سیمان ، آهک ، آب ، سیلیس و پودر آلومینیم تهیه می شوند. پودر آلومینیم با مخلوط قلیایی سیمان و آهک واکنش داده و میلیون ها حباب کوچک که بطور یکنواخت پراکنده شده اند ایجاد می کند. مخلوط بتن در ظرف های بزرگ ریخته شده و به آن زمان داده می شود تا کمی سخت گردد . پس از آن برش خورده و به بلوک های یکسان تبدیل و سپس توسط فشار و بخار در مرحله اتوکلاوینگ عمل آوری می شوند. در واقع اتوکلاوینگ کردن زمان مراحل فشرده و محکم شدن بلوک های بتنی را از 28 روز تنها به چند ساعت کاهش می دهد. ضمنا اجرای اتوکلاوینگ بر محصول موجب حذف پدیده جمع شدگی محصول در هنگام تر شدن ها و خشک شدن های متوالی می گردد.

خواص فیزیکی این محصول و پروسه تولید آن سبب شده است تا این محصول به دلایل متعدد تبدیل به یک محصول ساختمانی ایده آل گردد.

از این محصول می توان در تمامی نقاط یک ساختمان در حال احداث استفاده نمود.

', 934, null, null, null);
insert into [tblProductDesc] values(787, 'راهبند', 37, '          ', 0, '', '1392/04/21', '', 'راهبند ها راه حل مناسب برای کنترل ورودی پارکنیک ، انبارها، تعمیرگاه و حتی ورودی محوطه های عمومی محسوب می گردند.', 1, -1, 1, 1, 'ویژگی ها:
برخورداری از سیستم بالانس کننده جهت کاستن از فشار وارده بر گیربکس و ایجاد حرکت یکنواخت.
برخورداری از سیستم های ایمنی و هشدار دهنده مانند چشم الکترونیکی و فلاش و سنسور بر روی لبه و در قسمت زیرین بازو جهت بالابردن شریب ایمنی و حفاظت.
دارای تابلو فرمان میکروپرسسوری جهت انتقال فرامیت سیستم های مختلف بوسیله ریموت کنترل یا کلید فرمان.
دارای قابلیت خلاص شدن آسان و بهره برداری بصورت دستی در هنگام قطع برق و مواقع نیاز .
دارای ظاهری زیبا شکیل و مقاوم.
مناسب جهت استفاده در شرایط آب و هوایی مختلف  (از دمای 15- تا 55 + درجه سانتی گراد)
دارای طول بازوهای از 3m تا 7m برای مراجعیت و اماکن عمومی ، ادارات پارکینگ و تا 12m برای ورودیهای مکانهای صنعتی و مناسب برای ترددهای از 1000 بار در شبانه روز تا تردد و ترافیک دائم بسته به محل نصب.', 932, 'Product/787/787_thumb.png', 'Product/787/787_medium.png', 'Product/787/787.png');
insert into [tblProductDesc] values(788, 'درب اتوماتیک بیمارستان', 37, '          ', 0, '', '1392/04/21', '', 'کاربردها: اطلاق عمل - بخش های رادیو لوژی -کلینک ها و لابراتورها- Clean Rooms', 1, -1, 1, 1, 'این محصول بازرسی های موسسه حفاظت از رادیواکتیو و مراکز ایمنی سازمان انرژی اتمی کشورهای برای تولید کننده را کنترل ضایعات و بیماریها را با موافقت گذارانده اند.
ریل اصلی دستگاه ها از آلومینیوم سخت کاری شده تولید گردیده است که حرکت بی سرو صدا و روان غلتک ها و دستک ها را برای یک میلیون بار تضمین می کند.
درب ها از فوم اورتان با طی نمودن پروسه های لازم با صفحه های که می توانند استنلس استیل یا آلومینیوم باشند تهیه می گردد و با پوشش رنگ های متنوع پادرکوتد شده هم قابل ارائه می باشد.
برای دور فریم دربها از لاستیک ها مخصوص برای غیر قابل نفوذ کردن دربها برای حفاظت از اشعه X مورد استفاده قرار می گیرد.
ضفحات سربی با ضخامتهای 3 میلی متر و تا 6 میلی متر در اخل دربها برای حفاظت و ایمنی بیشتر مراجعه کننگان و پرسنلی که در مجاورت این دربها قرار دارند.
این دربها در انواع اسلایدینگ ، لولایی ، اتوماتیک و دستی قابل ارائه می باشد.', 932, 'Product/788/788_thumb.png', 'Product/788/788_medium.png', 'Product/788/788.png');
insert into [tblProductDesc] values(789, 'خرپای میلگردی', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'مزایای خرپاهای میلگردی تولیدی تیرچه باغستان      
 
·        تنوع میلگرد مصرفی از سایز 8 الی 16 میلیمتر A3 – (FY) 4000 Kgf/cm2
·        ساخت خرپای تیرچه با میلگرد آجدار A3
·        استفاده از زیگزاگ فابریک A3
·        زیگزاگ دوبل مطابق با مفاد آئین نامه 2909 موسسه استاندارد و تحقیقات
·        عدم استفاده از میلگردهای کششی غیر استاندارد
·        یکدست و شاخه بودن میلگرد های پائین
·        استفاده از سیستم جوش راکتیفایر
·        استفاده از سیمان تیپ 2
·        با بتون پاشنه 350 تا 400 عیار
·        استفاده از فندوله « سفالی » استاندارد و سهولت در گچ کاری و زیبایی سقف
·        امکان بازدید و تائید تیرچه ها برای مشتری قبل از بتون ریزی
·        تحویل فوری و در محل
·        با کمترین قیمت و نهایت رضایت مشتری', 935, 'Product/789/789_thumb.png', 'Product/789/789_medium.png', 'Product/789/789.png');
insert into [tblProductDesc] values(790, 'تیرچه کرومیت فلزی', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'دارای گواهینامه مدیریت کیفیت ISO 9001

·        دارای استاندارد از موسسه استاندارد و تحقیقات صنعتی

·        زیر نظر مهندسین مجرب

·        مطابق با نشریه 151 و 94 سازمان مدیریت و برنامه ریزی کشور

·        دارای آزمایشگاه کنترل کیفیت و برگ آزمایش از آزمایشگاه مقاومت مصالح', 935, 'Product/790/790_thumb.png', 'Product/790/790_medium.png', 'Product/790/790.png');
insert into [tblProductDesc] values(791, 'بلوک سقفی نسوز', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'ایمن و مقاوم در برابر زلزله 
سرعت بالا در اجرا
اجرای آسان گچ و خاک
حمل و نقل آسان و سبک
مقاوم در برابر پوسیدگی و فرسایش 
عایق حرارتی و صوتی همراه با صرفه جویی انرژی
صرفه جویی در هزینه فوندانسیون و زلزله
', 935, 'Product/791/791_thumb.png', 'Product/791/791_medium.png', 'Product/791/791.png');
insert into [tblProductDesc] values(792, 'درب چند منظوره ', 37, '          ', 0, '', '1392/04/21', 'Dorma ktv', '', 1, -1, 1, 1, 'دربهای گردان KTV  با طبقه وسیعی از مدلها و کاربردها ، موارد مصرفی و روکش و شیشه قادرند که پاسخگوی تمام نیازهای شما در مورد طرای موزون ، راحتی ، عایق بودن در برابر گرما و جلوگیری از نفوذ خاک و صدا و امنیت در برابر افراد مزاحم و خربکار می باشد. دستگاه های هدایت کننده الکترونیک این درب ها حرکت موزون آن را گارانتی کرده و در عین حال زاویه های هریک از بال ها و فضای بین آنها حداکثر امنیت را برای شما فراهم کنند.', 41, 'Product/792/792_thumb.png', 'Product/792/792_medium.png', 'Product/792/792.png');
insert into [tblProductDesc] values(793, 'درب گردان ', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'این دربها فضاهای ورودی کافی برای مقابله با حجم بالای تردد را فراهم می کنند و بلاوه محافظی مناسب در برابر سوز، سرما و گرما هستند. دربهای گردان دورما با روکش های گوناگون ، شیشه های متفاوت و طیف وسیعی از اندازه ها تولید می شود و بدین ترتیب حداکثر انعطاف پذیری در ایجاد بهترین  مکمل برای نمای بنا را دارا هستند.
مزایا:
نهایت راحتی در شرایط ترافیک ترددی بالا
حفاظت موثر در برابر سوز
گوناگونی در اپراتورهای موجود
قفل و حفاظ شبانه
سطح بالای انعطاف پذیری در طراحی همراه با روکش ها مختلف و گوناگونی شیشه های بکار رفته به منظور بهبود نمای ظاهری 
حداکثر امنیت مناسب برای راه های خروج اضطراری و راه های فرار', 41, 'Product/793/793_thumb.png', 'Product/793/793_medium.png', 'Product/793/793.png');
insert into [tblProductDesc] values(794, 'درب آکاردئونی', 37, '          ', 0, '', '1392/04/21', 'Dorma fft', '', 1, -1, 1, 1, 'در موارد خاص که ابعاد فضا محدود هستند یا در واقع به هیچ جایی برای مانورهای معماری نیست دورما با پیشنهادات ویژه خود برای صرفه جویی در فضا پاسخگوی مشکل شماست. دربهای آکاردئونی همچنین برای به حداکثر رساندن عرض ورودی در جاهایی که فضا تنگ است مناسب هستند. همچنین این دربهای در ورودی هایی که عمق کافی برای نصب درب نیست راه حل ایده آلی هستند.', 41, 'Product/794/794_thumb.png', 'Product/794/794_medium.png', 'Product/794/794.png');
insert into [tblProductDesc] values(795, 'درب نجات دهندگان فضایی', 37, '          ', 0, '', '1392/04/21', 'Dorma Fst', '', 1, -1, 1, 1, 'آنها طوری طراحی می شوند که درب حرکت گردان و کشویی در کوچکترین فضاها را دارد. در نتیجه عرض راهرو و نجات دهنده فضا کمتر از کل عرض ساختاری درب نیست . با توجه به دربهای اتوماتیک دورما نجات دهندگان فضایی RST سریع آرام ایمن و کاربرپسند هستند. 
کنترلگر ریز پردازنده بسیاری از نیازهای عملیاتی را بر آورده می کند و حداکثر اطمینان خاطر را با توجه به آرایش کامل وسایل کنترل کننده و حفاظ ها همراه با حداکثر ایمنی فراهم می کند.', 41, 'Product/795/795_thumb.png', 'Product/795/795_medium.png', 'Product/795/795.png');
insert into [tblProductDesc] values(796, 'درب نیم دایره', 37, '          ', 0, '', '1392/04/21', 'Dorma bst', '', 1, -1, 1, 1, 'در این سری شما میتوانید دربهای نیم دایره مقعر تا محدب ، بخش های نیم هلالی، تمام دایره ، بیضی و بخش های دوبل را پوشش دهید ، یا با استفاده از این طرحهای اولیه طراح ی منحصر بفرد خود را انجام دهید. دربهای مدور دورما با مفاهیم مختلف طرحی معماری همگون است. شما میتوانید آثار واضحی را طراحی کرده یا دری طراحی کنید که با نمای ساختمان در همگونی کامل باشد.
دربهای Bst در برابر فشارهای باد مقاوم هستند و میتوان از آنها بعنوان کنترل دربهای ورودی و یا راهنمایی مسیر ترافیک استفاده کرد. حتی مدلهای کم عرض این درب هم به لابی شما عمق و عرض بیشتری می بخشد فریم های نازک این درب با حفظ خاصیت عایق کردن محیط ظاهر تمام شیشه  را برای ورودی شما فراهم می کنند.', 41, 'Product/796/796_thumb.png', 'Product/796/796_medium.png', 'Product/796/796.png');
insert into [tblProductDesc] values(797, 'درب کم عرض که بصورت عریض باز می شوند', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'همانند تمامی دربهای اتوماتیک دروما این درب بسیار قابل اطمینان بوده و با توجه کامل به امنیت و راحتی مصرف کننده طراحی شده است. این دربها در مدلهای مختلف استاندارد و اپتیکال ساخته شده اند و با خصوصیت های گوناگونی که دارند به راحتی پاسخگوی گسترده ای از نیازهای مشتری در مورد استفاده شکل ظاهری و عایق حرارتی می باشند.', 41, 'Product/797/797_thumb.png', 'Product/797/797_medium.png', 'Product/797/797.png');
insert into [tblProductDesc] values(798, 'بلوک سبک 15*25*60', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'سبکی بلوک  PERELEX
بلوک پرلکس بدلیل استفاده از دانش فنی برتر و نحوه تولید با استفاده از فن آوری پیشرفته روز دنیا،محصولی بسیار سبک می باشد که این امر منتهی به کاهش مقاطع اسکلت و فونداسیون و مقاومت بیشتر سازه در مقابل نیروی مخرب زلزله و کاهش هزینه ساخت خواهد شد.

فاق و زبانه در بلوک PERELEX
وجود فاق و زبانه در بلوک پرلکس باعث ایجاد اتصال مکانیکی مناسب در محل اتصال دو بلوک میگردد.عدم وجود فاق و زبانه در محصولات مشابه مشکلات زیادی را در مراحل اجرا به دنبال داشته و با مصرف ملات بیشتر باعث افزایش هزینه نصب و اجرا می گردد.همچنین فاق و زبانه باعث ارتقاء ایزولاسیون حرارتی دیوار نیز می گردد.این مشخصه در بلوک های بتن گازی AACو در محصولات مشابه بر مبنای سیستم برش وجود ندارد.

مقاومت در برابر ترک و ریزش بلوک PERELEX
امکان ترک خوردگی و ریزش در اثر ضربه و زلزله و تغییرات دمایی در این نوع بلوک به دلیل دارا بودن الیاف پلی پروپیلن بسیار کاهش می یابد.این مشخصه در بلوک های بتن گازی و محصولات مشابه وجود ندارد.

عایق حرارتی بلوک PERELEX
بلوک پرلکس به خاطر تخلخل و وجود تعداد بسیار زیاد حباب های ریز هوای محبوس در آن،جزء برترین مصالح عایق حرارتی و برودتی در ساختمان میباشد که بر طبق تحقیقات پژوهشگران آمریکایی ٪۳۲ در هزینه های ایجاد تاًسیسات حرارتی و برودتی صرفه جویی و از اتلاف مقادیر زیاد انرژی جلو گیری خواهد شد.با توجه به رعایت مقررات مبحث ۱۹،بلوک پرلکس در ضخامت های متعارف این الزامات را به خوبی پوشش میدهد.

عایق صوتی بلوک PERELEX
بلوک پرلکس به دلیل وجود مواد اولیه خاص در ترکیبات آن و نحوه پخش حباب های محبوس در آن به عنوان یکی از مصالح خوب در رابطه با عایق صوتی بوده به طوری که در برخی از استانداردهای جهانی بالاخص استاندارد آمریکا،آن را در زمره عایق های صوتی بسیار خوب دسته بندی و در پروژه های مختلف در زمینه عایق صوتی از آن استفاده می کنند.با توجه به رعایت مقررات ۱۸،بلوک پرلکس در ضخامت های متعارف این الزلمات را به خوبی پوشش می دهد و بهترین مصالح عایق برای عایق بندی صوتی فضاهای پر سر وصدا از قبیل موتورخانه ها،فضاهای اداری و مدارس می باشد.

صرفه اقتصادی و سرعت در اجرای بلوک PERELEX
بلوک سبک پرلکس بدلیل داشتن فاق و زبانه،ابعاد متناسب و کارکرد ساده سرعت اجرا را چندین برابر افزایش می دهد.همچنین عدم ایجاد ضایعات،وزن سبک،پایین بودن ملات مصرفی و نازک بودن ضخامت اندود گچ بدلیل عدم اعوجاج و ده ها مزیت دیگر نسبت به سایر مصالح منتهی به پایین آمدن هزینه های ساخت و ساز می گردد.(کاهش ابعاد فونداسیون و اسکلت)

مقاومت در برابر آتش بلوک PERELEX
در اثر آتش سوزی و حرارت های بالا در بلوک پرلکس با توجه به وجود تخلخل و امکان خروج گازها و وجود الیاف پلی پروپیلن تخریب صورت نمی گیرد و مکانیزم خردایش و انفجار گونه به شدت پائین می آید که همین ویژگی آن را در زمره دیوار های ضد آتش Fire wallمعرفی می نماید و در مکانهای عمومی حساس و با اهمیت از جمله:هتل ها،بیمارستانها،مراکز اموزشی و ...کاربری خوبی دارد.

جذب آب و قابلیت سیمان کاری و نصب سنگ و کاشی روی بلوک PERELEX
جذب آب مناسب در بلوک سبک پرلکس باعث گردیده است تا امکان انجام عملیات سیمان کاری و یا نصب سنگ نما و کاشی بر  روی آنها به خوبی صورت گیرد.

کار پذیری بلوک PERELEX
بلوک پرلکس را به خوبی می توان اره کشی،میخ کوبی،سوراخ کاری و یا شیار زنی نمود و محل عبور تأسیسات مکانیکال و الکتریکال را تعبیه کرد.کار پذیری این بلوک در سطح بسیار بالایی می باشد.

عایق رطوبتی بلوک PERELEX
به دلیل مصالح به کار گرفته شده و دانش فنی برتر در فرآیند تولید بلوک پرلکس،محصول نهایی در برابر رطوبت مقاومت خوبی از خود نشان می دهد بطوری که از لحاظ عایق رطوبتی همگام با استانداردهای روز دنیا میباشد.

سهولت در حمل و نقل بلوک PERELEX
با توجه به اینکه بلوک پرلکس با شکل هندسی منظم و دقیق و با وزن مخصوص پایین تولید می گردد.در هر سرویس حمل،نسبت به مصالح مشابه با حجم بیشتر و وزن کمتری بارگیری و حمل می گردد.

دوام و غیر قابل تجزیه بودن بلوک PERELEX
با توجه به ترکیبات بلوک پرلکس این محصول فاسد نمی شود و رشد کپک و یا میکروارگانیزم های دیگر در آن غیر ممکن است و هیچ گونه حشره ای در آن لانه سازی یا تخم گذاری نخواهد کرد.به دلیل مواد موجود،بلوک در طولانی مدت ماندگاری عالی داشته و تغییر خاصیت نخواهد داشت همچنین محصول پرلکس دارای PHبرابر۷می باشدکه پایداری آن را در مقابل عوامل شیمیایی تضمین می نماید.

سازگاری با محیط زیست بلوک PERELEX
تحقیقات نشان میدهد  بلوک پرلکس و فرآیند تولید آن بدلیل استفاده از انرژی پاک با محیط زیست کاملا سازگار است به گونه ای که برای طبیعت مضر نیست و هیچ گونه زباله یا مواد آلاینده تولید نمی کند.

همگامی با مبحث ۱۸و۱۹ و رعایت استانداردهای ملی ساختمان بلوک PERELEX
مقاومت فشاری بلوک پرلکس بیش از ۳۰Kg/cm که فراتر از الزامات استاندارد ملی شماره ۷۷۸۲ برای بلوک های جدا کننده غیر باربر می باشد.ضریب انتقال حرارتی کمتر از ۰/۱۴W/mk بلوک پرلکس،مبحث۱۹مقررات ملی ساختمان و همچنین عایق صوت بودن بلوک پرلکس،مبحث۱۸مقررات ملی ساختمان را پوشش میدهد.
', 937, 'Product/798/798_thumb.png', 'Product/798/798_medium.png', 'Product/798/798.png');
insert into [tblProductDesc] values(799, 'مد پد', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'مشخصات مد پد:
امکان نمایش وضعیت کارکرد دستگاه
امکان نصب سریع و آسان به جای کلید انتخاب حالت درب
امکان اضافه شدن 3 حالت با شو مختلف با اندازه متغیر به غیر از چهار حالت اصلی (Open - Auto - Exit - lock) 
امکان نمایش ERROR های بوجود آمده در کارکرد دستگاه توسط  mode pad به صورت بالا نویس
امکان کدگذاری بر روی دستگاه Mode pad برای جلوگیری از دستکاری غیر مجاز افراد
امکان فعال سازی 3 نوع زنگ هشدار برای وضعیتهای مختلف دستگاه 
امکان فعال سازی قفل داروخانه ای برای حالتهای مختلف دستگاه
امکان نمایش تعداد دفعات باز و بسته شدن درب ', 41, 'Product/799/799_thumb.png', 'Product/799/799_medium.png', 'Product/799/799.png');
insert into [tblProductDesc] values(800, 'بلوک سبک 10*25*60', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, '', 937, 'Product/800/800_thumb.png', 'Product/800/800_medium.png', 'Product/800/800.png');
insert into [tblProductDesc] values(801, 'درب پارکینگ', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'مشخصات تیغه ها:
تیغه ها دو جداره و تقویت شده با پل استحکام میباشد.
از جنس آلومینیوم با بهترین مواد اولیه می باشد.
دارای رنگ مقاوم الکترواستاتیک کوره ای می باشد.
دارای تنوع رنگ بدون محدودیت.
دارای وزن استاندارد.', 41, 'Product/801/801_thumb.png', 'Product/801/801_medium.png', 'Product/801/801.png');
insert into [tblProductDesc] values(802, 'درب تک لنگه و دو لنگه', 37, '          ', 0, '', '1392/04/21', 'ES410', '', 1, -1, 1, 1, 'ES410  به راحتی برای دربهای تک لنگه ای با وزن حداکثر 200 کیلوگرم و فضای عبور 3 متر کاربرد دارد در صورتیکه ES 420 برای درب های دو لنگه با حداکثر وزن  125*2 کیلوگرم برای هر لنگه درب بسیار مناسب است.
مزایا و ویژگی ها:
طراحی جمع و جور
عامل دینامیکی عالی
کاربرد برای طراحی دربهای استیل ضد زنگ و سنگین 
خودآموز
پارامتر نرم افزاری 
عملکرد Go & push
ورودی جداگانه برای کنترل سیستم تشخیص حریق
تابع یکپارچه Airlock برای حداکثر 3 مجموعه درب
قابلیت تغییر بسته شدن از حالت اتوماتیک به حالت دستی', 41, 'Product/802/802_thumb.png', 'Product/802/802_medium.png', 'Product/802/802.png');
insert into [tblProductDesc] values(803, 'کرکره فروشگاهی', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'مشخصات موتور:
موتورهای MC (موتور کرکره )در کرکره های با شفت و فنر
موتورهای تیوبلار جهت کرکره ای با شفت لوله ای
موتورهای ساید جهت کرکره های صنعتی و بزرگ', 41, 'Product/803/803_thumb.png', 'Product/803/803_medium.png', 'Product/803/803.png');
insert into [tblProductDesc] values(804, 'درب کشویی', 37, '          ', 0, '', '1392/04/21', 'ES 200 Easy', '', 1, -1, 1, 1, 'ES 200 Easy جدید در طراحی جذاب دور ما برای اتوماسیون ساده واحدهای درب کشویی در تمام زمینه های کاربردی قرار می گیرد.سیستم دیسکی  ابتکاری جدید برای واحدهای درب تا 100*2 کیلوگرم می باشد. ساختمان مدولار آن با سعی و اعتماد جهانی بر روی اجزاء جدید مکانیکی و الکتریکی آن است که شامل قطعات کم می باشد و می تواند برای ارتفاع 100 میلیمتر استفاده است.
ویژگی ها:
مدولار سیستم انعطاف پذیر
قابلیت جابجایی 2 لنگه درب هرکدام به وزن 100 کیلوگرم 
قابل انطباق با نیازهای پروژه 
تعداد کم اجزاء سیستم 
minidrive unit  تست شده که به صورت واحدی مجزا عمل می کند.
مونتاژ آسان سیستم دیسکها
کنترل چند کاربری
نصب و را ه اندازی آسان
امکان ترکیب با تمام پروفیل های رایج
عملکرد قابل اطمینان و ایمنی بالا 
حرکتی آرام
برنامه کامل سوئیچ
ارتباطات استاندارد بیشمار 
سرمایه گذاری قابل اعتماد به دلیل انطباق با تمامی استانداردهای اروپا', 41, 'Product/804/804_thumb.png', 'Product/804/804_medium.png', 'Product/804/804.png');
insert into [tblProductDesc] values(805, 'بلوک سبک 20*25*60', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, -1, 1, 'سبکی بلوک  PERELEX
بلوک پرلکس بدلیل استفاده از دانش فنی برتر و نحوه تولید با استفاده از فن آوری پیشرفته روز دنیا،محصولی بسیار سبک می باشد که این امر منتهی به کاهش مقاطع اسکلت و فونداسیون و مقاومت بیشتر سازه در مقابل نیروی مخرب زلزله و کاهش هزینه ساخت خواهد شد.

فاق و زبانه در بلوک PERELEX
وجود فاق و زبانه در بلوک پرلکس باعث ایجاد اتصال مکانیکی مناسب در محل اتصال دو بلوک میگردد.عدم وجود فاق و زبانه در محصولات مشابه مشکلات زیادی را در مراحل اجرا به دنبال داشته و با مصرف ملات بیشتر باعث افزایش هزینه نصب و اجرا می گردد.همچنین فاق و زبانه باعث ارتقاء ایزولاسیون حرارتی دیوار نیز می گردد.این مشخصه در بلوک های بتن گازی AACو در محصولات مشابه بر مبنای سیستم برش وجود ندارد.

مقاومت در برابر ترک و ریزش بلوک PERELEX
امکان ترک خوردگی و ریزش در اثر ضربه و زلزله و تغییرات دمایی در این نوع بلوک به دلیل دارا بودن الیاف پلی پروپیلن بسیار کاهش می یابد.این مشخصه در بلوک های بتن گازی و محصولات مشابه وجود ندارد.

عایق حرارتی بلوک PERELEX
بلوک پرلکس به خاطر تخلخل و وجود تعداد بسیار زیاد حباب های ریز هوای محبوس در آن،جزء برترین مصالح عایق حرارتی و برودتی در ساختمان میباشد که بر طبق تحقیقات پژوهشگران آمریکایی ٪۳۲ در هزینه های ایجاد تاًسیسات حرارتی و برودتی صرفه جویی و از اتلاف مقادیر زیاد انرژی جلو گیری خواهد شد.با توجه به رعایت مقررات مبحث ۱۹،بلوک پرلکس در ضخامت های متعارف این الزامات را به خوبی پوشش میدهد.

عایق صوتی بلوک PERELEX
بلوک پرلکس به دلیل وجود مواد اولیه خاص در ترکیبات آن و نحوه پخش حباب های محبوس در آن به عنوان یکی از مصالح خوب در رابطه با عایق صوتی بوده به طوری که در برخی از استانداردهای جهانی بالاخص استاندارد آمریکا،آن را در زمره عایق های صوتی بسیار خوب دسته بندی و در پروژه های مختلف در زمینه عایق صوتی از آن استفاده می کنند.با توجه به رعایت مقررات ۱۸،بلوک پرلکس در ضخامت های متعارف این الزلمات را به خوبی پوشش می دهد و بهترین مصالح عایق برای عایق بندی صوتی فضاهای پر سر وصدا از قبیل موتورخانه ها،فضاهای اداری و مدارس می باشد.

صرفه اقتصادی و سرعت در اجرای بلوک PERELEX
بلوک سبک پرلکس بدلیل داشتن فاق و زبانه،ابعاد متناسب و کارکرد ساده سرعت اجرا را چندین برابر افزایش می دهد.همچنین عدم ایجاد ضایعات،وزن سبک،پایین بودن ملات مصرفی و نازک بودن ضخامت اندود گچ بدلیل عدم اعوجاج و ده ها مزیت دیگر نسبت به سایر مصالح منتهی به پایین آمدن هزینه های ساخت و ساز می گردد.(کاهش ابعاد فونداسیون و اسکلت)

مقاومت در برابر آتش بلوک PERELEX
در اثر آتش سوزی و حرارت های بالا در بلوک پرلکس با توجه به وجود تخلخل و امکان خروج گازها و وجود الیاف پلی پروپیلن تخریب صورت نمی گیرد و مکانیزم خردایش و انفجار گونه به شدت پائین می آید که همین ویژگی آن را در زمره دیوار های ضد آتش Fire wallمعرفی می نماید و در مکانهای عمومی حساس و با اهمیت از جمله:هتل ها،بیمارستانها،مراکز اموزشی و ...کاربری خوبی دارد.

جذب آب و قابلیت سیمان کاری و نصب سنگ و کاشی روی بلوک PERELEX
جذب آب مناسب در بلوک سبک پرلکس باعث گردیده است تا امکان انجام عملیات سیمان کاری و یا نصب سنگ نما و کاشی بر  روی آنها به خوبی صورت گیرد.

کار پذیری بلوک PERELEX
بلوک پرلکس را به خوبی می توان اره کشی،میخ کوبی،سوراخ کاری و یا شیار زنی نمود و محل عبور تأسیسات مکانیکال و الکتریکال را تعبیه کرد.کار پذیری این بلوک در سطح بسیار بالایی می باشد.

عایق رطوبتی بلوک PERELEX
به دلیل مصالح به کار گرفته شده و دانش فنی برتر در فرآیند تولید بلوک پرلکس،محصول نهایی در برابر رطوبت مقاومت خوبی از خود نشان می دهد بطوری که از لحاظ عایق رطوبتی همگام با استانداردهای روز دنیا میباشد.

سهولت در حمل و نقل بلوک PERELEX
با توجه به اینکه بلوک پرلکس با شکل هندسی منظم و دقیق و با وزن مخصوص پایین تولید می گردد.در هر سرویس حمل،نسبت به مصالح مشابه با حجم بیشتر و وزن کمتری بارگیری و حمل می گردد.

دوام و غیر قابل تجزیه بودن بلوک PERELEX
با توجه به ترکیبات بلوک پرلکس این محصول فاسد نمی شود و رشد کپک و یا میکروارگانیزم های دیگر در آن غیر ممکن است و هیچ گونه حشره ای در آن لانه سازی یا تخم گذاری نخواهد کرد.به دلیل مواد موجود،بلوک در طولانی مدت ماندگاری عالی داشته و تغییر خاصیت نخواهد داشت همچنین محصول پرلکس دارای PHبرابر۷می باشدکه پایداری آن را در مقابل عوامل شیمیایی تضمین می نماید.

سازگاری با محیط زیست بلوک PERELEX
تحقیقات نشان میدهد  بلوک پرلکس و فرآیند تولید آن بدلیل استفاده از انرژی پاک با محیط زیست کاملا سازگار است به گونه ای که برای طبیعت مضر نیست و هیچ گونه زباله یا مواد آلاینده تولید نمی کند.

همگامی با مبحث ۱۸و۱۹ و رعایت استانداردهای ملی ساختمان بلوک PERELEX
مقاومت فشاری بلوک پرلکس بیش از ۳۰Kg/cm که فراتر از الزامات استاندارد ملی شماره ۷۷۸۲ برای بلوک های جدا کننده غیر باربر می باشد.ضریب انتقال حرارتی کمتر از ۰/۱۴W/mk بلوک پرلکس،مبحث۱۹مقررات ملی ساختمان و همچنین عایق صوت بودن بلوک پرلکس،مبحث۱۸مقررات ملی ساختمان را پوشش میدهد.
', 937, 'Product/805/805_thumb.png', 'Product/805/805_medium.png', 'Product/805/805.png');
insert into [tblProductDesc] values(806, 'جک', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'انواع جکها:
هیدرولیک   الکترومکانیک
در انواع درهای لولایی ، نوع جک با توجه به تناسب بار وارده و وزن در تعیین میشود.
درهای زیر 400 کیلوگرم
درهای 400 تا 600 کیلوگرم
درهای بالای 600 کیلوگرم', 41, 'Product/806/806_thumb.png', 'Product/806/806_medium.png', 'Product/806/806.png');
insert into [tblProductDesc] values(807, 'در ریلی', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'نوع انتخاب موتور جهت درهای ریلی با توجه به تناسب بار وارده و وزن در تعیین میشود.
موتورهای مناسب برای درهای تا وزن 600 کیلوگرم
موتورهای مناسب برای درهای بین 600 تا 800 کیلوگرم
موتورهای مناسب برای درهای بالای 800 کیلوگرم', 41, 'Product/807/807_thumb.png', 'Product/807/807_medium.png', 'Product/807/807.png');
insert into [tblProductDesc] values(808, 'در شیشه ای', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'انواع درهای شیشه ای:
در شیشه ای اسلاید یک لنگه
در شیشه ای اسلاید دو لنگه
در شیشه ای تلسکوبی یک طرفه
در شیشه ای تلسکوبی دو طرفه
در شیشه ای قوس دار', 41, 'Product/808/808_thumb.png', 'Product/808/808_medium.png', 'Product/808/808.png');
insert into [tblProductDesc] values(809, 'بلوک فوق سبک 20*25*60', 37, '          ', 0, '', '          ', '', '', 932, null, 1, 1, '<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">سبکی بلوک&nbsp; PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">بلوک پرلکس بدلیل استفاده از دانش فنی برتر و نحوه تولید با استفاده از فن آوری پیشرفته روز دنیا،محصولی بسیار سبک می باشد که این امر منتهی به کاهش مقاطع اسکلت و فونداسیون و مقاومت بیشتر سازه در مقابل نیروی مخرب زلزله و کاهش هزینه ساخت خواهد شد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">فاق و زبانه در بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">وجود فاق و زبانه در بلوک پرلکس باعث ایجاد اتصال مکانیکی مناسب در محل اتصال دو بلوک میگردد.عدم وجود فاق و زبانه در محصولات مشابه مشکلات زیادی را در مراحل اجرا به دنبال داشته و با مصرف ملات بیشتر باعث افزایش هزینه نصب و اجرا می گردد.همچنین فاق و زبانه باعث ارتقاء ایزولاسیون حرارتی دیوار نیز می گردد.این مشخصه در بلوک های بتن گازی AACو در محصولات مشابه بر مبنای سیستم برش وجود ندارد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">مقاومت در برابر ترک و ریزش بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">امکان ترک خوردگی و ریزش در اثر ضربه و زلزله و تغییرات دمایی در این نوع بلوک به دلیل دارا بودن الیاف پلی پروپیلن بسیار کاهش می یابد.این مشخصه در بلوک های بتن گازی و محصولات مشابه وجود ندارد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">عایق حرارتی بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">بلوک پرلکس به خاطر تخلخل و وجود تعداد بسیار زیاد حباب های ریز هوای محبوس در آن،جزء برترین مصالح عایق حرارتی و برودتی در ساختمان میباشد که بر طبق تحقیقات پژوهشگران آمریکایی ٪۳۲ در هزینه های ایجاد تاًسیسات حرارتی و برودتی صرفه جویی و از اتلاف مقادیر زیاد انرژی جلو گیری خواهد شد.با توجه به رعایت مقررات مبحث ۱۹،بلوک پرلکس در ضخامت های متعارف این الزامات را به خوبی پوشش میدهد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">عایق صوتی بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">بلوک پرلکس به دلیل وجود مواد اولیه خاص در ترکیبات آن و نحوه پخش حباب های محبوس در آن به عنوان یکی از مصالح خوب در رابطه با عایق صوتی بوده به طوری که در برخی از استانداردهای جهانی بالاخص استاندارد آمریکا،آن را در زمره عایق های صوتی بسیار خوب دسته بندی و در پروژه های مختلف در زمینه عایق صوتی از آن استفاده می کنند.با توجه به رعایت مقررات ۱۸،بلوک پرلکس در ضخامت های متعارف این الزلمات را به خوبی پوشش می دهد و بهترین مصالح عایق برای عایق بندی صوتی فضاهای پر سر وصدا از قبیل موتورخانه ها،فضاهای اداری و مدارس می باشد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">صرفه اقتصادی و سرعت در اجرای بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">بلوک سبک پرلکس بدلیل داشتن فاق و زبانه،ابعاد متناسب و کارکرد ساده سرعت اجرا را چندین برابر افزایش می دهد.همچنین عدم ایجاد ضایعات،وزن سبک،پایین بودن ملات مصرفی و نازک بودن ضخامت اندود گچ بدلیل عدم اعوجاج و ده ها مزیت دیگر نسبت به سایر مصالح منتهی به پایین آمدن هزینه های ساخت و ساز می گردد.(کاهش ابعاد فونداسیون و اسکلت)</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">مقاومت در برابر آتش بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">در اثر آتش سوزی و حرارت های بالا در بلوک پرلکس با توجه به وجود تخلخل و امکان خروج گازها و وجود الیاف پلی پروپیلن تخریب صورت نمی گیرد و مکانیزم خردایش و انفجار گونه به شدت پائین می آید که همین ویژگی آن را در زمره دیوار های ضد آتش Fire wallمعرفی می نماید و در مکانهای عمومی حساس و با اهمیت از جمله:هتل ها،بیمارستانها،مراکز اموزشی و ...کاربری خوبی دارد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">جذب آب و قابلیت سیمان کاری و نصب سنگ و کاشی روی بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">جذب آب مناسب در بلوک سبک پرلکس باعث گردیده است تا امکان انجام عملیات سیمان کاری و یا نصب سنگ نما و کاشی بر&nbsp; روی آنها به خوبی صورت گیرد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">کار پذیری بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">بلوک پرلکس را به خوبی می توان اره کشی،میخ کوبی،سوراخ کاری و یا شیار زنی نمود و محل عبور تأسیسات مکانیکال و الکتریکال را تعبیه کرد.کار پذیری این بلوک در سطح بسیار بالایی می باشد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">عایق رطوبتی بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">به دلیل مصالح به کار گرفته شده و دانش فنی برتر در فرآیند تولید بلوک پرلکس،محصول نهایی در برابر رطوبت مقاومت خوبی از خود نشان می دهد بطوری که از لحاظ عایق رطوبتی همگام با استانداردهای روز دنیا میباشد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">سهولت در حمل و نقل بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">با توجه به اینکه بلوک پرلکس با شکل هندسی منظم و دقیق و با وزن مخصوص پایین تولید می گردد.در هر سرویس حمل،نسبت به مصالح مشابه با حجم بیشتر و وزن کمتری بارگیری و حمل می گردد.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">دوام و غیر قابل تجزیه بودن بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">با توجه به ترکیبات بلوک پرلکس این محصول فاسد نمی شود و رشد کپک و یا میکروارگانیزم های دیگر در آن غیر ممکن است و هیچ گونه حشره ای در آن لانه سازی یا تخم گذاری نخواهد کرد.به دلیل مواد موجود،بلوک در طولانی مدت ماندگاری عالی داشته و تغییر خاصیت نخواهد داشت همچنین محصول پرلکس دارای PHبرابر۷می باشدکه پایداری آن را در مقابل عوامل شیمیایی تضمین می نماید.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">سازگاری با محیط زیست بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">تحقیقات نشان میدهد&nbsp; بلوک پرلکس و فرآیند تولید آن بدلیل استفاده از انرژی پاک با محیط زیست کاملا سازگار است به گونه ای که برای طبیعت مضر نیست و هیچ گونه زباله یا مواد آلاینده تولید نمی کند.</span><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<strong style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">همگامی با مبحث ۱۸و۱۹ و رعایت استانداردهای ملی ساختمان بلوک PER<span style="color: #ff0000;">E</span>LEX</strong><br style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;" />
<span style="color: #222222; font-size: 12.800000190734863px; line-height: 22px; text-align: justify; background-color: #d7d5c0;">مقاومت فشاری بلوک پرلکس بیش از ۳۰Kg/cm که فراتر از الزامات استاندارد ملی شماره ۷۷۸۲ برای بلوک های جدا کننده غیر باربر می باشد.ضریب انتقال حرارتی کمتر از ۰/۱۴W/mk بلوک پرلکس،مبحث۱۹مقررات ملی ساختمان و همچنین عایق صوت بودن بلوک پرلکس،مبحث۱۸مقررات ملی ساختمان را پوشش میدهد.</span>', 937, 'Product/809/809_thumb.png', 'Product/809/809_medium.png', 'Product/809/809.png');
insert into [tblProductDesc] values(810, 'راهبند', 37, '          ', 0, '', '1392/04/21', '', '', 1, -1, 1, 1, 'انواع راهبند جهت کارکرد:
هیدرولیک      الکترومکانیک
نوع موتور با توجه به میزان طول باز و تعیین میشود.
زیر 4متر
4تا 6متر
بالای 6 متر', 41, 'Product/810/810_thumb.png', 'Product/810/810_medium.png', 'Product/810/810.png');
insert into [tblProductDesc] values(811, 'بلوک فوق سبک 15*25*60', 37, '          ', 0, '', '          ', '', '', 932, 0, 1, 1, '', 937, 'Product/811/811_thumb.png', 'Product/811/811_medium.png', 'Product/811/811.png');
insert into [tblProductDesc] values(812, 'درب کشویی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/812/812_thumb.png', 'Product/812/812_medium.png', 'Product/812/812.png');
insert into [tblProductDesc] values(813, 'درب منحنی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/813/813_thumb.png', 'Product/813/813_medium.png', 'Product/813/813.png');
insert into [tblProductDesc] values(814, 'درب تاشو', 37, '          ', 0, '', '1392/04/22', 'Folding', '', 1, -1, 1, 1, null, 672, 'Product/814/814_thumb.png', 'Product/814/814_medium.png', 'Product/814/814.png');
insert into [tblProductDesc] values(815, 'درب پارکینگ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/815/815_thumb.png', 'Product/815/815_medium.png', 'Product/815/815.png');
insert into [tblProductDesc] values(816, 'درب پارکینگ کشویی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/816/816_thumb.png', 'Product/816/816_medium.png', 'Product/816/816.png');
insert into [tblProductDesc] values(817, 'راهبند', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/817/817_thumb.png', 'Product/817/817_medium.png', 'Product/817/817.png');
insert into [tblProductDesc] values(818, 'راهبند Stoppy', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/818/818_thumb.png', 'Product/818/818_medium.png', 'Product/818/818.png');
insert into [tblProductDesc] values(819, 'تیرچه پیش ساخته ایتالران', 24, '          ', 0, '', '          ', '', '', 933, 0, 1, 1, '', 938, 'Product/819/819_thumb.png', 'Product/819/819_medium.png', 'Product/819/819.png');
insert into [tblProductDesc] values(820, 'درب فروشگاهی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 672, 'Product/820/820_thumb.png', 'Product/820/820_medium.png', 'Product/820/820.png');
insert into [tblProductDesc] values(821, 'درب شیشه ای اتومات کشویی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/821/821_thumb.png', 'Product/821/821_medium.png', 'Product/821/821.png');
insert into [tblProductDesc] values(822, 'درب شیشه ای اتومات نیمه گرد', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/822/822_thumb.png', 'Product/822/822_medium.png', 'Product/822/822.png');
insert into [tblProductDesc] values(823, 'درب ریلی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/823/823_thumb.png', 'Product/823/823_medium.png', 'Product/823/823.png');
insert into [tblProductDesc] values(824, 'درب لولائی پارکینگی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/824/824_thumb.png', 'Product/824/824_medium.png', 'Product/824/824.png');
insert into [tblProductDesc] values(825, 'خرپای میلگردی', 37, '          ', 0, '', '          ', '', '', 933, null, 1, 1, '', 938, 'Product/825/825_thumb.png', 'Product/825/825_medium.png', 'Product/825/825.png');
insert into [tblProductDesc] values(826, 'درب کرکره ای', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/826/826_thumb.png', 'Product/826/826_medium.png', 'Product/826/826.png');
insert into [tblProductDesc] values(827, 'قطعات پارکینگی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 670, 'Product/827/827_thumb.png', 'Product/827/827_medium.png', 'Product/827/827.png');
insert into [tblProductDesc] values(828, 'بلوک سقفی سفالی 40*25*25', 37, '          ', 0, '', '          ', '', '', 933, 0, 1, 1, '', 938, 'Product/828/828_thumb.png', 'Product/828/828_medium.png', 'Product/828/828.png');
insert into [tblProductDesc] values(829, 'بلوک سقفی سفالی 40*25*20', 37, '          ', 0, '', '          ', '', '', 933, 0, 1, 1, '', 938, 'Product/829/829_thumb.png', 'Product/829/829_medium.png', 'Product/829/829.png');
insert into [tblProductDesc] values(830, 'درب تلسکوپی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 940, 'Product/830/830_thumb.png', 'Product/830/830_medium.png', 'Product/830/830.png');
insert into [tblProductDesc] values(831, 'بلوک سقفی سفالی عایق(ایتالیت12)', 9, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد : 40*25*12', 938, 'Product/831/831_thumb.png', 'Product/831/831_medium.png', 'Product/831/831.png');
insert into [tblProductDesc] values(832, 'درب اتوماتیک گرد', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 940, 'Product/832/832_thumb.png', 'Product/832/832_medium.png', 'Product/832/832.png');
insert into [tblProductDesc] values(833, 'بلوک سقفی سفالی عایق (ایتالیت 12)', 9, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد : 40*25*12', 938, 'Product/833/833_thumb.png', 'Product/833/833_medium.png', 'Product/833/833.png');
insert into [tblProductDesc] values(834, 'درب اتوماتیک گردان ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 940, 'Product/834/834_thumb.png', 'Product/834/834_medium.png', 'Product/834/834.png');
insert into [tblProductDesc] values(835, 'درب اتوماتیک کشویی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 940, 'Product/835/835_thumb.png', 'Product/835/835_medium.png', 'Product/835/835.png');
insert into [tblProductDesc] values(836, 'بلوک سقفی سفالی عایق(ایتالیت 8)', 9, '          ', 0, '', '          ', '', '', 933, 0, 1, 1, 'ابعاد:40*25*8', 938, 'Product/836/836_thumb.png', 'Product/836/836_medium.png', 'Product/836/836.png');
insert into [tblProductDesc] values(837, 'تیغه 100 دو جداره یکرو ( رول به داخل)', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'تیغه با ضخامت 1/7 میلیمتر به بالا 
قابل استفاده جهت عرض های تا 6/5 متر', 708, 'Product/837/837_thumb.png', 'Product/837/837_medium.png', 'Product/837/837.png');
insert into [tblProductDesc] values(838, 'تیغه 100 دو جداره دو رو', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'تیغه با ضخامت 1/7 میلیمتر به بالا 
قابل استفاده جهت عرض های تا 6/5 متر', 708, 'Product/838/838_thumb.png', 'Product/838/838_medium.png', 'Product/838/838.png');
insert into [tblProductDesc] values(839, 'تیغه 80 دو جداره دو رو', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'تیغه با ضخامت 1/5 میلیمتر 
قابل استفاده جهت عرض های تا  5 متر', 708, 'Product/839/839_thumb.png', 'Product/839/839_medium.png', 'Product/839/839.png');
insert into [tblProductDesc] values(840, 'درب کشویی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/840/840_thumb.png', 'Product/840/840_medium.png', 'Product/840/840.png');
insert into [tblProductDesc] values(841, 'درب تلسکوبی یک طرفه', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/841/841_thumb.png', 'Product/841/841_medium.png', 'Product/841/841.png');
insert into [tblProductDesc] values(842, 'درب تلسکوبی دو طرفه', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/842/842_thumb.png', 'Product/842/842_medium.png', 'Product/842/842.png');
insert into [tblProductDesc] values(843, 'درب نیمگرد', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/843/843_thumb.png', 'Product/843/843_medium.png', 'Product/843/843.png');
insert into [tblProductDesc] values(844, 'درب مثلثی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/844/844_thumb.png', 'Product/844/844_medium.png', 'Product/844/844.png');
insert into [tblProductDesc] values(845, 'درب تاشو (اتوبوسی)', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 711, 'Product/845/845_thumb.png', 'Product/845/845_medium.png', 'Product/845/845.png');
insert into [tblProductDesc] values(846, 'درب کرکره ای', 37, '          ', 0, '', '1392/04/22', '', 'بهترین پوشش بیرونی برای فروشگاه ها و ورودی های تجاری ، صنعتی ، پارکینگ ها و گاراژها ', 1, -1, 1, 1, null, 711, 'Product/846/846_thumb.png', 'Product/846/846_medium.png', 'Product/846/846.png');
insert into [tblProductDesc] values(847, 'جک اتوماتیک پارکینگی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'این سیستم ها بر اساس تغییر طول بازوی جک با نیروی الکتروموتور یا هیدروموتور کاربرد داشته و در ورودی مجتمع ها مسکونی ، پارکینگی و ویلایی بر روی دربهای لولایی دو لنگه قابل نصب بوده که ضمن ایجاد آسایش ترددی مطمئن و امنیتی کامل با استفاه از سنسورهای مادون قرمز و قفل های الکترونیکی را فراهم می سازد.', 711, 'Product/847/847_thumb.png', 'Product/847/847_medium.png', 'Product/847/847.png');
insert into [tblProductDesc] values(848, 'درب اتوماتیک ریلی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'این سیستم بر روی دربهای ریلی کارگاهی و مراکز صنعتی با استفاده از سیستم الکتروموتور و گیربکس به صورت دنده شانه ای کاربرد دارد.', 711, 'Product/848/848_thumb.png', 'Product/848/848_medium.png', 'Product/848/848.png');
insert into [tblProductDesc] values(849, 'راهبند', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'مناسب جهت کنترل تردد در ورودی های اداره ها و کارخانه ها با اتصال مانع فیزیکی بدون محدویت استفاده با قابلیت اتصال به سیستم هوشمند.', 711, 'Product/849/849_thumb.png', 'Product/849/849_medium.png', 'Product/849/849.png');
insert into [tblProductDesc] values(850, 'ایزولاسیون', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'ویژگی ها: 
سرعت اجرا
عدم نیاز به دیوار محافظ
صرفه جوی در وقت و هزینه
مقاوم در برابر نفوذ آب ، رطوبت ، ضربه ، اسید، قلیا و
ضمانت نامه 10 ساله شرکت سهامی بیمه ایران', 814, 'Product/850/850_thumb.png', 'Product/850/850_medium.png', 'Product/850/850.png');
insert into [tblProductDesc] values(851, 'کوتینگ اسکلت های فلزی', 37, '          ', 0, '', '1392/04/22', 'PY95', 'PY95 ایندی یک نوع موم است که روی کلیه فلزات (حتی زنگ زده) اجرا می شود و پس از مومیایی کردن برای همیشه سطوح زیرین', 1, -1, 1, 1, 'ویژگی ها:
سرعت اجرا و سهلوت اجرا
عدم نیاز به زیرسازی و سندبلاست
قابلیت جوشکاری
نفوذ جوشکاری
نفوذ کنندگی و چسبندگی
مقاوت مکانیکی
صرفه جویی در وقت و هزینه
مقاوم در برابر رطوبت ، اسید ، قلیا
سطح پوشش بسیار بالا
قابلیت نگهداری طولانی مدت
ضمانت نامه 10 ساله شرکت سهامی بیمه ایران', 814, 'Product/851/851_thumb.png', 'Product/851/851_medium.png', 'Product/851/851.png');
insert into [tblProductDesc] values(852, 'فوق روان کننده کربوکسیلی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت تولید بتن خود تراکم و بتن ریزی در سازه هایی که دارای آرماتوربندی با حجم بالا هستند بکار میرود و از خصوصیات ویژه آن افزایش استحکام و مقاومت اولیه بتن بدون افزایش سیمان می باشد.', 620, null, null, null);
insert into [tblProductDesc] values(853, 'روان کننده دیر گیر', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت بتن ریزی در هوای گرم و بتن های حجیم بکار رفته و باعث حفظ اسلامپ ، روانی مطلوب و افزایش مقاوت بتن میگردد.', 620, null, null, null);
insert into [tblProductDesc] values(854, 'اکسپند گروت 22', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'ملات  آماده مصرف با انبساط کنترل شده و مقاوت فشاری حداقل 600 کیلوگرم در سانتیمتر مربع برای پر کردن فاصله زیر صفحه ستون در سازه ها و ...', 620, null, null, null);
insert into [tblProductDesc] values(855, 'اپوکسی گروت', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'با مقاوت فشاری بالا در حدود 100 کیلوگرم در سانتیمتر مربع جهت نصب انکربولتها ، کاشت آرماتور و گروت ریزی زیر صفحه ستونهای که در مجاورت مواد شیمیایی قرار دارند و ...', 620, null, null, null);
insert into [tblProductDesc] values(856, 'زودگیر شاتکریت', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت پاشیدن بتن داخل تونلها و سطوح شیبدار ، بتن ریزی بدون استفاده از قالب ، کاهش زمان گیرش بتن ضمن حفظ مقاومت نسبی بتن مورد استفاده قرار می گیرد.', 620, null, null, null);
insert into [tblProductDesc] values(857, 'چسب بتن استحکامی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت افزایش چسبندگی و ایجاد اتصال مقاوم بتن قدیم و جدید و همچنین قابلت استفاده در کلیه کارهای تعممیراتی که نیاز به افزایش مقاومت کششی و خمشی دارد.', 620, null, null, null);
insert into [tblProductDesc] values(858, 'واتر استاپ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'در دو نوع جهت استفاده در درزهای اجرائی و انبساطی و در سایزهای 15 الی 30 سانتیمتر و ضخامتهای متفاوت به منظور جلوگیری از نفوذ آب بکار می رود.', 620, null, null, null);
insert into [tblProductDesc] values(859, 'واتر پروت پودری', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت ساختن بتن های نفوذ ناپذیر و سازه هایی که در مجاورت دائمی آب قرار دارند به کار می رود.', 620, null, null, null);
insert into [tblProductDesc] values(860, 'نفوذگر', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت آببندی سطوح سازه های که پس از بهره برداری دچار نشتی می باشد بکار رفته و با ایجاد کریستال سازی در داخل لوله های موئینه بتن از نفوز آب و مواد شیمیایی در سطوح مثبت و منفی جلوگیری می کند. ', 620, null, null, null);
insert into [tblProductDesc] values(861, 'تیغه دو جداره عایق دیواری', 8, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد : 25*20*16', 938, 'Product/861/861_thumb.png', 'Product/861/861_medium.png', 'Product/861/861.png');
insert into [tblProductDesc] values(862, 'تیغه دو جداره عایق حرارتی', 8, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد:25*25*16', 938, 'Product/862/862_thumb.png', 'Product/862/862_medium.png', 'Product/862/862.png');
insert into [tblProductDesc] values(863, 'تیغه دیواری سفالی', 8, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد:25*25*10', 938, 'Product/863/863_thumb.png', 'Product/863/863_medium.png', 'Product/863/863.png');
insert into [tblProductDesc] values(864, 'تیغه دیواری سفالی ', 8, '          ', 0, '', '          ', '', '', 933, null, 1, 1, '25*20*7', 938, 'Product/864/864_thumb.png', 'Product/864/864_medium.png', 'Product/864/864.png');
insert into [tblProductDesc] values(865, 'فوندوله جهت استفاده در تولیدات تیرچه', 36, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد : 25*13*4', 938, 'Product/865/865_thumb.png', 'Product/865/865_medium.png', 'Product/865/865.png');
insert into [tblProductDesc] values(866, 'نعل درگاه', 6, '          ', 0, '', '          ', '', '', 933, null, 1, 1, 'ابعاد: در اندازه های طولی مختلف', 938, 'Product/866/866_thumb.png', 'Product/866/866_medium.png', 'Product/866/866.png');
insert into [tblProductDesc] values(867, 'بلوک سقفی پلاستوفوم', 37, '          ', 0, '', '          ', '', '', 936, null, 1, 1, '<blockquote style="color: #000080; font-size: medium;">
<p dir="rtl" style="text-align: right;"><span lang="fa" style="font-size: 13px;">1- در ابعاد مختلف:</span></p>
<p dir="ltr" style="text-align: center;"><span style="font-size: 13px;">200x100x20<br />
200x100x25<br />
200x50x20<br />
200x50x25<br />
125x50x20<br />
125x50x25<br />
100x66.5x20<br />
100x66.5x25<br />
50x50x20<br />
50x50x25</span></p>
<blockquote>
<p dir="rtl" style="text-align: right;"><span lang="fa" style="font-size: 13px;">به وزن هر متر مکعب 14 کیلوگرم</span></p>
</blockquote>
<p dir="rtl" style="text-align: justify;"><span style="font-size: 13px;"><span lang="fa">2- صرفه جویی در مصرف بتن نسبت به&nbsp;</span>SLAMP<span lang="fa">&nbsp;بتن در یک قاب 5</span>x5<span lang="fa">&nbsp;با توجه به مجوف بودن بلوک ها در ابتدا و انتها و قسمت کلاف سیمانی&nbsp;</span>TIE BEAM&nbsp;<span lang="fa">از چهار طرف بتن داخل سوراخ های بلوک شده که مقدار بتن اضافه داخل می گردد.<br />
در حالی که در بتن آبشارفوم به دلیل پر بودن حجم از مصرف اضافی بتن کاسته می شود.</span></span></p>
<p dir="rtl" style="text-align: justify;"><span style="font-size: 13px;"><span lang="fa">3- صرفه جویی در مصرف تیرچه: تغییر محور به محور سنتی از 50</span>cm<span lang="fa">&nbsp;به 60</span>cm<span lang="fa">&nbsp;مقدار 20% با استفاده از آبشار فوم.</span></span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">4- صرفه جویی در بلوک سیمانی دو عدد در هر متر مربع 20% با استفاده از آبشار فوم.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">5- صرفه جویی در اندود گچ و خاک: برای اولین بار شیارهایی در سمت تحتانی بلوک های مذکور ایجاد که پس از نصب در قسمت زیر سقف قرار می گیرد. در واقع به این ترتیب بلوکهای قبلی پلی استایرن بهبود یافته و نیازی به رابیتس بندی نمی باشد.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">6- صرفه جویی در پوکه طبقات که به دلیل پوشش یکپارچه ایجاد می گردد.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">7- صرفه جویی در آهن آلات: در هر متر مربع 22% کاهش می یابد.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">8- ایمن در مقابل آتش سوزی: نوع نسوز آن شعله ور نمی گردد و در نتیجه از گسترش آتش جلوگیری می کند.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">9- صرفه جویی در قالب بندی: نیاز به قالب بندی خاص نمی باشد و به دلیل برش آسان امکان پوشش کناره ها را دارد.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">10- صرفه جویی در زمان اجرا: به دلیل سبکی&nbsp; قطعه و حجم بالا (به جای 12 عدد بلوک سنتی یک قطعه بلوک آبشار فوم) 28% صرفه جویی</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">11- صرفه جویی در حمل بار و انرژی: به جای حمل 12 متر مکعب بلوک سیمانی به وزن 10 تن با همان کامیون مقدار 36 متر مکعب به وزن 504 کیلوگرم حمل می گردد و زمان تخلیه نیز 30% کاهش می یابد.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">12- عایق صدا و رطوبت: بلوکهای آبشار فوم در حدود 70% از هدر رفتن انرژی جلوگیری می کند.</span></p>
<p dir="rtl" style="text-align: justify;"><span lang="fa" style="font-size: 13px;">13- پایداری در مقابل زلزله: به دلیل کاستن بار مرده در مقابل زلزله پایداری بیشتری دارد و در هنگام زلزه خرد نمی شود.</span></p>
</blockquote>
<p style="color: #000080; font-size: medium;">&nbsp;</p>', 942, 'Product/867/867_thumb.png', 'Product/867/867_medium.png', 'Product/867/867.png');
insert into [tblProductDesc] values(868, 'آنی گیر', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'پودری است که پس از اضافه شدن به سیمان باعث کاهش زمان گیرش آن به کمتر از یک دقیقه گردیده و سبب جلوگیری از نشت شدید آب در سازه های بتنی و مخازن و منابع آب می گردد.', 620, null, null, null);
insert into [tblProductDesc] values(869, 'رنگ بتن', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت رنگ آمیزی و تزئین سطوح ساختمانی نظیر بتن ، گچ، آجر ، ایرانیت و سفال که سطوح را در برابر آب ، نور ، مواد اسیدی و قلیائی ضعیف می شود.', 620, null, null, null);
insert into [tblProductDesc] values(870, 'ضد یخ بتن ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت جلوگیری از یخ زدن بتن ضمن حفظ کارائی و مقاومت بتن بکار می رود که در دو نوع پودری و مایع موجود می باشد.', 620, null, null, null);
insert into [tblProductDesc] values(871, 'پودر میکروسیلیس', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت تقویت مقاومت مکانیکی ، کاهش نفوذ پذیری و افزایش استحکام بکار رفته و باعث جلوگیری از نفوذ مواد خوردنده و سولفاته به داخل بتن می گردد.', 620, null, null, null);
insert into [tblProductDesc] values(872, 'چسب بتن آببند', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'بر پایه رزینهای خاص و ضد آب جهت انجام کارهای تعمیراتی و مناسب برای کارهای آببندیدر بتن و منابع آب و فاضلاب می باشد.', 620, null, null, null);
insert into [tblProductDesc] values(873, 'ترمیم کننده بتن', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت ترمیم و اطلاح کلیه آسیب دیدگیهای سطحی بتن ، ترک خوردگی ، شکستگی و ناهمواریهای سطوح مخازن.', 620, null, null, null);
insert into [tblProductDesc] values(874, 'عایق امولسیونی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'ماده ایی محلول در آب که پس از خشک شدن قشری انعطاف پذیر و ضد آب تشکیل می دهد و جهت عایق کاری در سطوح مختلف ، پای پلها و منابع بتنی بکار می رود.', 620, null, null, null);
insert into [tblProductDesc] values(875, 'رنگ اپوکسی', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت رنگ آمیزی سطوح بتنی و فلزی به منظور حفظ سطوح زیرین در مقابل مواد خورنده اسیدی و بازی.', 620, null, null, null);
insert into [tblProductDesc] values(876, 'ترازکننده سطوح', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'ماده ای دو جزئی جهت تراز نمودن سطوح بتنی بدن ماله کشی کف با مقاوت بالا', 620, null, null, null);
insert into [tblProductDesc] values(877, 'الیاف پروپیلن', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'این ماده از نوع الیاف پروپلین می باشد که برای کنترل ترک در محصولات سیمانی اجرای کفها و اندودکاری سطوح بتنی همچنین افزایش دوام بتن بکار می رود.', 620, null, null, null);
insert into [tblProductDesc] values(878, '3D پانل', 21, '          ', 0, '', '          ', '', '', 937, null, 1, 1, '<p dir="rtl" style="color: #404040; font-size: 12px; background-color: #f6f8f8; text-align: center;">&nbsp;<span style="font-family: tahoma; font-size: 13px; color: #003c70;">لیست پانل های سه بعدی(<span dir="ltr">3D</span>)</span></p>
<p style="color: #404040; font-size: 12px; background-color: #f6f8f8; text-align: center;"></p>
<table border="1" cellspacing="1" cellpadding="1" width="637" style="color: #404040; font-size: 12px; text-align: right; background-color: #f6f8f8; width: 637px; height: 160px;">
    <tbody>
        <tr>
            <td>
            <div dir="rtl"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">ردیف</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">کد محصول</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">قطرمفتول (<span dir="ltr">mm</span>)</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">عرض توری</span><span style="font-family: tahoma; font-size: 13px; color: #003c70;">(<span dir="ltr">cm</span>)</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">ضخامت یونولیت (<span dir="ltr">cm</span>)</span></div>
            </td>
            <td>
            <div dir="rtl"><span style="font-family: tahoma; font-size: 13px; color: #003c70;">عرض یونولیت (<span dir="ltr">cm</span>)</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">1</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">4&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">4</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">2</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">5&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">5</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">6&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">6</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">4</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">8&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">8</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">5</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">10&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">10</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
        <tr>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">6</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">16&nbsp;&nbsp; Tip</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">./3</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">16</span></div>
            </td>
            <td>
            <div dir="rtl" style="text-align: center;"><span dir="ltr" style="font-family: tahoma; font-size: 13px; color: #003c70;">100</span></div>
            </td>
        </tr>
    </tbody>
</table>', 943, 'Product/878/878_thumb.png', 'Product/878/878_medium.png', 'Product/878/878.png');
insert into [tblProductDesc] values(879, 'مکمل بتن', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت ساخت بتنهای توانمند و چند منظوره استفاده میشوداین ماده علاوه بر بالا بردن اسلامپ ، بتن را نفوذ ناپذیر نموده و باعث دفع آب میگردد.', 620, null, null, null);
insert into [tblProductDesc] values(880, 'ماستیک پلی یورتان', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'ماستیک تک جزئی بر پایه پلی یورتان جهت پرنمودن درزهای انبساطب و ژوئن ، کانالهای آب و درزهائی که در مجاورت مواد شیمیایی، اسیدی و قلیایی قرار داشته و در معرض نور مستقیم آفتاب قرار دارند به کار میرود', 620, null, null, null);
insert into [tblProductDesc] values(881, 'ژل سیلیکافیوم', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'جهت تولید بتن های مقاوم با نفوذ پذیری کم بکار میرود و باعث افزایش روانی استحکام و مقاومت اولیه بتن گردیده', 620, null, null, null);
insert into [tblProductDesc] values(882, 'فوق روان کننده ممتاز و کاهنده شدید آب', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'روان کننده بر پایه پلی کربوکسیلات بوده و دارای قدرت فوق العاده ای در وران کنندگی و همچنین کاهش آب بتن می باشد. بطور کلی از این ماده افزودنی معمولاً می توان در هر سازه ای که احتیاج به بتن با خواص کیفی خوب باشد استفاده کرد بعنوان مثال بتن حجیم بتن پر مقاومت ، بتن نفوذناپذیر ، بتن پایا، بتن آماده ، بتن خود تراکم و بتن های مورد استفاده در سطوح نمایان', 626, null, null, null);
insert into [tblProductDesc] values(883, 'فوق روان کننده ممتاز و دیرگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'روان کننده در مواقعی استفاده می شود که لازم است برای مدت زمان معینی اسلامپ بتن به مقدار کم افت داشته باشد بعنوان مثال در هوای گرم و یا هنگامی که محل ساخت بتن تا محل ریخت آن فاصله دارد. در واقع استفاده از این ماده باعث می شود که گرمای ناشی از گیرش سیمان کاهش یافته و ترکهای ناشی از گرادیان حرارتی در بتن ایجاد نشود.', 626, null, null, null);
insert into [tblProductDesc] values(884, 'فوق روان کننده ممتاز و زودگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'فوق روان کننده در شرایطی است که باید گیرش بتن تسریع شود به خصوص در فصل سرما و یا مواقعی که با قالبها سریع باز شوند استفاده از این ماده توصیه می شود. در واقع به جای گرم کردن مواد و مصالح در فصل سرما برای تسریع درگیرش بتن ، می توان از این ماده استفاده کرد.', 626, null, null, null);
insert into [tblProductDesc] values(885, 'فوق روان کننده ممتاز و حباب ساز', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'بر اینکه باعث روان شدن (افزایش اسلامپ) بتن می شود حبابهایی با اندازه های مساوی و غیرتصادفی تولید می کند که باعث می شود بتن در مقابل  پدیده یخ زدن و ذوب شدن در طولانی مدت مقاوم گردد. استفاده از این ماده باعث تعدیل تنشهای ایجاد شده بر اثر یخ زدن آب داخل بتن شده و از ترک برداشتن و پوسه شدن بتن جلوگیری می کند.', 626, null, null, null);
insert into [tblProductDesc] values(886, 'فوق روان کننده  و چگال کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'این فوق روان کننده به این صورت است که با خارج کردن هوای تصادفی از بتن باعث می شود بتن کاملا متراکم و چگال شود. Silkcrete-PF در مواقعی استفاده می شود که احتیاج به بتن با چگالی بالاتر از 2400 کیلوگرم بر متر مکعب  نیاز است همچنین این ماده برای تولید بتن های با نفوذ پذیری پایین و دارای خلل و فرج کم کاربرد دارد', 626, null, null, null);
insert into [tblProductDesc] values(887, 'فوق روان کننده و کاهنده آب', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'روان کننده بر پایه پلی نفتالین بوده و توانایی افزایش اسلامپ و کاهش آب اختلاط بتن برای رسیدن به اسلامپ ثابت را دارا می باشد. همانند محصول Silkcrete-pema این محصول نیز برای تولید بتن های توانمند و با کیفیت بالا استفاده می شود: بتن حجیم ، بتن پرمقاومت، بتن نفوذ ناپذیر ، بتن پایا ، بتن آماده، بتن خود تراکم و بتن های مورد استفاده در سطوح نمایان.', 626, null, null, null);
insert into [tblProductDesc] values(888, '100-NPS  درزگیر بدون نیاز به تخریب', 37, '          ', 0, '', '          ', '', '', 938, null, 1, 1, '<p class="MsoNormal" dir="LTR" style="margin: 10.4pt 0cm; text-align: right; direction: ltr; unicode-bidi: embed;"><span style="font-size: 7pt; font-family: ''times new roman'', serif; color: blue;">&nbsp;&nbsp;</span><strong><span style="font-size: 11.5pt; font-family: arial, sans-serif; color: blue;">NPS - 100 </span></strong><strong><span lang="FA" dir="RTL" style="font-family: arial, sans-serif; color: blue;">درزگیر بدون نیاز به تخریب</span></strong><span style="font-size: 11.5pt; font-family: byekan, serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">جهت آب بندی سرویس های بهداشتی بدون نیاز به
تخریب كاشی و سرامیك ها</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">مشخصات ویژه:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">واتر پروف كنندگی100% بدون نیاز به تخریب كاشی و
سرامیك</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">نفوذپذیری كامل به عمق سازه(نانو تكتولوژی)</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">اجرای سریع و اسان توسط همه افراد</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">بدون بو و عوارض شیمیایی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">مقاومت بالا در مقابل مواد شیمیایی و اسیدی(جوهر
نمك،وایتكس و....)</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">انقباض كمتر و الاستیسیته بیشتر</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">با دانش فنی مواد اولیه</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">کمپانی </span><span dir="LTR" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">fort nps</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;"><span dir="RTL"></span> المان</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">طبق استاندارد</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: #06080a;">D.I.N</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">و</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: #06080a;">A.S.T.M</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">جهانی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">موارد مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">جهت آب بندی بدون نیاز به تخریب&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">سازه هایی که علت رطوبت در آنها&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">پوسیدگی ایزوگام یا قیرگونی ، در ست اجراء نشدن
ایزوگام یا قیرگونی، نشست سازه ، ترک ، پوکی بندها در اثر گذشت زمان / استفاده
محصولات نامرغوب و یا استفاده از مواد شیمیایی یا اسیدی جهت نظافت و ......</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">طریقه مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">در بند كشی های قدیمی و از بین رفته به محصول
نانو پوش به اندازه ای كه به صورت دوغاب دراید سیمان سفید اضافه میكنیم و خوب به
هم می زنیم و بعد آن را به صورتی دو غابی بر روی سطح مورد نظر می ریزیم و با كاردك
یا دستكش محلول را بر كل سطح حركت می دهیم سریعا كاشی و سرامیكها را با دستمال
جاذب&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">آب
پاك می كنیم و مقداری از این محصول را به صورت خمیری آماده كرده و در كنج ها به
صورت ماهیچه كشی به ضخامت 3 الی 5 میلیمتر استفاده می كنیم توجه داشته باشیم كه
ضخامت خمیر بالا باشد محصول در حین خشك شدن ترك خواهد خورد .حدود 4الی 5 ساعت
فاصله می دهیم تا فضا كاملا خشك و اب بند شود.</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">مقدار مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">به صورت مخلوط با سیمان هر 1 لیتر محصول 7الی 8
متر مربع فضا را پوشش می دهد.</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">نوع بسته بندی:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">در ظرف های 250 سی سی ،0/5 لیتری و 1 لیتری</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">انبارداری :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: #06080a;">در شرایط حفظ و نگهداری در دمای 5 تا 35 درجه
سانتیگراد قابل نگهداری می باشد .</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: #06080a;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: blue;">خصوصیات فیزیکی و شیمیایی :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: #1b242d;"><o:p></o:p></span></strong></p>
<div dir="rtl" style="text-align: right;">
<table class="MsoNormalTable" dir="rtl" border="0" cellspacing="0" cellpadding="0" style="margin-left: 0.85pt; border-collapse: collapse;">
    <tbody>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border: 1pt solid black; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">رنگ:</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: solid none solid solid; border-top-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-top-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">شیری</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif;">&nbsp;</span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">و بعد از اعمال كاملا بی رنگ</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">وزن مخصوص</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif;"><span dir="RTL"></span>1/2</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;">PH<o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif;"><span dir="RTL"></span>6/5 الی 7/5</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">یون كلر</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">ندارد</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">نوع محصول</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif;">بر پایه پلیمرهای اكریلیك و استایرن با بهره گیری از
            تكنولوژی&nbsp;&nbsp;نانو با چندین خاصیت</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif;"><o:p></o:p></span></p>
            </td>
        </tr>
    </tbody>
</table>
</div>
<p class="MsoNormal" dir="RTL"><span dir="LTR"><o:p>&nbsp;</o:p></span></p>', 944, 'Product/888/888_thumb.png', 'Product/888/888_medium.png', 'Product/888/888.png');
insert into [tblProductDesc] values(889, 'فوق روان کننده و زودگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'می توان اسلامپ بتن را افزایش داده و گیرش آنرا سرعت بخشید، در هوای سرد استفاده از این ماده ، بتن ریزی را امکان پذیر خواهد کرد. همانند محصول Silkcrete-pa این محصول به جای گرم کردن مواد و مصالح در فصل سرما و یا تمهیدات دیگر کاربرد دارد.', 626, null, null, null);
insert into [tblProductDesc] values(890, 'فوق روان کننده و دیرگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete - ir در فصل تابستان و به طور کلی در شرایطی افت که مایل نیستیم بتن سریع شروع به گیرش نماید باید از این ماده استفاده کرد نگهداری اسلامپ و یا به عبارتی افزایش زمان افت اسلامپ با این ماده به خوبی امکان پذیر است همانند محصول Silkcrete-pr این محصول نیز گرمای ناشی از  گیرش سیمان را کاهش داده و ترکهای ناشی از گرادیان حرارتی ایجاد شده در بتن را کاهش می دهد.', 626, null, null, null);
insert into [tblProductDesc] values(891, 'روان کننده و کاهنده آب', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'silkerete-l این روان کننده بر پایه لیگنوسولفونات است این ماده دارای قدرت کمتری نسبت به روان کننده های نسل سوم و چهارم می باشد برای تولید بتن با کیفیت خوب با دوزاجی بالا  از محصولات Silkcrete-PEMA و Silkcrete-N  قابل استفاده است بخصوص در مواردی که افزایش اسلامپ بالایی مورد نظر نیست استفاده از این ماده توصیه می شود.', 626, null, null, null);
insert into [tblProductDesc] values(892, 'NPS - 120 واترپروف بند كشی', 37, '          ', 0, '', '          ', '', '', 938, null, 1, 1, '<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; vertical-align: top;"><strong><span dir="LTR" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">NPS
- 120 </span></strong><span dir="RTL"></span><strong><span style="font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>&nbsp;<span lang="FA">واترپروف بند كشی</span></span></strong><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">جهت مقاوم سازی و آب بندی
انواع بند كشی&nbsp;&nbsp;مقاوم در مقابل مواد شیمیای</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">مشخصات ویژه:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">واتر پروف كنندگی 100%جهت
استفاده در ملات بند كشی</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">قابل استفاده در بند كشی
كاشی،سرامیك،موزایك و انواع سنگ</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">نفوذپذیری كامل به عمق
سازه(نانو تكنولوژی)</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">اجرای سریع و اسان توسط همه
افراد</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">بدون بو و عوارض شیمیایی</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">مقاومت بالا در مقابل مواد
شیمیایی و اسیدی(جوهر نمك ،وایتكس و ....)</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">انقباض كمتر و الاستیسیته
بیشتر</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">با دانش فنی مواد اولیه
کمپانی&nbsp;</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">fort
nps</span><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>&nbsp;المان</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">طبق استاندارد</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">D.I.N</span><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>&nbsp;و&nbsp;</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">A.S.T.M</span><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>&nbsp;جهانی</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">موارد مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">بند كشی انواع
كاشی،سرامیك،موزایك و انواع سنگ</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">طریقه مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">در بند كشی جدید به ازای هر
1 لیتر محصول 1&nbsp; لیتر آب مخلوط می شود دیگر مواد بندكشی افزوده می شود.</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">این نوع بند كشی كاملا آب
بند و در مقابل تمامی شوینده های مقاومت عالی پیدا می كند.</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">دقت شود كه بعد از بند كشی
سطح مورد نظر سریعا پاك شود</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">مقدار مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">1 لیتر محصول و یك لیتر اب
عالی &ndash; هر 4 لیتر محصول حدود 20 الی 30 متر مربع فضا را پوشش می دهد</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">نوع بسته بندی:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">در گالن های 4 و 20 لیتری</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">انبارداری :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt; vertical-align: top;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">در شرایط حفظ و نگهداری در
دمای 5 تا 35 درجه سانتیگراد قابل نگهداری می باشد .</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin-top: 8.65pt; line-height: 24.3pt; vertical-align: top;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">خصوصیات فیزیکی و شیمیایی :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<div dir="rtl" style="text-align: right;">
<table class="MsoNormalTable" dir="rtl" border="0" cellspacing="0" cellpadding="0" style="margin-left: 0.85pt; border-collapse: collapse;">
    <tbody>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border: 1pt solid black; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">رنگ:</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: solid none solid solid; border-top-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-top-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">شیری</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">&nbsp;</span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">و بعد از اعمال كاملا بی
            رنگ</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">وزن مخصوص</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><span dir="RTL"></span>1/2</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">PH<o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>6/5 الی 7/5</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">یون كلر</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">ندارد</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">نوع محصول</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">بر پایه پلیمرهای اكریلیك
            و استایرن با بهره گیری از تكنولوژی&nbsp;&nbsp;نانو با چندین خاصی</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
    </tbody>
</table>
</div>
<p class="MsoNormal" dir="RTL"><span dir="LTR" style="color: black;"><o:p>&nbsp;</o:p></span></p>', 944, 'Product/892/892_thumb.png', 'Product/892/892_medium.png', 'Product/892/892.png');
insert into [tblProductDesc] values(893, 'روان کننده و دیرگیر کننده (نگهدارنده اسلامپ)', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete-lr به منظور  روان کنندگی و کندکردن گیرش بتن از این ماده استفاده می شود به طور مثال در فصل تابستان با بکار بردن این ماده می توان بتن را از فصول درو (کارخانه بتن آماده) به محل پروژه خمل و بدون کاهش شدید اسلامپ بتن ریزی را انجام داد. همانند محصولات Silkcrete-pr و silkcrete-ir گرمای ایجاد شده در اثر هیدراتاسیون سیمان را کاهش داده و از ایجاد گردایان حرارتی جلوگیری می کند.', 626, null, null, null);
insert into [tblProductDesc] values(894, 'روان کننده و زودگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete-la با این ماده می توان اسلامپ بتن را افزایش و زمان گیرش آنرا کاهش داد. مقاومت اولیه بتن های ساخته شده با این ماده نسبت به بتن های بدون ماده افزودنی بیشتر است . همانند محصولات Silkcrete-pa و Silkcrete-Na با دوزاجی بالاتر از آنها می توان به جای گرم کردن مصالح و یا تمهیدات دیگر در هوای سرد و یخبندان از این ماد استفاده کرد.', 626, null, null, null);
insert into [tblProductDesc] values(895, 'NPS - 220  پوشش آب بندی', 37, '          ', 0, '', '          ', '', '', 938, null, 1, 1, '<p class="MsoNormal" dir="LTR" style="margin: 10.4pt 0cm; text-align: right; direction: ltr; unicode-bidi: embed;"><strong><span style="font-size: 11.5pt; font-family: byekan, serif; color: black;">NPS -
220&nbsp; </span></strong><strong><span lang="FA" dir="RTL" style="font-family: ''times new roman'', serif; color: black;">پوشش
آب بندی</span></strong><span style="font-size: 11.5pt; font-family: byekan, serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="LTR" style="margin: 10.4pt 0cm; text-align: right; direction: ltr; unicode-bidi: embed;"><span lang="FA" dir="RTL" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">كاملا انعطاف پذیر جهت آب بندی استخرها،مخازن
آب ،كف سازی سرویس های بهداشتی ،نمای</span><span dir="LTR"></span><span style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;" dir="LTR">&nbsp;</span><span lang="FA" dir="RTL" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">ساختمان،كج
باران،انواع رنگ های پایه آب ،تولید انواع مواد آب بندی و</span><span dir="LTR"></span><span style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;"><span dir="LTR"></span>
............</span><span style="font-size: 11.5pt; font-family: byekan, serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="LTR" style="margin: 10.4pt 0cm; text-align: right; direction: ltr; unicode-bidi: embed;"><span style="font-size: 11.5pt; font-family: byekan, serif; color: black;">&nbsp;<o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 27pt 10.4pt 0cm; text-indent: -18pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">محصولی است كه با قدرت
چسبانندگی بسیار بالا ،قابلیت استفاده در آب بندی و نفوذ ناپذیر نمودن كلیه سطوح
ساختمانی را دارا می باشد.</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 27pt 10.4pt 0cm; text-indent: -18pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">قابلیت تركیب در هر نوع ملات
را براحتی دارا بوده و با انواع رنگ های آكرلیك نیز سازگار می باشد .</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">مشخصات ویژه :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">&nbsp;</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">آب بندی و نفوذ ناپذیر نمودن
سطوح ساختمانی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">ترمیم و تعمیر كلیه سطوح زیر
كار</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">اتصال بتن یا ملات جدید به
بتن قدیم</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">آب بندی نمودن 100%انواع رنگ
های پایه اكرلیك خصوصا رنگ های استخری</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">اتصال كفپوشهای بر پایه
سیمان بر روی سطوح زیر كار</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">افزایش فوق العاده چسبندگی
ملات یا بتن</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">افزایش نفوذ ناپذیری بتن در
برابر عوامل محیطی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">كاهش اثرات جمع شدگی و
انقباض</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">افزایش خاصیت الاستیسیته</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">افزایش دوام در مقابل عوامل
گوناگون فیزیكی و شیمیایی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">افزایش مقاومت سایشی،كششیو
خمشی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">هیچ گونه اثر سوئی بر آب
آشامیدنی ندارد</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">با دانش فنی مواد اولیه
کمپانی</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">fort nps</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span> آلمان</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">طبق استاندارد</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: black;">D.I.N</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">و</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; font-family: byekan, serif; color: black;">A.S.T.M</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">جهانی</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">موارد مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">آب بندی و نفوذ ناپذیر نمودن
تمامی سطوح تحت فشار آب كاملا انعطاف پذیر جهت آب بندی استخرها،مخازن آب،كف سازی
سرویس های بهداشتی،نمای ساختمان،كج باران و...........</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">طریقه مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">به ازای هر 3 فرقون ماسه
شسته ریز و یك كیسه سیمان پلاستر بالای 1 سانتیمتر 3 الی 5 كیلوگرم از محصول اضافه
می شود و با ضغامت 2 سانتیمتر حدود 10 الی 12 متر مربع فضا را پوشش می دهد و به
ازای هر 1 فرقون ماسه بادی و 25 كیلوگرم سیمان در پلاستر پایین</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">&nbsp;&nbsp;1 سانتیمتر (
روکش نهایی ) 5 كیلوگرم از محصول اضافه می شود و با ضغامت 0/5 سانتیمتر حدود 10
الی 12 متر مربع فضا را پوشش می دهد(این طریقه مصرف فقط یك طریقه پیشنهادی جهت آب
بندی استخرها و مخازن می باشد)</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">مقدار مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">این محصول را میتوان 6%الی
10%وزن سیمان مصرفی استفاده كرد</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">نوع بسته بندی:</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">در گالن های 4 و 20 لیتری</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">انبارداری :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; font-family: arial, sans-serif; color: black;">در شرایط حفظ و نگهداری در
دمای 5 تا 35 درجه سانتیگراد قابل نگهداری می باشد .</span><span lang="FA" style="font-size: 11.5pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">خصوصیات فیزیکی و شیمیایی :</span></strong><strong><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></strong></p>
<div dir="rtl" style="text-align: right;">
<table class="MsoNormalTable" dir="rtl" border="0" cellspacing="0" cellpadding="0" style="margin-left: 0.85pt; border-collapse: collapse;">
    <tbody>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 168.55pt; border: 1pt solid black; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">رنگ:</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 168.55pt; border-style: solid none solid solid; border-top-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-top-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">شیری</span><span lang="FA" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">&nbsp;</span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">و بعد از اعمال كاملا بی
            رنگ</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 168.55pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">وزن مخصوص</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 168.55pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>1/2</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 168.55pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;">PH<o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 168.55pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;"><span dir="RTL"></span>7-8</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 168.55pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">یون كلر</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 168.55pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">ندارد</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 168.55pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">نوع محصول</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 168.55pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; font-family: arial, sans-serif; color: black;">بر پایه پلیمرهای اكریلیك
            و استایرن با بهره گیری از تكنولوژی نانو با چندین خاصیت</span><span dir="LTR" style="font-size: 12pt; font-family: ''times new roman'', serif; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
    </tbody>
</table>
</div>
<p class="MsoNormal" dir="RTL"><span dir="LTR" style="color: black;"><o:p>&nbsp;</o:p></span></p>', 944, 'Product/895/895_thumb.png', 'Product/895/895_medium.png', 'Product/895/895.png');
insert into [tblProductDesc] values(896, 'ضدیخ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete-Af  استفاده از این ماده بتن ریزی در هوای سرد (زیر صفر درجه) را امکان پذیر می سازد مکانیزم عملکرد این ماده به این صورت است که مادی انجماد آب را از صفر درجه به 5- ، 10- و یا 15- درجه (بسته به دوزاج مصرف) کاهش می دهد مطابق معمول بتن ریزی کمتر از 5 درجه بعلت یخ زدن آب بتن بسیار مشکل و تقریبا غیرممکن است استفاده از Silkcrete-af در دماهای بتن ریزی در شرایط مذکور امکان پذیر می سازد.', 626, null, null, null);
insert into [tblProductDesc] values(897, 'NPS - 320 محافظ و پوشش سطوح', 37, '          ', 0, '', '          ', '', '', 938, null, 1, 1, '<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm;"><strong><span dir="LTR" style="font-size: 11.5pt; color: black;">NPS
- 320 </span></strong><span dir="RTL"></span><strong><span style="color: black;"><span dir="RTL"></span>&nbsp;<span lang="FA">محافظ و پوشش سطوح</span></span></strong><span dir="LTR" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">نوع دیگری از مواد نفوذ
كننده بر پایه نانو می باشد كه بدون تغییر رنگ و شكل ظاهری با نفوذ در مویین مقاطع
مورد اجرا و از بین بردن جذب سطحی محل اجرا آنها را در مقابل نفوذ آب ،گردو غبار و
گازهای جوی مقاوم می سازد.</span><span dir="LTR" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">مشخصات ویژه:</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">واتر پروف كنندگی 100% برای
استفاده به صورت خالص قلمو یا اسپری</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">نفوذ پذیری كامل به عمق سازه
نانو تكتولوژی</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">اجرای سریع وآسان توسط همه
افراد</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">یك نوع عایق حرارتی و برودتی
برای نما</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">مقاوم در مقابل رطوبت و
گازهای جوی</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">مقاومت در برابر تابش نور
خورشید</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">محافظت و جلوگیری از تغییر
رنگ مصالح كاربرده شده در نمای ساختمان</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">ماندگاری طولانی در موضع
اجرا شده و عمر مفید زیاد</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">قابل شستشو</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">خاصیت ضد گردو غبار و ضد
دوده نمودن سطح</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">خاصیت خود پاك شوندگی سطوح
پس از بارش باران</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">قابل اعمال برروی سطوح مرطوب</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">با دانش فنی و مواد اولیه
کمپانی</span><span lang="FA" style="font-size: 11.5pt; color: black;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; color: black;">fort
nps</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; color: black;"><span dir="RTL"></span> آلمان<o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">طبق استاندارد</span><span dir="LTR" style="font-size: 11.5pt; color: black;">D.I.N</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; color: black;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; color: black;">و</span><span lang="FA" style="font-size: 11.5pt; color: black;">&nbsp;</span><span dir="LTR" style="font-size: 11.5pt; color: black;">A.S.T.M</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; color: black;" dir="RTL">&nbsp;</span><span lang="FA" style="font-size: 11.5pt; color: black;">جهانی</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">موارد مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">نماهای آجری(سه
سانتی،ماشینی،سنتی)</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">نماهای سیمانی</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">نماهای تگری</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">دیوارهای گچی</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">سنگهای تراورتن و انواع
مشابه</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">طریقه مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span dir="LTR" style="font-size: 11.5pt; color: black;">NPS-</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; color: black;"><span dir="RTL"></span>320 می
بایست روی سطوح كاملا تمیز و عاری از هر گونه چربی ،گردو غبار اجرا گردد سطح در
نهایت باید كمی مرطوب قبل از اعمال باشد و امكان اعمال به سطح بتن تازه ریخته شده
به طور مستقیم نیز وجود دارد برای اجرای </span><span dir="LTR" style="font-size: 11.5pt; color: black;">NPS-</span><span dir="RTL"></span><span lang="FA" style="font-size: 11.5pt; color: black;"><span dir="RTL"></span>320 می
توان از پیستوله ،قلم مو استفاده نمود . در صورت زیاد بودن جذب سطح مورد اجرا نانو
پوش را در دو لایه اجرا نمایید توجه داشته باشید كه فقط قلم مو یا اسپری را فقط یك
بار بر روی سطح می كشیم وگرنه سطح مورد نظر رگه رگه خواهد شد.</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">برای استفاده بر روی چوب نیازی به مرطوب کردن
نمی باشد .<o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">مقدار مصرف:</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">بسته به نوع سطوح مورد اجرا
و قدرت جذب آن حدود 150 الی 200 گرم نانو پوش نما برای پوشش یك متر مربع مورد نیاز
می باشد.</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">نوع بسته بندی:</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">در گالن های 4 و 20 لیتری</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">انبارداری :</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm; line-height: 22.55pt;"><span lang="FA" style="font-size: 11.5pt; color: black;">در شرایط حفظ و نگهداری در
دمای 5 تا 35 درجه سانتیگراد قابل نگهداری می باشد .</span><span lang="FA" style="font-size: 11.5pt; color: black;"><o:p></o:p></span></p>
<p class="MsoNormal" dir="RTL" style="margin: 8.65pt 0cm 0.0001pt; line-height: 24.3pt;"><strong><span lang="FA" style="font-size: 12pt; color: black;">خصوصیات فیزیکی و شیمیایی :</span></strong><strong><span lang="FA" style="font-size: 12pt; color: black;"><o:p></o:p></span></strong></p>
<div dir="rtl" style="text-align: right;">
<table class="MsoNormalTable" dir="rtl" border="0" cellspacing="0" cellpadding="0" style="margin-left: 0.85pt; border-collapse: collapse;">
    <tbody>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border: 1pt solid black; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">رنگ:</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: solid none solid solid; border-top-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-top-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">شیری</span><span lang="FA" style="font-size: 12pt; color: black;">&nbsp;</span><span lang="FA" style="font-size: 12pt; color: black;">و بعد از اعمال كاملا بی
            رنگ</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">وزن مخصوص</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; color: black;"><span dir="RTL"></span>1/2</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="LTR" style="font-size: 12pt; color: black;">PH<o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span dir="RTL"></span><span lang="FA" style="font-size: 12pt; color: black;"><span dir="RTL"></span>7-9</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 17.8pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">یون كلر</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 17.8pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">ندارد</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
        <tr style="height: 18.35pt;">
            <td valign="top" style="width: 92.2pt; border-style: none solid solid; border-right-color: #8099b3; border-bottom-color: #8099b3; border-left-color: #8099b3; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">نوع محصول</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
            <td valign="top" style="width: 244.9pt; border-style: none none solid solid; border-left-color: #8099b3; border-left-width: 1pt; border-bottom-color: #8099b3; border-bottom-width: 1pt; padding: 0cm 5.4pt; height: 18.35pt;">
            <p class="MsoNormal" dir="RTL" style="margin: 10.4pt 0cm 0.0001pt; line-height: 22.55pt;"><span lang="FA" style="font-size: 12pt; color: black;">بر پایه پلیمرهای اكریلیك
            و استایرن با بهره گیری از تكنولوژی نانو با چندین خاصیت</span><span dir="LTR" style="font-size: 12pt; color: black;"><o:p></o:p></span></p>
            </td>
        </tr>
    </tbody>
</table>
</div>
<p class="MsoNormal" dir="RTL"><span dir="LTR" style="color: black;"><o:p>&nbsp;</o:p></span></p>', 944, 'Product/897/897_thumb.png', 'Product/897/897_medium.png', 'Product/897/897.png');
insert into [tblProductDesc] values(898, 'حباب ساز', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete- Ae  بتن هایی که در  آب و هوایی ریخته می شوند که در دراز مدت در معرض یخبندان (یخ زدن و ذوب شدن) قرار می گیرند بر اثر این پدیده صدمه دیده و دوام زیادی نخواهند داشت . با استفاده از این ماده می توان دوام بتن را افزایش داد. متاسفانه گاهی تصور بر این است که استفاده  از این ماده فقط در فصل سرما لازم است ، در صورتیکه بعلت حضور آب تا مدتها پس از ریختن بتن و احتمال یخ زدن آن در فصول سرما استفاده از این ماده در همه فصول سال در مناطقی که احتمال یخ زدن بتن وجود دارد اکیداً توصیه می شود.', 626, null, null, null);
insert into [tblProductDesc] values(899, 'دیرگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'اینکه روان کنندگی (افزایش اسلامپ) محسوسی داشته باشد باعث افزایش زمان افت اسلامپ می شود. در بسیاری از پروژهای مناطق گرمسیر مانند جنوب کشور یکی از مشکلات اصلی بتن ریزیها این است که اسلامپ بتن در مدت کوتاهی افت می کند و این مساله اجرای بتن ریزی را مشکل مواجه می کند. در این صورت استفاده از Silkcrete-re با افزایش زمان افت اسلامپ مشکل ایجاد شده را برطرف خواهد کرد.', 626, null, null, null);
insert into [tblProductDesc] values(900, 'زودگیر کننده', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'اینکه روان کنندگی (افزایش اسلامپ) محسوسی داشته باشد باعث کاهش زمان گیرش شده و بتن زود سفق و سخت می شود. استفاده از این ماده بخصوص برای اجرای شاتکریت بعلت عملکرد سریع الزامی است. این ماده در عملکرد دراز مدت بتن هیچ گونه تاثیر منفی ندارد.', 626, null, null, null);
insert into [tblProductDesc] values(901, 'پودر میکروسیلیس', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete-MS  پودر میکرو سیلیس علاوه بر اینکه در بتن تازه باعث افزایش چشمگیر چسبندگی می شود، در بتن  سخت شده نیز باعث افزایش دوام می گردد علل اصلی استفاد از پودر میکروسیلیس عبارتند از کاهش پتانسیل واکنشهای سیلیکاتی- قلیایی (سرطان بتن) افزایش مقاومت ، کاهش نفذ پذیری بتن و جبران کمبود فیلر در ماسه .', 626, null, null, null);
insert into [tblProductDesc] values(902, 'ژل میکروسیلیس ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete- silica یکی از مشکلات اصلی استفاده از پودر میکروسیلیس روش اجرای آن می باشد زیرا باید لجن میکروسیلیس قبل از استفاده از آن ساخته شود برای رفع این مشکل می توان از ژل میکروسیلیس استفاده کرد که بعلت استفاده از فوق روان کننده در آن ، خاصیت افزایش اسلامپ نیز دارد. بنابر این استافده از این ماده هم اثرات پودر میکروسیلیس (کاهش پتانسیل واکنشهای سرطان بتن ، افزایش مقاومت بتن به طور چشمگیر کاهش نفوذ پذیری بتن و جبران کمبود فیلر در ماسه) و هم خواص روان کنندگی را به همراه خواهد داشت.', 626, null, null, null);
insert into [tblProductDesc] values(903, 'ساندویچ پانل سقفی', 37, '          ', 0, '', '          ', '', '', 940, 0, 1, 1, 'پانل سقفی کیان با استفاده از بهترین مواد اولیه ، تکنولوژی روز و پرسنل متخصص و متعهد ، از ضخامت 3 الی 20 سانتی متر با فوم تزریقی پلی یورتان سخت ( دانسیته 2&plusmn;40)تولید می شود .این پانل مقاوم در برابر رشد گیاهان و قارچها بوده و به علت نداشتن بو ، عدم ریزش مواد و عدم امکان زندگی حشرات در داخل فوم بهترین نوع پوشش در سقف مجتمع های صنعتی می باشد .پانل سقفی با ضریب هدایت حرارتی بسیار پایین از نوع بهترین عایق های صنعتی جهت پوشش سقف می باشد .عرض مفید پانل سقفی کیان 1 متر می باشد .ضمناً به دلیل داشتن یک خط منحصر بفرد در رول فرم پانل سقفی کیان، بهترین نوع آب بندی و زیبایی سطح کار در هنگام اورلپ کردن دو پانل سقفی را بر روی یکدیگر ممکن می سازد.', 946, 'Product/903/903_thumb.png', 'Product/903/903_medium.png', 'Product/903/903.png');
insert into [tblProductDesc] values(904, 'نفوذ ناپذیر کننده (مکمل)', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 626, null, null, null);
insert into [tblProductDesc] values(905, 'ساندویچ پانل دیواری ', 37, '          ', 0, '', '          ', '', '', 940, null, 1, 1, 'پانل دیواری کیان یکی از بهترین گزینه ها جهت پوشش دیواره های فضاهای صنعتی ،سردخانه ها ،کانکس ها ، ساختمان های پیش ساخته و.. می باشد. این پانل با عرض مفید 1 متر سهولت در طراحی فضاها را فراهم می کند .گستره ضخامت از 3 تا 20 سانتی متر در این نوع پانل امکان ایجاد پوششی مناسب جهت آب و هواهای مختلف را فراهم می کند .با استفاده از عایق فوم پلی یورتان و بهترین کیفیت ممکن (فوم آلمانی )، پانل دیواری کیان را بهترین گزینه جهت پوشش سردخانه ها و یخچالهای صنعتی می کند.', 946, 'Product/905/905_thumb.png', 'Product/905/905_medium.png', 'Product/905/905.png');
insert into [tblProductDesc] values(906, 'روان کننده آب بند', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Sillkcrete-Wp این ماده به صورت مایع بوده و علاوه بر افزایش اسلامپ باعث می شود بتن از سخت شدن در برابر آب نفوذ ناپذیر شود. این ماده در مواردی نظیر تولید بتن نفوذ ناپذیر برای ساخت مخازن آبی، تصفیه  خانه های آب و فاضلاب ، استخرها، کانالها و دیگر سازهای آبی کاربرد دارد به طور کلی از ویژگیهای این ماده می توان به جلوگیری از نفوذ آب به داخل بتن و پدیده نم زدگی ، سهولت پمپاژ و جلوگیری از به وجود آمدن ترک های سطحی  اشاره کرد.', 626, null, null, null);
insert into [tblProductDesc] values(907, 'آب بند کننده پودری', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, null, 626, null, null, null);
insert into [tblProductDesc] values(908, 'آب بند کننده پوششی (مایع)', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkerete-WPL بعضی مواقع پس از اینکه ساز بتنی اجرا شد احتیاج به آب بندی دارد آب بند کننده مایع با پوششی که بر روی بتن بوجود می آورد از نفوذ آب جلوگیر می کند از این ماده در مواردی نظیر پوشش ورقه های آزبستی ، غشای واترپروف برای تمامی سطوح ماننده سقف ، شیروانی ، جداول خیابانی ، پشت بام ، بالکن ها و مناطقی که دارای بار ترافیکی می باشد و همچنین برای تمامی سطوح زیر کار اعم از بتنی ، چوبی ، فلزی ، قطعات بتنی حاوی الیاف و بیتومن کاربرد دارد.', 626, null, null, null);
insert into [tblProductDesc] values(909, 'واتراستاپ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkcrete-WS یکی از نقاط ضعف سازه های بتنی ، درزهای اجرایی هستند ، این درزها یکی از محل هایی هستند که بعلت قطع شدن بتن ریزی و ایجاد شکاف نفوذ پذیر، آب به داخل بتن نفوذ می کند. استفاده از واتراستاپ مسیر آب را طولانی کرده و اجازه نمی دهد آب از پشت آن عبور کرده و به داخل سازه نفوذ کند.', 626, null, null, null);
insert into [tblProductDesc] values(910, 'چسب ', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'برای تعمیر سازه های بتنی و همچنین برای چسباندن بتن های تازه به سخت شده و همچنین بتنهای سخت شده به بتن سخت شده دیگر استفاده می شود این محصول به خصوص در مقاوم سازی و تعمیر سازه ها کاربرد فراوان دارد.', 626, null, null, null);
insert into [tblProductDesc] values(911, 'سوفال سقفی (بلوک 20)', 9, '          ', 0, '', '          ', '', '', 941, null, 1, 1, '<span style="font-size: 14px;"><strong>ابعاد :&nbsp;20&times;25&times;40<br />
تعداد در هر متر مربع :&nbsp;8<br />
وزن میانگین :&nbsp;8300 gr</strong></span>', 947, 'Product/911/911_thumb.png', 'Product/911/911_medium.png', 'Product/911/911.png');
insert into [tblProductDesc] values(912, 'چسب محافظ نما', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'Silkerete0GC برای جلوگیری از آسیب دیدن بتن توسط عوامل جوی یکی از بهترین راه کارها اجرای چسب محافظ بر روی بتن اجرا شده می باشد. این محصول در شهرهایی که عواملی از قبیل بارانهای اسیدی (مانند تهران) و یا رطوبت (مانند شهرهای شمال ایران) به نمای ساختمان آسیب جدی وارد می کند کاربرد دارد.', 626, null, null, null);
insert into [tblProductDesc] values(913, 'سوفال سقفی (بلوک 25)', 9, '          ', 0, '', '          ', '', '', 941, null, 1, 1, '<strong><span style="font-size: 14px;">ابعاد :&nbsp;25&times;25&times;40<br />
تعداد در هر متر مربع :&nbsp;8<br />
وزن میانگین :&nbsp;10400 gr</span></strong>', 947, 'Product/913/913_thumb.png', 'Product/913/913_medium.png', 'Product/913/913.png');
insert into [tblProductDesc] values(914, 'چسب آب بند', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'آب بند بر روی بتن باعث جلوگیری از نفوذ آب خواهد شد. به عبارت بهتر هنگامی که در نظر است از یک لایه آب بند نسبتاً مقاوم که دارای عمر طولانی است بر روی سطح بتنی که در ارتباط با آب می باشد. استفاده گردد. استفاده از این ماده موثر خواهد بود.', 626, null, null, null);
insert into [tblProductDesc] values(915, 'گروت برای کار گذاشتن میلگرد در بتن', 37, '          ', 0, '', '1392/04/22', '', '', 1, -1, 1, 1, 'silkcrete - GB این خمیر سه جزئی با ایجاد چسبندگی بسیار بالا بین بتن و فولاد ، کار گذاشتن میلگرد و هرنوع قطعه فولادی را در داخل بتن امکان پذیر مب سازد', 626, null, null, null);
insert into [tblProductDesc] values(916, 'سوفال دیواری (تیغه 15)', 9, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;15&times;20&times;25<br />
تعداد در هر متر مربع :&nbsp;20<br />
وزن میانگین :&nbsp;4660 gr', 947, 'Product/916/916_thumb.png', 'Product/916/916_medium.png', 'Product/916/916.png');
insert into [tblProductDesc] values(917, 'گروت معمولی ', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-GN این نوع گروت با مقاوت بالا ترکیبی است که برای عملیات نصب و ثابت سازی سازه استفاده می شود. نداشتن انقباض پس از سخت شدن خاصیت اصلی این ماده است.', 626, null, null, null);
insert into [tblProductDesc] values(918, 'گروه منبسط شونده', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-GE با استفاده از انبساط قابل کنترل این گروت می توان پیوستگی بهتری ایجاد کرد. در مواردی که لازم است پس از اجرای گروت هیچ گونه درز و یا تخلخلی در اطراف آن ایجاد نشود استفاده از این ماده توصیه می شود.', 626, null, null, null);
insert into [tblProductDesc] values(919, 'سوفال دیواری (تیغه 15) با فوم', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;15&times;20&times;25تعداد در هر متر مربع :&nbsp;20وزن میانگین :&nbsp;4670 gr', 947, 'Product/919/919_thumb.png', 'Product/919/919_medium.png', 'Product/919/919.png');
insert into [tblProductDesc] values(920, 'درزگیر تک جزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, null, 626, null, null, null);
insert into [tblProductDesc] values(921, 'درزگیر دوجزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-MA2 ماستیک دو جزئی با استحکام فرسایشی و انعطاف پذیری بالا به ویژه برای درزگیری کف ها به کار می رود به دلیل مقاوت فرسایشی بالای این ماده ، استفاده آن حتی در کف های صنعتی موفقیت آمیز بوده است.', 626, null, null, null);
insert into [tblProductDesc] values(922, 'سوفال دیواری (تیغه 10) طرح فوم', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;10&times;20&times;25تعداد در هر متر مربع :&nbsp;20وزن میانگین :&nbsp;3450 gr', 947, 'Product/922/922_thumb.png', 'Product/922/922_medium.png', 'Product/922/922.png');
insert into [tblProductDesc] values(923, 'تخریب کننده بتن و ملات ', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'انبساط آرام ، بدون ترکاندن بتن و ایجاد صدا بتن را تخریب می کند این ماده در گمانه هایی که به فواصل معین در سازه حفر می گردد قرار گرفته و به صورت تدریجی باعث تخریب می گردد.', 626, null, null, null);
insert into [tblProductDesc] values(924, 'سوفال دیواری (تیغه 10) با فوم', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;10&times;20&times;25تعداد در هر متر مربع :&nbsp;20وزن میانگین :&nbsp;3460 gr', 947, 'Product/924/924_thumb.png', 'Product/924/924_medium.png', 'Product/924/924.png');
insert into [tblProductDesc] values(925, 'پرایمر دو جزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-P2 این ترکیب دو جزئی برای آماده کردن سطوح به منظور اجرای پوشش های اپوکسی استفاده می شود.', 626, null, null, null);
insert into [tblProductDesc] values(926, 'پرایمر تک جزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-P  این پرایمر بی رنگ برای افزایش چسبندگی لایه های مختلف (لایه های جدید به قدیم) به کار می رود.', 626, null, null, null);
insert into [tblProductDesc] values(927, 'سوفال دیواری (تیغه 10)', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;10&times;25&times;25تعداد در هر متر مربع :&nbsp;16وزن میانگین :&nbsp;3940 gr', 947, 'Product/927/927_thumb.png', 'Product/927/927_medium.png', 'Product/927/927.png');
insert into [tblProductDesc] values(928, 'رنگ واتر پروف (ضد آب)', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-CP رنگ آب بند بعنوان پوشش سطحی برای سطوحی است که در مجاورت دائم آب (مانند استخر) قرار دارند', 626, null, null, null);
insert into [tblProductDesc] values(929, 'رنگ دوجزئی اپوکسی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-C2 این رنگ دوجزئی با عمر طولانی و دوام بالا برای مقاوم سازی در برابر نمک ها و یون کلر استفاده می گردد.', 626, null, null, null);
insert into [tblProductDesc] values(930, 'پوشش اپوکسی سه جزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-CO3 این پوشش با مقاوت بسیار بالا برای پوشش سالن های صنعتی و کفپوش محل های پر تردد کابرد دارد.', 626, null, null, null);
insert into [tblProductDesc] values(931, 'پوشش امولسیونی تک جزئی', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-CO این پوشش نوعی محافظ با رنگ تیره برای محافظت از فونداسیون و کلیه سطوح بتنی و فلزی است.', 626, null, null, null);
insert into [tblProductDesc] values(932, 'سوفال دیواری (تیغه 10)', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;10&times;20&times;25تعداد در هر متر مربع :&nbsp;20وزن میانگین :&nbsp;3150 gr', 947, 'Product/932/932_thumb.png', 'Product/932/932_medium.png', 'Product/932/932.png');
insert into [tblProductDesc] values(933, 'روغن قالب', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-OI برای جلوگیری از چسبندگی قالب به بتن و کنده شدن بتن باید از روغن قالب استفاده کرد. برای این منظور به هیچ وجه روغن سوخته و یا قیر نباید به کار رود.', 626, null, null, null);
insert into [tblProductDesc] values(934, 'مایع عمل آورنده (کیورینگ)', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'بتن ریزی باید عمل آوری که شامل آب دادن و کشیدن گونی خیس بر روی بتن است انجام شود. متاسفانه بعلت سهل انگاری در عمل آوری و آب دادن به بتن بعضی مواقع بتن کشته شده و مقاومت آن افزایش نمی یابد . با اجرای یک قشر نازک از مایع عمل آور بر روی بتن از تبخیر آب بتن جلوگیری شده و احتیاج به آب دادن نخواهد بود.', 626, null, null, null);
insert into [tblProductDesc] values(935, 'ترمیم کننده معمولی ', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-RP این ترمیم کننده بر پایه سیمان بوده و بدون خاصیت منقبض شوندگی برای ترمیم ناهمواریها و ترک خوردگیها در بتن سخت شده استفاده می شود.', 626, null, null, null);
insert into [tblProductDesc] values(936, 'سوفال دیواری (تیغه 7)', 8, '          ', 0, '', '          ', '', '', 941, null, 1, 1, 'ابعاد :&nbsp;7&times;20&times;25تعداد در هر متر مربع :&nbsp;20وزن میانگین :&nbsp;2490 gr', 947, 'Product/936/936_thumb.png', 'Product/936/936_medium.png', 'Product/936/936.png');
insert into [tblProductDesc] values(937, 'ترمیم کننده خاص', 37, '          ', 0, '', '1392/04/23', '', '', 1, -1, 1, 1, 'Silkcrete-RS این ماده با خاصیت چسبندگی بسیار بالا علاوه بر درزگیری و ترمیم ناهمواریها ، موجب آب بندی نیز می گردد.', 626, null, null, null);
insert into [tblProductDesc] values(938, 'چسب کاشی و سرامیک شورفیکس 2004', 37, '          ', 0, '', '1392/04/23', '', 'چسب پودری یک جزئی با پایه سیمان تقویت شده با پلیمر، تهیه شده از سیمان سنگ سیلیکای دانه بندی شده', 1, -1, 1, 1, 'موارد استفاده :
چسباندن انواع کاشی و سرامیک کف بر روی سطوح سیمانی ، بنی ، در محیط داخلی و خارجی ساختمان .
چسباندن کاشی های بدون لعاب و آجر
ویژگی محصول:
کاربرد آسان
پیوند و اتصال محکم به انواع سطح زیر کار
پیوستگی و استحکام بالا
بدون افت حجم و ترک خوردگی
نکات مهم:
محل استفاده باید عاری از هرگونه چربی و گرد و غبار ، ذرات سست یا رنگ قدیمی باشد.
در محل هایی با لرزش زیاد استفاده نشود.
روی سطوح فلزی استفاده نشود
در زیر کار بتنی ، حداقل 28 روز از زمان بتن ریزی گذشته باشد.
سطوح در معرض تابش آفتاب قبل از چسباندن کاشی باید با آب خنک شود.', 630, null, null, null);


/* Table structure [tblProdCatalog] */
CREATE TABLE [tblProdCatalog] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ProdID] integer REFERENCES [tblProductDesc]([ProdID]), 
  [FileName] nvarchar(50) COLLATE NOCASE, 
  [FileType] nvarchar(50) COLLATE NOCASE, 
  [FileSize] float, 
  [CatalogComment] nvarchar(150) COLLATE NOCASE, 
  [IsProdPic] integer, 
  [FileUrl] nvarchar(1024) COLLATE NOCASE);

/* Data [tblProdCatalog] */
insert into [tblProdCatalog] values(11, 121, '', 'jpg', 1951, '', 0, 'Product/121/Catalog/.jpg');
insert into [tblProdCatalog] values(14, 219, 'test pdf', 'pdf', 227, 'sdfsdfdf', 0, 'Product/219/Catalog/test pdf.pdf');
insert into [tblProdCatalog] values(15, 219, 'test movie', 'mp4', 2380, 'sdfsdfd', 0, 'Product/219/Catalog/test movie.mp4');
insert into [tblProdCatalog] values(16, 219, 'test picture', 'png', 0, 'sdfsdds', 1, 'Product/219/Catalog/test picture.png');
insert into [tblProdCatalog] values(20, 366, 'فله ای', 'png', 268, '', 1, 'Product/366/Catalog/فله ای.png');
insert into [tblProdCatalog] values(21, 367, 'فله ای', 'png', 227, '', 1, 'Product/367/Catalog/فله ای.png');
insert into [tblProdCatalog] values(22, 219, 'adsdad', 'jpg', 222477, 'asdasdas', 1, 'Product/219/Catalog/adsdad.jpg');
insert into [tblProdCatalog] values(23, 219, 'xcvxcvxcv', 'jpg', 222477, 'xcvxcvxcvxcv', 1, 'Product/219/Catalog/xcvxcvxcv.jpg');
insert into [tblProdCatalog] values(24, 73, 'dfgdfg', 'jpg', 595284, 'dfgdfg', 0, 'Product/73/Catalog/dfgdfg.jpg');
insert into [tblProdCatalog] values(25, 219, 'xdsfgd', 'jpg', 222477, 'gdfgdf', 0, 'Product/219/Catalog/xdsfgd.jpg');
insert into [tblProdCatalog] values(27, 139, 'آجر نسوز پلاک 5/5 سانتی  cod 2', 'png', 126, '', 1, 'Product/139/Catalog/آجر نسوز پلاک 5/5 سانتی  cod 2.png');
insert into [tblProdCatalog] values(28, 139, 'آجر نسوز پلاک 5/5 سانتی  cod 3 ', 'png', 122, '', 1, 'Product/139/Catalog/آجر نسوز پلاک 5/5 سانتی  cod 3 .png');
insert into [tblProdCatalog] values(29, 139, 'آجر نسوز پلاک 5/5 سانتی  cod 4', 'png', 110, '', 1, 'Product/139/Catalog/آجر نسوز پلاک 5/5 سانتی  cod 4.png');
insert into [tblProdCatalog] values(30, 139, 'آجر نسوز پلاک 5/5 سانتی  cod 5', 'png', 109, '', 1, 'Product/139/Catalog/آجر نسوز پلاک 5/5 سانتی  cod 5.png');
insert into [tblProdCatalog] values(31, 140, 'آجر نسوز پلاک 5/5 سانتی شاموتی cod 2', 'png', 128, '', 1, 'Product/140/Catalog/آجر نسوز پلاک 5/5 سانتی شاموتی cod 2.png');
insert into [tblProdCatalog] values(32, 140, 'آجر نسوز پلاک 5/5 سانتی شاموتی cod 3', 'png', 126, '', 1, 'Product/140/Catalog/آجر نسوز پلاک 5/5 سانتی شاموتی cod 3.png');
insert into [tblProdCatalog] values(33, 141, 'آجر نسوز پلاک  7  سانتی( نمای انگیسی )', 'png', 116, '', 1, 'Product/141/Catalog/آجر نسوز پلاک  7  سانتی( نمای انگیسی ).png');
insert into [tblProdCatalog] values(34, 141, 'آجر نسوز پلاک  7  سانتی( نمای انگیسی )', 'png', 98, '', 1, 'Product/141/Catalog/آجر نسوز پلاک  7  سانتی( نمای انگیسی ).png');
insert into [tblProdCatalog] values(35, 141, 'آجر نسوز پلاک  7  سانتی( نمای انگیسی )', 'png', 105, '', 1, 'Product/141/Catalog/آجر نسوز پلاک  7  سانتی( نمای انگیسی ).png');
insert into [tblProdCatalog] values(36, 141, 'آجر نسوز پلاک  7  سانتی( نمای انگیسی )', 'png', 100, '', 1, 'Product/141/Catalog/آجر نسوز پلاک  7  سانتی( نمای انگیسی ).png');
insert into [tblProdCatalog] values(37, 458, 'دیوار پیش ساخته رنگ 1', 'png', 346, '', 1, 'Product/458/Catalog/دیوار پیش ساخته رنگ 1.png');
insert into [tblProdCatalog] values(38, 458, 'دیوار پیش ساخته رنگ 2', 'png', 339, '', 1, 'Product/458/Catalog/دیوار پیش ساخته رنگ 2.png');
insert into [tblProdCatalog] values(39, 458, 'دیوار پیش ساخته رنگ 3', 'png', 349, '', 1, 'Product/458/Catalog/دیوار پیش ساخته رنگ 3.png');
insert into [tblProdCatalog] values(40, 458, 'دیوار پیش ساخته رنگ 4', 'png', 338, '', 1, 'Product/458/Catalog/دیوار پیش ساخته رنگ 4.png');
insert into [tblProdCatalog] values(41, 458, 'دیوار پیش ساخته رنگ 5', 'png', 317, '', 1, 'Product/458/Catalog/دیوار پیش ساخته رنگ 5.png');
insert into [tblProdCatalog] values(42, 459, 'کف پوشهای بتنی رنگ 1', 'png', 338, '', 1, 'Product/459/Catalog/کف پوشهای بتنی رنگ 1.png');
insert into [tblProdCatalog] values(43, 459, 'دیوار پیش ساخته رنگ 2', 'png', 339, '', 1, 'Product/459/Catalog/دیوار پیش ساخته رنگ 2.png');
insert into [tblProdCatalog] values(44, 459, 'دیوار پیش ساخته رنگ 3', 'png', 360, '', 1, 'Product/459/Catalog/دیوار پیش ساخته رنگ 3.png');
insert into [tblProdCatalog] values(45, 459, 'دیوار پیش ساخته رنگ 4', 'png', 358, '', 1, 'Product/459/Catalog/دیوار پیش ساخته رنگ 4.png');
insert into [tblProdCatalog] values(46, 459, 'دیوار پیش ساخته رنگ 5', 'png', 333, '', 1, 'Product/459/Catalog/دیوار پیش ساخته رنگ 5.png');
insert into [tblProdCatalog] values(47, 459, 'دیوار پیش ساخته رنگ 6', 'png', 321, '', 1, 'Product/459/Catalog/دیوار پیش ساخته رنگ 6.png');
insert into [tblProdCatalog] values(48, 175, '1081', 'png', 132, '', 1, 'Product/175/Catalog/1081.png');
insert into [tblProdCatalog] values(49, 175, '1066', 'png', 114, '', 1, 'Product/175/Catalog/1066.png');
insert into [tblProdCatalog] values(50, 175, '1083', 'png', 133, '', 1, 'Product/175/Catalog/1083.png');
insert into [tblProdCatalog] values(51, 545, 'رنگ 1', 'png', 93, '', 1, 'Product/545/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(52, 551, 'نمونه 1', 'png', 116, '', 1, 'Product/551/Catalog/نمونه 1.png');
insert into [tblProdCatalog] values(53, 552, 'رنگ 1', 'png', 227, '', 1, 'Product/552/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(54, 552, 'رنگ 2', 'png', 122, '', 1, 'Product/552/Catalog/رنگ 2.png');
insert into [tblProdCatalog] values(55, 553, 'رنگ 1', 'png', 187, '', 1, 'Product/553/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(56, 553, 'رنگ 2', 'png', 186, '', 1, 'Product/553/Catalog/رنگ 2.png');
insert into [tblProdCatalog] values(57, 554, 'رنگ 1', 'png', 137, '', 1, 'Product/554/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(58, 554, 'رنگ 2', 'png', 141, '', 1, 'Product/554/Catalog/رنگ 2.png');
insert into [tblProdCatalog] values(59, 557, 'رنگ 1', 'png', 125, '', 1, 'Product/557/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(60, 557, 'رنگ 2', 'png', 119, '', 1, 'Product/557/Catalog/رنگ 2.png');
insert into [tblProdCatalog] values(61, 560, 'رنگ 1', 'png', 236, '', 1, 'Product/560/Catalog/رنگ 1.png');
insert into [tblProdCatalog] values(62, 560, 'رنگ 2', 'png', 237, '', 1, 'Product/560/Catalog/رنگ 2.png');
insert into [tblProdCatalog] values(63, 560, 'رنگ3', 'png', 196, '', 1, 'Product/560/Catalog/رنگ3.png');
insert into [tblProdCatalog] values(64, 73, 'sdf', 'png', 21879, 'adsdasdas dasd as', 0, 'Product/73/Catalog/sdf.png');
insert into [tblProdCatalog] values(65, 73, 'aasdasdsdsa', 'png', 21879, 'asdsad', 1, 'Product/73/Catalog/aasdasdsdsa.png');
insert into [tblProdCatalog] values(67, 685, 'مدل 1', 'png', 284, '', 1, 'Product/685/Catalog/مدل 1.png');
insert into [tblProdCatalog] values(68, 687, 'مدل 1', 'png', 277, '', 1, 'Product/687/Catalog/مدل 1.png');
insert into [tblProdCatalog] values(69, 706, 'مدل 1', 'png', 269, '', 1, 'Product/706/Catalog/مدل 1.png');
insert into [tblProdCatalog] values(70, 707, 'مدل', 'png', 278, '', 1, 'Product/707/Catalog/مدل.png');
insert into [tblProdCatalog] values(71, 708, 'مدل ', 'png', 288, '', 1, 'Product/708/Catalog/مدل .png');
insert into [tblProdCatalog] values(72, 709, 'مدل', 'png', 301, '', 1, 'Product/709/Catalog/مدل.png');
insert into [tblProdCatalog] values(73, 238, 'ابعاد 2', 'png', 199, '', 1, 'Product/238/Catalog/ابعاد 2.png');
insert into [tblProdCatalog] values(74, 749, 'قرمز', 'png', 256, '', 1, 'Product/749/Catalog/قرمز.png');
insert into [tblProdCatalog] values(75, 749, 'سفید', 'png', 173, '', 1, 'Product/749/Catalog/سفید.png');
insert into [tblProdCatalog] values(76, 749, 'خاکستری', 'png', 208, '', 1, 'Product/749/Catalog/خاکستری.png');
insert into [tblProdCatalog] values(77, 73, 'test', 'png', 15049, 'sfsdfsdf', 1, 'Product/73/Catalog/test.png');
insert into [tblProdCatalog] values(83, 808, 'در 1', 'png', 243, '', 1, 'Product/808/Catalog/در 1.png');
insert into [tblProdCatalog] values(84, 808, 'در 2', 'png', 279, '', 1, 'Product/808/Catalog/در 2.png');


/* Table structure [tblProdGrpNews] */
CREATE TABLE [tblProdGrpNews] (
  [GrpNewsID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [GrpID] integer REFERENCES [tblProdGrpDesc]([GrpID]), 
  [GrpNewsTitle] nvarchar(50) COLLATE NOCASE, 
  [GrpNewsDate] nvarchar(10) COLLATE NOCASE, 
  [GrpNewsSummery] nvarchar(200) COLLATE NOCASE, 
  [GrpNewsImageUrl] nvarchar(100) COLLATE NOCASE, 
  [GrpNewsPDFUrl] nvarchar(100) COLLATE NOCASE);
CREATE INDEX [tblProdGrpNews_idxProdGrpNews] ON [tblProdGrpNews] ([GrpID] DESC);

/* Data [tblProdGrpNews] */


/* Table structure [tblProdPropertiesGrpDesc] */
CREATE TABLE [tblProdPropertiesGrpDesc] (
  [GrpID] integer NOT NULL PRIMARY KEY, 
  [GrpParentID] integer, 
  [GrpPath] nvarchar(50) COLLATE NOCASE, 
  [GrpName] nvarchar(50) COLLATE NOCASE, 
  [GrpDesc] nvarchar(150) COLLATE NOCASE, 
  [GrpLogo] blob(2147483647), 
  [SortID] integer);

/* Data [tblProdPropertiesGrpDesc] */
insert into [tblProdPropertiesGrpDesc] values(3, -1, '3', 'سفال', 'مشخصه‌های سفال', null, 2);
insert into [tblProdPropertiesGrpDesc] values(6, 3, '3-6', 'تیغه', 'تیغه سفالی', null, 6);
insert into [tblProdPropertiesGrpDesc] values(7, 6, '3-6-7', 'نوع و کیفیت', '', null, 7);
insert into [tblProdPropertiesGrpDesc] values(8, 6, '3-6-8', 'ابعاد', 'ابعاد سفال', null, 8);
insert into [tblProdPropertiesGrpDesc] values(9, 6, '3-6-9', 'وزن', 'وزن سفال', null, 9);
insert into [tblProdPropertiesGrpDesc] values(10, 6, '3-6-10', 'وسیله حمل', '', null, 10);
insert into [tblProdPropertiesGrpDesc] values(11, -1, '11', 'گروه مشخصه تستی', 'این گروه برای تست می باشد', null, 11);
insert into [tblProdPropertiesGrpDesc] values(19, 11, '11-19', 'کامپیوتر', 'تست', null, 12);
insert into [tblProdPropertiesGrpDesc] values(20, 11, '11-20', 'تست', '', null, 20);


/* Table structure [tblProdPropertiesDesc] */
CREATE TABLE [tblProdPropertiesDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ProdPropertiesDesc] nvarchar(50) COLLATE NOCASE, 
  [ValueSelectType] smallint, 
  [GrpID] integer REFERENCES [tblProdPropertiesGrpDesc]([GrpID]), 
  [ProdPropertiesComment] nvarchar(150) COLLATE NOCASE, 
  [PropertiesImage] blob(2147483647));

/* Data [tblProdPropertiesDesc] */
insert into [tblProdPropertiesDesc] values(36, 'نوع', 1, 7, 'نوع سفال', null);
insert into [tblProdPropertiesDesc] values(37, 'کیفیت', 1, 7, 'کیفیت سفال', null);
insert into [tblProdPropertiesDesc] values(38, 'عرض (سانتیمتر)', 3, 8, 'عرض سفال', null);
insert into [tblProdPropertiesDesc] values(39, 'ارتفاع (سانتیمتر)', 3, 8, 'ارتفاع سفال', null);
insert into [tblProdPropertiesDesc] values(40, 'طول (سانتیمتر)', 3, 8, 'طول سفال', null);
insert into [tblProdPropertiesDesc] values(41, 'وزن هر قالب (کیلوگرم)', 3, 9, '', null);
insert into [tblProdPropertiesDesc] values(42, 'نوع وسیله حمل', 2, 10, 'نوع وسیله حمل', null);
insert into [tblProdPropertiesDesc] values(43, 'وزن', 3, 3, '', null);
insert into [tblProdPropertiesDesc] values(44, 'سایز تستی', 3, 18, '', null);
insert into [tblProdPropertiesDesc] values(45, 'نوع تستی', 2, 18, '', null);
insert into [tblProdPropertiesDesc] values(46, 'وزن تستی', 3, 17, '', null);
insert into [tblProdPropertiesDesc] values(50, 'مدل پردازنده', 1, 19, '', null);
insert into [tblProdPropertiesDesc] values(51, 'حجم هارد دیسک(گیگا بایت)', 3, 19, '', null);
insert into [tblProdPropertiesDesc] values(52, 'مدل کارت گرافیک', 2, 19, '', null);
insert into [tblProdPropertiesDesc] values(53, 'مدل', 4, 19, '', null);
insert into [tblProdPropertiesDesc] values(54, 'تاریخ تولید', 5, 19, '', null);
insert into [tblProdPropertiesDesc] values(55, 'مشخصه تستی', 1, 7, 'جهت تست', null);
insert into [tblProdPropertiesDesc] values(56, 'تستی', 4, 20, '', null);


/* Table structure [tblProdPropertiesValueDesc] */
CREATE TABLE [tblProdPropertiesValueDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [PID] integer REFERENCES [tblProdPropertiesDesc]([AID]), 
  [PValueName] nvarchar(50) COLLATE NOCASE);

/* Data [tblProdPropertiesValueDesc] */
insert into [tblProdPropertiesValueDesc] values(49, 36, 'آفتاب خشک');
insert into [tblProdPropertiesValueDesc] values(50, 36, 'خشک‌کن');
insert into [tblProdPropertiesValueDesc] values(51, 37, 'درجه یک ممتاز');
insert into [tblProdPropertiesValueDesc] values(52, 37, 'درجه یک معمولی');
insert into [tblProdPropertiesValueDesc] values(53, 37, 'معمولی');
insert into [tblProdPropertiesValueDesc] values(54, 37, 'درجه دو');
insert into [tblProdPropertiesValueDesc] values(55, 37, 'خوب');
insert into [tblProdPropertiesValueDesc] values(56, 36, 'اتوکلاو');
insert into [tblProdPropertiesValueDesc] values(57, 42, 'نیسان');
insert into [tblProdPropertiesValueDesc] values(58, 42, 'خاور');
insert into [tblProdPropertiesValueDesc] values(59, 45, 'نوع یک');
insert into [tblProdPropertiesValueDesc] values(60, 45, 'نوع دو');
insert into [tblProdPropertiesValueDesc] values(61, 50, 'i3');
insert into [tblProdPropertiesValueDesc] values(62, 50, 'i5');
insert into [tblProdPropertiesValueDesc] values(63, 50, 'i7');
insert into [tblProdPropertiesValueDesc] values(64, 52, 'معمولی');
insert into [tblProdPropertiesValueDesc] values(65, 52, 'حرفه ای');
insert into [tblProdPropertiesValueDesc] values(66, 52, 'مخصوص بازی');


/* Table structure [tblProdGrpPeropertiesValue] */
CREATE TABLE [tblProdGrpPeropertiesValue] (
  [PID] integer NOT NULL REFERENCES [tblProdPropertiesDesc]([AID]), 
  [ProdGrpID] integer NOT NULL REFERENCES [tblProdGrpDesc]([GrpID]), 
  [ValueID] integer NOT NULL REFERENCES [tblProdPropertiesValueDesc]([AID]), 
  CONSTRAINT [sqlite_autoindex_tblProdGrpPeropertiesValue_1] PRIMARY KEY ([PID], [ProdGrpID], [ValueID]));

/* Data [tblProdGrpPeropertiesValue] */
insert into [tblProdGrpPeropertiesValue] values(36, 5, 49);
insert into [tblProdGrpPeropertiesValue] values(36, 5, 50);
insert into [tblProdGrpPeropertiesValue] values(36, 5, 56);
insert into [tblProdGrpPeropertiesValue] values(36, 6, 49);
insert into [tblProdGrpPeropertiesValue] values(36, 6, 50);
insert into [tblProdGrpPeropertiesValue] values(36, 8, 49);
insert into [tblProdGrpPeropertiesValue] values(36, 8, 50);
insert into [tblProdGrpPeropertiesValue] values(36, 8, 56);
insert into [tblProdGrpPeropertiesValue] values(36, 11, 49);
insert into [tblProdGrpPeropertiesValue] values(36, 11, 50);
insert into [tblProdGrpPeropertiesValue] values(36, 11, 56);
insert into [tblProdGrpPeropertiesValue] values(36, 35, 49);
insert into [tblProdGrpPeropertiesValue] values(36, 35, 50);
insert into [tblProdGrpPeropertiesValue] values(36, 35, 56);
insert into [tblProdGrpPeropertiesValue] values(37, 5, 51);
insert into [tblProdGrpPeropertiesValue] values(37, 5, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 5, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 5, 54);
insert into [tblProdGrpPeropertiesValue] values(37, 5, 55);
insert into [tblProdGrpPeropertiesValue] values(37, 8, 51);
insert into [tblProdGrpPeropertiesValue] values(37, 8, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 8, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 8, 54);
insert into [tblProdGrpPeropertiesValue] values(37, 8, 55);
insert into [tblProdGrpPeropertiesValue] values(37, 9, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 9, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 9, 55);
insert into [tblProdGrpPeropertiesValue] values(37, 11, 51);
insert into [tblProdGrpPeropertiesValue] values(37, 11, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 11, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 11, 54);
insert into [tblProdGrpPeropertiesValue] values(37, 11, 55);
insert into [tblProdGrpPeropertiesValue] values(37, 12, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 12, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 12, 54);
insert into [tblProdGrpPeropertiesValue] values(37, 20, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 20, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 20, 55);
insert into [tblProdGrpPeropertiesValue] values(37, 23, 52);
insert into [tblProdGrpPeropertiesValue] values(37, 23, 53);
insert into [tblProdGrpPeropertiesValue] values(37, 23, 55);
insert into [tblProdGrpPeropertiesValue] values(42, 5, 58);
insert into [tblProdGrpPeropertiesValue] values(42, 8, 57);
insert into [tblProdGrpPeropertiesValue] values(42, 8, 58);
insert into [tblProdGrpPeropertiesValue] values(42, 9, 58);
insert into [tblProdGrpPeropertiesValue] values(42, 20, 58);
insert into [tblProdGrpPeropertiesValue] values(42, 23, 58);
insert into [tblProdGrpPeropertiesValue] values(45, 5, 59);
insert into [tblProdGrpPeropertiesValue] values(45, 38, 59);
insert into [tblProdGrpPeropertiesValue] values(45, 38, 60);
insert into [tblProdGrpPeropertiesValue] values(50, 40, 61);
insert into [tblProdGrpPeropertiesValue] values(50, 40, 62);
insert into [tblProdGrpPeropertiesValue] values(50, 40, 63);
insert into [tblProdGrpPeropertiesValue] values(52, 40, 64);
insert into [tblProdGrpPeropertiesValue] values(52, 40, 65);
insert into [tblProdGrpPeropertiesValue] values(52, 40, 66);


/* Table structure [tblProdGrpPeropertiesValueTempDataEntry] */
CREATE TABLE [tblProdGrpPeropertiesValueTempDataEntry] (
  [PID] integer NOT NULL, 
  [ProdGrpID] integer NOT NULL, 
  [ValueID] integer NOT NULL, 
  [UserID] integer NOT NULL, 
  CONSTRAINT [sqlite_autoindex_tblProdGrpPeropertiesValueTempDataEntry_1] PRIMARY KEY ([PID], [ProdGrpID], [ValueID], [UserID]));

/* Data [tblProdGrpPeropertiesValueTempDataEntry] */
insert into [tblProdGrpPeropertiesValueTempDataEntry] values(50, 40, 61, 1);
insert into [tblProdGrpPeropertiesValueTempDataEntry] values(50, 40, 62, 1);
insert into [tblProdGrpPeropertiesValueTempDataEntry] values(50, 40, 63, 1);


/* Table structure [tblProdGrpProperties] */
CREATE TABLE [tblProdGrpProperties] (
  [GrpID] integer NOT NULL REFERENCES [tblProdGrpDesc]([GrpID]), 
  [PropertiesID] integer NOT NULL REFERENCES [tblProdPropertiesDesc]([AID]), 
  CONSTRAINT [sqlite_autoindex_tblProdGrpProperties_1] PRIMARY KEY ([GrpID], [PropertiesID]));

/* Data [tblProdGrpProperties] */
insert into [tblProdGrpProperties] values(5, 36);
insert into [tblProdGrpProperties] values(5, 37);
insert into [tblProdGrpProperties] values(5, 38);
insert into [tblProdGrpProperties] values(5, 39);
insert into [tblProdGrpProperties] values(5, 40);
insert into [tblProdGrpProperties] values(5, 42);
insert into [tblProdGrpProperties] values(5, 43);
insert into [tblProdGrpProperties] values(5, 45);
insert into [tblProdGrpProperties] values(6, 43);
insert into [tblProdGrpProperties] values(8, 36);
insert into [tblProdGrpProperties] values(8, 37);
insert into [tblProdGrpProperties] values(8, 38);
insert into [tblProdGrpProperties] values(8, 39);
insert into [tblProdGrpProperties] values(8, 40);
insert into [tblProdGrpProperties] values(8, 41);
insert into [tblProdGrpProperties] values(8, 42);
insert into [tblProdGrpProperties] values(9, 37);
insert into [tblProdGrpProperties] values(9, 42);
insert into [tblProdGrpProperties] values(11, 37);
insert into [tblProdGrpProperties] values(11, 38);
insert into [tblProdGrpProperties] values(11, 39);
insert into [tblProdGrpProperties] values(11, 40);
insert into [tblProdGrpProperties] values(11, 43);
insert into [tblProdGrpProperties] values(12, 37);
insert into [tblProdGrpProperties] values(12, 43);
insert into [tblProdGrpProperties] values(20, 37);
insert into [tblProdGrpProperties] values(20, 42);
insert into [tblProdGrpProperties] values(23, 37);
insert into [tblProdGrpProperties] values(23, 38);
insert into [tblProdGrpProperties] values(23, 40);
insert into [tblProdGrpProperties] values(23, 42);
insert into [tblProdGrpProperties] values(35, 36);
insert into [tblProdGrpProperties] values(35, 37);
insert into [tblProdGrpProperties] values(35, 43);
insert into [tblProdGrpProperties] values(38, 44);
insert into [tblProdGrpProperties] values(38, 45);
insert into [tblProdGrpProperties] values(38, 46);
insert into [tblProdGrpProperties] values(40, 50);
insert into [tblProdGrpProperties] values(40, 51);
insert into [tblProdGrpProperties] values(40, 52);
insert into [tblProdGrpProperties] values(40, 53);
insert into [tblProdGrpProperties] values(40, 54);
insert into [tblProdGrpProperties] values(40, 56);


/* Table structure [tblProdGrpPropertiesTempDataEntry] */
CREATE TABLE [tblProdGrpPropertiesTempDataEntry] (
  [GrpID] integer NOT NULL, 
  [PropertiesID] integer NOT NULL, 
  [UserID] integer NOT NULL, 
  CONSTRAINT [sqlite_autoindex_tblProdGrpPropertiesTempDataEntry_1] PRIMARY KEY ([GrpID], [PropertiesID], [UserID]));

/* Data [tblProdGrpPropertiesTempDataEntry] */
insert into [tblProdGrpPropertiesTempDataEntry] values(6, 43, 3);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 50, 1);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 51, 1);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 52, 1);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 53, 1);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 54, 1);
insert into [tblProdGrpPropertiesTempDataEntry] values(40, 56, 1);


/* Table structure [tblProdOrderProperties] */
CREATE TABLE [tblProdOrderProperties] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ProdID] integer REFERENCES [tblProductDesc]([ProdID]), 
  [PropertiesID] integer, 
  [PropertiesTitle] nvarchar(50) COLLATE NOCASE);

/* Data [tblProdOrderProperties] */
insert into [tblProdOrderProperties] values(4, 16, 24, 'نوع سفال');


/* Table structure [tblProdPriceDesc] */
CREATE TABLE [tblProdPriceDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ProdID] integer, 
  [StartDate] char(10) COLLATE NOCASE, 
  [EndDate] char(10) COLLATE NOCASE, 
  [ProdPrice] numeric);

/* Data [tblProdPriceDesc] */
insert into [tblProdPriceDesc] values(3, 16, '1392/02/23', '1393/02/23', 1000);
insert into [tblProdPriceDesc] values(4, 73, '1392/12/29', '1392/01/01', 100);


/* Table structure [tblProdProperties] */
CREATE TABLE [tblProdProperties] (
  [ProdID] integer NOT NULL REFERENCES [tblProductDesc]([ProdID]), 
  [PropertiesID] integer NOT NULL REFERENCES [tblProdPropertiesDesc]([AID]), 
  [PropertiesSelectValue] integer, 
  [PropertiesVales] nvarchar(250) COLLATE NOCASE, 
  CONSTRAINT [sqlite_autoindex_tblProdProperties_1] PRIMARY KEY ([ProdID], [PropertiesID]));

/* Data [tblProdProperties] */
insert into [tblProdProperties] values(16, 36, 50, 'خشک‌کن');
insert into [tblProdProperties] values(16, 37, 54, 'درجه دو');
insert into [tblProdProperties] values(16, 38, 0, '3');
insert into [tblProdProperties] values(16, 39, 0, '2');
insert into [tblProdProperties] values(16, 40, 0, '1');
insert into [tblProdProperties] values(16, 41, 0, '5');
insert into [tblProdProperties] values(73, 44, 0, '5555');
insert into [tblProdProperties] values(73, 45, 0, '60');
insert into [tblProdProperties] values(73, 46, 0, '123');
insert into [tblProdProperties] values(219, 36, 49, 'آفتاب خشک');
insert into [tblProdProperties] values(219, 37, 51, 'درجه یک ممتاز');
insert into [tblProdProperties] values(219, 38, null, '');
insert into [tblProdProperties] values(219, 39, null, '');
insert into [tblProdProperties] values(219, 40, null, '');
insert into [tblProdProperties] values(219, 42, null, '');
insert into [tblProdProperties] values(219, 43, null, '');
insert into [tblProdProperties] values(219, 45, null, '');
insert into [tblProdProperties] values(322, 36, 49, 'آفتاب خشک');
insert into [tblProdProperties] values(322, 37, 51, 'درجه یک ممتاز');
insert into [tblProdProperties] values(322, 41, 0, '4670');
insert into [tblProdProperties] values(322, 43, 0, '');
insert into [tblProdProperties] values(566, 43, 0, '1.100');


/* Table structure [tblProdPropertiesTempForDataEntry] */
CREATE TABLE [tblProdPropertiesTempForDataEntry] (
  [ProdID] integer NOT NULL, 
  [PropertiesID] integer NOT NULL, 
  [PropertiesSelectValue] integer, 
  [PropertiesVales] nvarchar(250) COLLATE NOCASE, 
  [UserID] integer);

/* Data [tblProdPropertiesTempForDataEntry] */
insert into [tblProdPropertiesTempForDataEntry] values(219, 54, null, '1390/01/01', 1);
insert into [tblProdPropertiesTempForDataEntry] values(105, 37, 51, 'درجه یک ممتاز', 1);
insert into [tblProdPropertiesTempForDataEntry] values(640, 37, 51, 'درجه یک ممتاز', 1);
insert into [tblProdPropertiesTempForDataEntry] values(640, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(219, 53, 0, 'دل کا سری', 1);
insert into [tblProdPropertiesTempForDataEntry] values(219, 52, 0, '65', 1);
insert into [tblProdPropertiesTempForDataEntry] values(219, 51, 0, '500', 1);
insert into [tblProdPropertiesTempForDataEntry] values(219, 50, 62, 'i5', 1);
insert into [tblProdPropertiesTempForDataEntry] values(775, 37, 52, 'درجه یک معمولی', 1);
insert into [tblProdPropertiesTempForDataEntry] values(777, 37, 51, 'درجه یک ممتاز', 1);
insert into [tblProdPropertiesTempForDataEntry] values(777, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(105, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(324, 37, 51, 'درجه یک ممتاز', 1);
insert into [tblProdPropertiesTempForDataEntry] values(324, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(305, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(59, 37, 52, 'درجه یک معمولی', 3);
insert into [tblProdPropertiesTempForDataEntry] values(61, 37, 51, 'درجه یک ممتاز', 3);
insert into [tblProdPropertiesTempForDataEntry] values(61, 36, 49, 'آفتاب خشک', 3);
insert into [tblProdPropertiesTempForDataEntry] values(566, 43, 0, '1.100', 1);
insert into [tblProdPropertiesTempForDataEntry] values(577, 37, 51, 'درجه یک ممتاز', 1);
insert into [tblProdPropertiesTempForDataEntry] values(577, 36, 49, 'آفتاب خشک', 1);
insert into [tblProdPropertiesTempForDataEntry] values(580, 37, 52, 'درجه یک معمولی', 1);
insert into [tblProdPropertiesTempForDataEntry] values(606, 37, 52, 'درجه یک معمولی', 1);


/* Table structure [tblProdScore] */
CREATE TABLE [tblProdScore] (
  [ProdScoreID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [CustID] integer REFERENCES [tblCustomerDesc]([CustID]), 
  [ProdID] integer REFERENCES [tblProductDesc]([ProdID]), 
  [ProdScoreValue] smallint, 
  [ProdScoreDateTime] datetime);

/* Data [tblProdScore] */


/* Table structure [tblProdServiceDesc] */
CREATE TABLE [tblProdServiceDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ServiceDesc] nvarchar(50) COLLATE NOCASE, 
  [ServiceComment] nvarchar(150) COLLATE NOCASE);

/* Data [tblProdServiceDesc] */
insert into [tblProdServiceDesc] values(2, 'حمل', null);
insert into [tblProdServiceDesc] values(3, 'برش سنگ', null);
insert into [tblProdServiceDesc] values(4, 'نصب', null);


/* Table structure [tblProdServices] */
CREATE TABLE [tblProdServices] (
  [ProdID] integer NOT NULL REFERENCES [tblProductDesc]([ProdID]), 
  [ServiceID] integer NOT NULL REFERENCES [tblProdServiceDesc]([AID]), 
  [ServiceComment] nvarchar(150) COLLATE NOCASE, 
  CONSTRAINT [sqlite_autoindex_tblProdServices_1] PRIMARY KEY ([ProdID], [ServiceID]));

/* Data [tblProdServices] */
insert into [tblProdServices] values(219, 2, 'slkdjfl ksjflkj
sdfsldk fjsdlkfjsdflkj');
insert into [tblProdServices] values(219, 3, 'lhjlkjhhhh');


/* Table structure [tblProdUnitDesc] */
CREATE TABLE [tblProdUnitDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [ProdID] integer REFERENCES [tblProductDesc]([ProdID]), 
  [UnitName] nvarchar(50) COLLATE NOCASE, 
  [UnitQty] float, 
  [IsBaseUnit] smallint, 
  [IsAllowToSales] smallint);

/* Data [tblProdUnitDesc] */
insert into [tblProdUnitDesc] values(14, 17, 'کارتن', 1, 1, 1);
insert into [tblProdUnitDesc] values(15, 16, 'لیتر', 12, 0, 1);
insert into [tblProdUnitDesc] values(17, 19, 'قالب', 1, 1, 1);
insert into [tblProdUnitDesc] values(18, 20, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(19, 21, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(21, 23, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(22, 24, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(23, 25, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(24, 26, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(25, 27, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(26, 28, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(27, 29, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(28, 31, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(29, 32, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(30, 33, 'قوطی', 1, 1, 1);
insert into [tblProdUnitDesc] values(31, 34, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(32, 35, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(33, 36, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(34, 37, 'بین 2 تا 5 متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(35, 38, '2تا 5متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(36, 39, 'بین 2 تا 5 متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(37, 40, 'بین 2 تا 5 متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(38, 41, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(39, 42, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(40, 43, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(41, 44, 'متر طول', 1, 1, 1);
insert into [tblProdUnitDesc] values(42, 45, 'کیسه های 50 کیلوگرمی', 1, 1, 1);
insert into [tblProdUnitDesc] values(43, 46, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(44, 47, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(45, 48, 'رول', 1, 1, 1);
insert into [tblProdUnitDesc] values(47, 49, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(48, 50, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(49, 51, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(50, 52, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(51, 53, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(52, 54, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(53, 55, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(54, 56, 'پانل', 1, 1, 1);
insert into [tblProdUnitDesc] values(55, 57, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(56, 58, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(57, 59, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(58, 60, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(59, 61, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(60, 62, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(61, 63, 'مترمربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(62, 64, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(63, 65, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(64, 66, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(65, 67, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(66, 68, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(67, 69, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(68, 70, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(69, 72, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(70, 73, 'واحد تستی', 1, 1, 0);
insert into [tblProdUnitDesc] values(71, 73, 'واحد تستی جمعی', 1.8, 0, 0);
insert into [tblProdUnitDesc] values(72, 74, 'قالب', 1, 1, 1);
insert into [tblProdUnitDesc] values(73, 76, 'رول', 1, 1, 1);
insert into [tblProdUnitDesc] values(74, 75, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(75, 77, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(76, 78, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(77, 81, 'قالب', 1, 1, 1);
insert into [tblProdUnitDesc] values(78, 82, 'قالب', 1, 1, 1);
insert into [tblProdUnitDesc] values(79, 83, 'کیلوگرم', 1, 1, 1);
insert into [tblProdUnitDesc] values(80, 84, 'کیلوگرم', 1, 1, 1);
insert into [tblProdUnitDesc] values(81, 85, 'کیلوگرم', 1, 1, 1);
insert into [tblProdUnitDesc] values(82, 86, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(83, 87, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(84, 88, 'تن', 1, 1, 1);
insert into [tblProdUnitDesc] values(85, 89, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(86, 91, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(87, 92, '1 متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(88, 93, 'عدد', 1, 0, 0);
insert into [tblProdUnitDesc] values(90, 95, 'لیتر', 1, 1, 1);
insert into [tblProdUnitDesc] values(91, 96, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(93, 100, 'مترمربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(95, 22, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(96, 103, 'لیتر', 1, 1, 1);
insert into [tblProdUnitDesc] values(97, 104, 'هر لنگه', 1, 1, 1);
insert into [tblProdUnitDesc] values(98, 106, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(99, 107, 'هر لنگه', 1, 1, 1);
insert into [tblProdUnitDesc] values(100, 108, 'هر لنگه', 1, 1, 1);
insert into [tblProdUnitDesc] values(101, 109, 'هر لنگه', 1, 1, 1);
insert into [tblProdUnitDesc] values(102, 110, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(103, 18, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(104, 111, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(105, 112, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(106, 113, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(108, 115, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(109, 116, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(111, 127, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(112, 128, 'لیتر', 1, 1, 1);
insert into [tblProdUnitDesc] values(113, 130, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(114, 131, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(115, 132, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(116, 133, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(117, 136, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(119, 151, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(120, 152, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(121, 153, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(122, 154, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(124, 18, 'متر مربع', 3, 0, 0);
insert into [tblProdUnitDesc] values(125, 18, 'کیسه', 3, 1, 1);
insert into [tblProdUnitDesc] values(126, 196, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(127, 217, 'دستگاه', 1, 1, 0);
insert into [tblProdUnitDesc] values(128, 221, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(129, 232, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(130, 236, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(131, 238, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(132, 126, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(133, 240, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(134, 244, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(135, 243, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(136, 246, 'دستگاه', 1, 1, 1);
insert into [tblProdUnitDesc] values(137, 247, 'گالن', 1, 1, 1);
insert into [tblProdUnitDesc] values(138, 248, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(139, 249, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(140, 250, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(141, 251, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(142, 252, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(143, 253, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(144, 254, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(145, 255, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(146, 256, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(147, 257, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(148, 258, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(149, 259, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(150, 260, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(151, 261, 'متر مکعب', 1, 1, 1);
insert into [tblProdUnitDesc] values(152, 303, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(153, 305, 'متر مربع', 1, 1, 1);
insert into [tblProdUnitDesc] values(154, 315, 'کیسه', 1, 1, 1);
insert into [tblProdUnitDesc] values(155, 16, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(156, 219, 'قالب ', 1, 1, 1);
insert into [tblProdUnitDesc] values(157, 219, 'قوطی', 34, 0, 1);
insert into [tblProdUnitDesc] values(158, 219, 'گالن', 12, 0, 0);
insert into [tblProdUnitDesc] values(160, 362, 'بسته', 48, 0, 0);
insert into [tblProdUnitDesc] values(162, 363, 'بسته', 30, 0, 0);
insert into [tblProdUnitDesc] values(163, 364, 'بسته', 50, 0, 0);
insert into [tblProdUnitDesc] values(164, 365, 'بسته', 24, 0, 0);
insert into [tblProdUnitDesc] values(166, 367, 'بسته', 20, 0, 0);
insert into [tblProdUnitDesc] values(167, 368, 'بسته', 54, 0, 0);
insert into [tblProdUnitDesc] values(168, 370, 'بسته', 95, 0, 0);
insert into [tblProdUnitDesc] values(169, 371, 'بسته', 24, 0, 0);
insert into [tblProdUnitDesc] values(172, 375, 'بسته', 117, 0, 0);
insert into [tblProdUnitDesc] values(175, 566, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(176, 577, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(177, 580, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(178, 589, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(179, 595, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(180, 606, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(181, 608, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(182, 290, 'لیتر', 1, 0, 0);
insert into [tblProdUnitDesc] values(183, 609, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(184, 611, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(185, 612, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(186, 613, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(187, 629, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(188, 630, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(189, 631, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(190, 632, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(191, 633, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(192, 634, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(193, 635, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(194, 638, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(195, 639, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(196, 640, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(197, 641, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(198, 642, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(199, 643, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(200, 644, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(201, 646, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(202, 647, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(203, 654, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(204, 655, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(205, 656, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(206, 661, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(207, 662, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(208, 664, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(209, 666, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(210, 667, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(211, 668, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(212, 669, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(213, 670, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(214, 672, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(215, 675, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(216, 742, 'متر مربع', 21, 1, 0);
insert into [tblProdUnitDesc] values(217, 745, 'متر مربع', 36, 0, 0);
insert into [tblProdUnitDesc] values(218, 746, 'متر مربع', 36, 0, 0);
insert into [tblProdUnitDesc] values(219, 747, 'متر مربع', 50, 0, 0);
insert into [tblProdUnitDesc] values(220, 775, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(221, 777, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(222, 778, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(223, 779, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(224, 780, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(225, 782, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(226, 783, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(227, 784, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(228, 791, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(229, 798, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(230, 805, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(231, 809, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(232, 811, 'عدد', 1, 1, 1);
insert into [tblProdUnitDesc] values(240, 938, 'کیلوگرم', 1, 1, 1);
insert into [tblProdUnitDesc] values(243, 938, 'کیسه', 25, 0, 1);


/* Table structure [tblProdVisit] */
CREATE TABLE [tblProdVisit] (
  [ProdVisitID] integer, 
  [ProdID] integer, 
  [CustID] integer, 
  [ProdVisitDateTime] datetime);

/* Data [tblProdVisit] */


/* Table structure [tblSupplierProd] */
CREATE TABLE [tblSupplierProd] (
  [CustID] integer NOT NULL REFERENCES [tblCustomerDesc]([CustID]), 
  [ProdID] integer NOT NULL REFERENCES [tblProductDesc]([ProdID]), 
  CONSTRAINT [sqlite_autoindex_tblSupplierProd_1] PRIMARY KEY ([CustID], [ProdID]));

/* Data [tblSupplierProd] */
insert into [tblSupplierProd] values(1, 31);
insert into [tblSupplierProd] values(1, 73);
insert into [tblSupplierProd] values(1, 136);
insert into [tblSupplierProd] values(1, 219);
insert into [tblSupplierProd] values(1, 290);
insert into [tblSupplierProd] values(1, 293);
insert into [tblSupplierProd] values(1, 314);
insert into [tblSupplierProd] values(1, 444);
insert into [tblSupplierProd] values(20, 17);
insert into [tblSupplierProd] values(20, 18);
insert into [tblSupplierProd] values(20, 19);
insert into [tblSupplierProd] values(20, 20);
insert into [tblSupplierProd] values(20, 21);
insert into [tblSupplierProd] values(22, 16);
insert into [tblSupplierProd] values(22, 17);
insert into [tblSupplierProd] values(22, 22);
insert into [tblSupplierProd] values(22, 319);
insert into [tblSupplierProd] values(23, 16);
insert into [tblSupplierProd] values(23, 18);
insert into [tblSupplierProd] values(24, 18);
insert into [tblSupplierProd] values(25, 124);
insert into [tblSupplierProd] values(26, 19);
insert into [tblSupplierProd] values(27, 16);
insert into [tblSupplierProd] values(27, 101);
insert into [tblSupplierProd] values(27, 102);
insert into [tblSupplierProd] values(34, 17);
insert into [tblSupplierProd] values(34, 20);
insert into [tblSupplierProd] values(34, 21);
insert into [tblSupplierProd] values(34, 22);
insert into [tblSupplierProd] values(37, 122);
insert into [tblSupplierProd] values(37, 123);
insert into [tblSupplierProd] values(37, 177);
insert into [tblSupplierProd] values(37, 178);
insert into [tblSupplierProd] values(37, 179);
insert into [tblSupplierProd] values(37, 180);
insert into [tblSupplierProd] values(37, 181);
insert into [tblSupplierProd] values(37, 182);
insert into [tblSupplierProd] values(37, 183);
insert into [tblSupplierProd] values(37, 184);
insert into [tblSupplierProd] values(37, 185);
insert into [tblSupplierProd] values(38, 105);
insert into [tblSupplierProd] values(75, 172);
insert into [tblSupplierProd] values(75, 173);
insert into [tblSupplierProd] values(75, 174);
insert into [tblSupplierProd] values(81, 314);
insert into [tblSupplierProd] values(96, 155);
insert into [tblSupplierProd] values(96, 156);
insert into [tblSupplierProd] values(96, 157);
insert into [tblSupplierProd] values(96, 161);
insert into [tblSupplierProd] values(96, 162);
insert into [tblSupplierProd] values(96, 164);
insert into [tblSupplierProd] values(96, 165);
insert into [tblSupplierProd] values(96, 166);
insert into [tblSupplierProd] values(96, 167);
insert into [tblSupplierProd] values(96, 168);
insert into [tblSupplierProd] values(96, 169);
insert into [tblSupplierProd] values(96, 170);
insert into [tblSupplierProd] values(111, 16);
insert into [tblSupplierProd] values(112, 361);
insert into [tblSupplierProd] values(112, 362);
insert into [tblSupplierProd] values(112, 363);
insert into [tblSupplierProd] values(112, 364);
insert into [tblSupplierProd] values(112, 365);
insert into [tblSupplierProd] values(112, 366);
insert into [tblSupplierProd] values(112, 367);
insert into [tblSupplierProd] values(112, 368);
insert into [tblSupplierProd] values(112, 369);
insert into [tblSupplierProd] values(112, 370);
insert into [tblSupplierProd] values(112, 371);
insert into [tblSupplierProd] values(112, 372);
insert into [tblSupplierProd] values(112, 373);
insert into [tblSupplierProd] values(112, 374);
insert into [tblSupplierProd] values(112, 375);
insert into [tblSupplierProd] values(112, 376);
insert into [tblSupplierProd] values(112, 377);
insert into [tblSupplierProd] values(116, 139);
insert into [tblSupplierProd] values(116, 140);
insert into [tblSupplierProd] values(116, 141);
insert into [tblSupplierProd] values(116, 142);
insert into [tblSupplierProd] values(116, 143);
insert into [tblSupplierProd] values(116, 144);
insert into [tblSupplierProd] values(116, 145);
insert into [tblSupplierProd] values(116, 146);
insert into [tblSupplierProd] values(116, 147);
insert into [tblSupplierProd] values(116, 148);
insert into [tblSupplierProd] values(116, 149);
insert into [tblSupplierProd] values(116, 150);
insert into [tblSupplierProd] values(120, 378);
insert into [tblSupplierProd] values(120, 379);
insert into [tblSupplierProd] values(120, 380);
insert into [tblSupplierProd] values(120, 381);
insert into [tblSupplierProd] values(145, 137);
insert into [tblSupplierProd] values(213, 242);
insert into [tblSupplierProd] values(213, 243);
insert into [tblSupplierProd] values(213, 244);
insert into [tblSupplierProd] values(213, 245);
insert into [tblSupplierProd] values(213, 246);
insert into [tblSupplierProd] values(214, 125);
insert into [tblSupplierProd] values(214, 126);
insert into [tblSupplierProd] values(214, 239);
insert into [tblSupplierProd] values(214, 240);
insert into [tblSupplierProd] values(214, 241);
insert into [tblSupplierProd] values(316, 224);
insert into [tblSupplierProd] values(316, 225);
insert into [tblSupplierProd] values(316, 226);
insert into [tblSupplierProd] values(316, 227);
insert into [tblSupplierProd] values(316, 228);
insert into [tblSupplierProd] values(316, 229);
insert into [tblSupplierProd] values(316, 230);
insert into [tblSupplierProd] values(316, 231);
insert into [tblSupplierProd] values(316, 232);
insert into [tblSupplierProd] values(321, 129);
insert into [tblSupplierProd] values(330, 197);
insert into [tblSupplierProd] values(330, 198);
insert into [tblSupplierProd] values(330, 199);
insert into [tblSupplierProd] values(330, 200);
insert into [tblSupplierProd] values(330, 201);
insert into [tblSupplierProd] values(330, 202);
insert into [tblSupplierProd] values(330, 203);
insert into [tblSupplierProd] values(352, 188);
insert into [tblSupplierProd] values(352, 189);
insert into [tblSupplierProd] values(352, 190);
insert into [tblSupplierProd] values(352, 191);
insert into [tblSupplierProd] values(352, 192);
insert into [tblSupplierProd] values(352, 193);
insert into [tblSupplierProd] values(352, 194);
insert into [tblSupplierProd] values(387, 216);
insert into [tblSupplierProd] values(387, 217);
insert into [tblSupplierProd] values(395, 138);
insert into [tblSupplierProd] values(430, 233);
insert into [tblSupplierProd] values(430, 234);
insert into [tblSupplierProd] values(430, 235);
insert into [tblSupplierProd] values(430, 236);
insert into [tblSupplierProd] values(430, 237);
insert into [tblSupplierProd] values(430, 238);
insert into [tblSupplierProd] values(455, 204);
insert into [tblSupplierProd] values(509, 218);
insert into [tblSupplierProd] values(509, 220);
insert into [tblSupplierProd] values(509, 221);
insert into [tblSupplierProd] values(578, 207);
insert into [tblSupplierProd] values(578, 208);
insert into [tblSupplierProd] values(578, 209);
insert into [tblSupplierProd] values(578, 210);
insert into [tblSupplierProd] values(578, 211);
insert into [tblSupplierProd] values(578, 212);
insert into [tblSupplierProd] values(578, 213);
insert into [tblSupplierProd] values(578, 214);
insert into [tblSupplierProd] values(578, 215);
insert into [tblSupplierProd] values(581, 171);
insert into [tblSupplierProd] values(581, 175);
insert into [tblSupplierProd] values(581, 176);
insert into [tblSupplierProd] values(583, 206);
insert into [tblSupplierProd] values(645, 134);
insert into [tblSupplierProd] values(645, 135);
insert into [tblSupplierProd] values(666, 195);
insert into [tblSupplierProd] values(666, 196);
insert into [tblSupplierProd] values(698, 186);
insert into [tblSupplierProd] values(698, 187);
insert into [tblSupplierProd] values(743, 18);
insert into [tblSupplierProd] values(743, 19);
insert into [tblSupplierProd] values(743, 20);
insert into [tblSupplierProd] values(743, 21);
insert into [tblSupplierProd] values(743, 22);
insert into [tblSupplierProd] values(743, 23);
insert into [tblSupplierProd] values(743, 24);
insert into [tblSupplierProd] values(743, 25);
insert into [tblSupplierProd] values(743, 26);
insert into [tblSupplierProd] values(743, 27);
insert into [tblSupplierProd] values(743, 28);
insert into [tblSupplierProd] values(743, 29);
insert into [tblSupplierProd] values(743, 30);
insert into [tblSupplierProd] values(743, 31);
insert into [tblSupplierProd] values(743, 32);
insert into [tblSupplierProd] values(743, 33);
insert into [tblSupplierProd] values(743, 34);
insert into [tblSupplierProd] values(743, 35);
insert into [tblSupplierProd] values(743, 36);
insert into [tblSupplierProd] values(743, 37);
insert into [tblSupplierProd] values(743, 38);
insert into [tblSupplierProd] values(743, 39);
insert into [tblSupplierProd] values(743, 40);
insert into [tblSupplierProd] values(743, 41);
insert into [tblSupplierProd] values(743, 42);
insert into [tblSupplierProd] values(743, 43);
insert into [tblSupplierProd] values(743, 44);
insert into [tblSupplierProd] values(743, 45);
insert into [tblSupplierProd] values(743, 46);
insert into [tblSupplierProd] values(743, 47);
insert into [tblSupplierProd] values(743, 48);
insert into [tblSupplierProd] values(743, 49);
insert into [tblSupplierProd] values(743, 50);
insert into [tblSupplierProd] values(743, 51);
insert into [tblSupplierProd] values(743, 52);
insert into [tblSupplierProd] values(743, 53);
insert into [tblSupplierProd] values(743, 54);
insert into [tblSupplierProd] values(743, 55);
insert into [tblSupplierProd] values(743, 56);
insert into [tblSupplierProd] values(744, 57);
insert into [tblSupplierProd] values(744, 58);
insert into [tblSupplierProd] values(744, 59);
insert into [tblSupplierProd] values(744, 60);
insert into [tblSupplierProd] values(744, 61);
insert into [tblSupplierProd] values(746, 62);
insert into [tblSupplierProd] values(746, 63);
insert into [tblSupplierProd] values(746, 64);
insert into [tblSupplierProd] values(746, 65);
insert into [tblSupplierProd] values(746, 66);
insert into [tblSupplierProd] values(746, 67);
insert into [tblSupplierProd] values(746, 68);
insert into [tblSupplierProd] values(746, 69);
insert into [tblSupplierProd] values(746, 70);
insert into [tblSupplierProd] values(747, 71);
insert into [tblSupplierProd] values(748, 72);
insert into [tblSupplierProd] values(759, 74);
insert into [tblSupplierProd] values(759, 75);
insert into [tblSupplierProd] values(759, 76);
insert into [tblSupplierProd] values(761, 77);
insert into [tblSupplierProd] values(761, 78);
insert into [tblSupplierProd] values(763, 79);
insert into [tblSupplierProd] values(763, 80);
insert into [tblSupplierProd] values(763, 81);
insert into [tblSupplierProd] values(763, 82);
insert into [tblSupplierProd] values(765, 83);
insert into [tblSupplierProd] values(765, 84);
insert into [tblSupplierProd] values(765, 85);
insert into [tblSupplierProd] values(780, 86);
insert into [tblSupplierProd] values(780, 87);
insert into [tblSupplierProd] values(780, 88);
insert into [tblSupplierProd] values(780, 89);
insert into [tblSupplierProd] values(786, 90);
insert into [tblSupplierProd] values(786, 91);
insert into [tblSupplierProd] values(789, 92);
insert into [tblSupplierProd] values(790, 94);
insert into [tblSupplierProd] values(790, 95);
insert into [tblSupplierProd] values(790, 96);
insert into [tblSupplierProd] values(790, 98);
insert into [tblSupplierProd] values(790, 100);
insert into [tblSupplierProd] values(816, 103);
insert into [tblSupplierProd] values(817, 104);
insert into [tblSupplierProd] values(817, 106);
insert into [tblSupplierProd] values(817, 107);
insert into [tblSupplierProd] values(817, 108);
insert into [tblSupplierProd] values(817, 109);
insert into [tblSupplierProd] values(817, 110);
insert into [tblSupplierProd] values(821, 111);
insert into [tblSupplierProd] values(825, 112);
insert into [tblSupplierProd] values(826, 113);
insert into [tblSupplierProd] values(826, 114);
insert into [tblSupplierProd] values(826, 115);
insert into [tblSupplierProd] values(826, 116);
insert into [tblSupplierProd] values(830, 117);
insert into [tblSupplierProd] values(832, 119);
insert into [tblSupplierProd] values(848, 127);
insert into [tblSupplierProd] values(848, 128);
insert into [tblSupplierProd] values(851, 16);
insert into [tblSupplierProd] values(851, 58);
insert into [tblSupplierProd] values(851, 59);
insert into [tblSupplierProd] values(851, 61);
insert into [tblSupplierProd] values(851, 166);
insert into [tblSupplierProd] values(852, 130);
insert into [tblSupplierProd] values(852, 131);
insert into [tblSupplierProd] values(854, 132);
insert into [tblSupplierProd] values(854, 133);
insert into [tblSupplierProd] values(857, 136);
insert into [tblSupplierProd] values(858, 151);
insert into [tblSupplierProd] values(858, 152);
insert into [tblSupplierProd] values(858, 153);
insert into [tblSupplierProd] values(858, 154);
insert into [tblSupplierProd] values(866, 159);
insert into [tblSupplierProd] values(866, 160);
insert into [tblSupplierProd] values(866, 163);
insert into [tblSupplierProd] values(879, 295);
insert into [tblSupplierProd] values(889, 247);
insert into [tblSupplierProd] values(892, 248);
insert into [tblSupplierProd] values(892, 249);
insert into [tblSupplierProd] values(892, 250);
insert into [tblSupplierProd] values(892, 251);
insert into [tblSupplierProd] values(892, 252);
insert into [tblSupplierProd] values(892, 253);
insert into [tblSupplierProd] values(892, 254);
insert into [tblSupplierProd] values(892, 255);
insert into [tblSupplierProd] values(893, 256);
insert into [tblSupplierProd] values(893, 257);
insert into [tblSupplierProd] values(893, 258);
insert into [tblSupplierProd] values(893, 259);
insert into [tblSupplierProd] values(893, 260);
insert into [tblSupplierProd] values(893, 261);
insert into [tblSupplierProd] values(894, 262);
insert into [tblSupplierProd] values(894, 263);
insert into [tblSupplierProd] values(894, 264);
insert into [tblSupplierProd] values(894, 265);
insert into [tblSupplierProd] values(894, 266);
insert into [tblSupplierProd] values(895, 267);
insert into [tblSupplierProd] values(896, 268);
insert into [tblSupplierProd] values(897, 269);
insert into [tblSupplierProd] values(897, 270);
insert into [tblSupplierProd] values(897, 271);
insert into [tblSupplierProd] values(897, 272);
insert into [tblSupplierProd] values(897, 273);
insert into [tblSupplierProd] values(897, 274);
insert into [tblSupplierProd] values(898, 275);
insert into [tblSupplierProd] values(898, 276);
insert into [tblSupplierProd] values(898, 277);
insert into [tblSupplierProd] values(898, 278);
insert into [tblSupplierProd] values(898, 279);
insert into [tblSupplierProd] values(898, 280);
insert into [tblSupplierProd] values(898, 281);
insert into [tblSupplierProd] values(898, 282);
insert into [tblSupplierProd] values(898, 283);
insert into [tblSupplierProd] values(898, 284);
insert into [tblSupplierProd] values(898, 285);
insert into [tblSupplierProd] values(898, 286);
insert into [tblSupplierProd] values(898, 287);
insert into [tblSupplierProd] values(899, 288);
insert into [tblSupplierProd] values(899, 289);
insert into [tblSupplierProd] values(900, 290);
insert into [tblSupplierProd] values(901, 291);
insert into [tblSupplierProd] values(901, 292);
insert into [tblSupplierProd] values(903, 293);
insert into [tblSupplierProd] values(904, 294);
insert into [tblSupplierProd] values(905, 296);
insert into [tblSupplierProd] values(906, 297);
insert into [tblSupplierProd] values(906, 298);
insert into [tblSupplierProd] values(907, 299);
insert into [tblSupplierProd] values(907, 300);
insert into [tblSupplierProd] values(907, 301);
insert into [tblSupplierProd] values(908, 302);
insert into [tblSupplierProd] values(912, 303);
insert into [tblSupplierProd] values(912, 304);
insert into [tblSupplierProd] values(912, 305);
insert into [tblSupplierProd] values(912, 306);
insert into [tblSupplierProd] values(912, 307);
insert into [tblSupplierProd] values(912, 308);
insert into [tblSupplierProd] values(912, 309);
insert into [tblSupplierProd] values(912, 310);
insert into [tblSupplierProd] values(912, 311);
insert into [tblSupplierProd] values(912, 312);
insert into [tblSupplierProd] values(912, 313);
insert into [tblSupplierProd] values(913, 315);
insert into [tblSupplierProd] values(913, 316);
insert into [tblSupplierProd] values(913, 317);
insert into [tblSupplierProd] values(913, 318);
insert into [tblSupplierProd] values(913, 319);
insert into [tblSupplierProd] values(913, 320);
insert into [tblSupplierProd] values(915, 321);
insert into [tblSupplierProd] values(915, 322);
insert into [tblSupplierProd] values(915, 323);
insert into [tblSupplierProd] values(915, 324);
insert into [tblSupplierProd] values(915, 325);
insert into [tblSupplierProd] values(917, 326);
insert into [tblSupplierProd] values(917, 327);
insert into [tblSupplierProd] values(918, 328);
insert into [tblSupplierProd] values(918, 329);
insert into [tblSupplierProd] values(918, 330);
insert into [tblSupplierProd] values(918, 331);
insert into [tblSupplierProd] values(918, 332);
insert into [tblSupplierProd] values(918, 333);
insert into [tblSupplierProd] values(918, 334);
insert into [tblSupplierProd] values(918, 335);
insert into [tblSupplierProd] values(918, 336);
insert into [tblSupplierProd] values(918, 337);
insert into [tblSupplierProd] values(918, 338);
insert into [tblSupplierProd] values(918, 339);
insert into [tblSupplierProd] values(918, 340);
insert into [tblSupplierProd] values(918, 341);
insert into [tblSupplierProd] values(918, 342);
insert into [tblSupplierProd] values(918, 343);
insert into [tblSupplierProd] values(918, 344);
insert into [tblSupplierProd] values(918, 345);
insert into [tblSupplierProd] values(918, 346);
insert into [tblSupplierProd] values(918, 347);
insert into [tblSupplierProd] values(918, 348);
insert into [tblSupplierProd] values(918, 349);
insert into [tblSupplierProd] values(918, 350);
insert into [tblSupplierProd] values(918, 351);
insert into [tblSupplierProd] values(918, 352);
insert into [tblSupplierProd] values(918, 353);
insert into [tblSupplierProd] values(918, 354);
insert into [tblSupplierProd] values(918, 355);
insert into [tblSupplierProd] values(918, 356);
insert into [tblSupplierProd] values(918, 357);
insert into [tblSupplierProd] values(918, 358);
insert into [tblSupplierProd] values(918, 359);
insert into [tblSupplierProd] values(918, 360);
insert into [tblSupplierProd] values(937, 809);
insert into [tblSupplierProd] values(937, 811);
insert into [tblSupplierProd] values(938, 819);
insert into [tblSupplierProd] values(938, 825);
insert into [tblSupplierProd] values(938, 828);
insert into [tblSupplierProd] values(938, 829);
insert into [tblSupplierProd] values(938, 831);
insert into [tblSupplierProd] values(938, 833);
insert into [tblSupplierProd] values(938, 836);
insert into [tblSupplierProd] values(938, 861);
insert into [tblSupplierProd] values(938, 862);
insert into [tblSupplierProd] values(938, 863);
insert into [tblSupplierProd] values(938, 864);
insert into [tblSupplierProd] values(938, 865);
insert into [tblSupplierProd] values(938, 866);
insert into [tblSupplierProd] values(942, 867);
insert into [tblSupplierProd] values(943, 878);
insert into [tblSupplierProd] values(944, 888);
insert into [tblSupplierProd] values(944, 892);
insert into [tblSupplierProd] values(944, 895);
insert into [tblSupplierProd] values(944, 897);
insert into [tblSupplierProd] values(946, 903);
insert into [tblSupplierProd] values(946, 905);
insert into [tblSupplierProd] values(947, 911);
insert into [tblSupplierProd] values(947, 913);
insert into [tblSupplierProd] values(947, 916);
insert into [tblSupplierProd] values(947, 919);
insert into [tblSupplierProd] values(947, 922);
insert into [tblSupplierProd] values(947, 924);
insert into [tblSupplierProd] values(947, 927);
insert into [tblSupplierProd] values(947, 932);
insert into [tblSupplierProd] values(947, 936);


/* Table structure [tbl_B_BrandDesc] */
CREATE TABLE [tbl_B_BrandDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [BrandName] nvarchar(50) COLLATE NOCASE, 
  [BrandDesc] nvarchar(150) COLLATE NOCASE);

/* Data [tbl_B_BrandDesc] */
insert into [tbl_B_BrandDesc] values(2, 'نام تجاری 2', '');
insert into [tbl_B_BrandDesc] values(3, 'کوبوا-coboa- اذران', '');
insert into [tbl_B_BrandDesc] values(4, 'وارداتی', '');
insert into [tbl_B_BrandDesc] values(5, 'calvin klain', '');
insert into [tbl_B_BrandDesc] values(6, 'شرق گستر دلیجان', '');
insert into [tbl_B_BrandDesc] values(8, 'نام تجاری ت', '');
insert into [tbl_B_BrandDesc] values(9, 'پرلیکا', '');
insert into [tbl_B_BrandDesc] values(10, 'Zydex', '');
insert into [tbl_B_BrandDesc] values(11, 'vilakar', '');
insert into [tbl_B_BrandDesc] values(12, 'آذرخش', '');
insert into [tbl_B_BrandDesc] values(13, 'فابر ایتالیا', '');
insert into [tbl_B_BrandDesc] values(14, 'شیک سازان پارسا در', '');
insert into [tbl_B_BrandDesc] values(15, 'سیندژ', '');
insert into [tbl_B_BrandDesc] values(16, 'البرز', '');
insert into [tbl_B_BrandDesc] values(17, 'نانونیا', '');
insert into [tbl_B_BrandDesc] values(18, 'آنیل', '');
insert into [tbl_B_BrandDesc] values(20, 'A-E-S-T', '');
insert into [tbl_B_BrandDesc] values(21, 'ceresit', '');
insert into [tbl_B_BrandDesc] values(22, 'فیال بتون سازه', '');
insert into [tbl_B_BrandDesc] values(23, 'لیان', '');
insert into [tbl_B_BrandDesc] values(24, 'نام تجاری جدید', '');
insert into [tbl_B_BrandDesc] values(25, 'fsdfsdfdf', '');
insert into [tbl_B_BrandDesc] values(26, 'asdasdsa', '');
insert into [tbl_B_BrandDesc] values(27, 'asdasdsda', '');
insert into [tbl_B_BrandDesc] values(28, 'moniotor', '');


/* Table structure [tbl_B_BrandGrp] */
CREATE TABLE [tbl_B_BrandGrp] (
  [BrandID] integer NOT NULL, 
  [GrpID] integer NOT NULL, 
  CONSTRAINT [sqlite_autoindex_tbl_B_BrandGrp_1] PRIMARY KEY ([BrandID], [GrpID]));

/* Data [tbl_B_BrandGrp] */
insert into [tbl_B_BrandGrp] values(1, 14);
insert into [tbl_B_BrandGrp] values(1, 15);
insert into [tbl_B_BrandGrp] values(2, 14);
insert into [tbl_B_BrandGrp] values(3, 20);
insert into [tbl_B_BrandGrp] values(8, 14);
insert into [tbl_B_BrandGrp] values(11, 29);
insert into [tbl_B_BrandGrp] values(24, 17);
insert into [tbl_B_BrandGrp] values(24, 18);
insert into [tbl_B_BrandGrp] values(25, 7);
insert into [tbl_B_BrandGrp] values(26, 34);
insert into [tbl_B_BrandGrp] values(27, 10);
insert into [tbl_B_BrandGrp] values(28, 10);


/* Table structure [tbl_B_CustTypeDesc] */
CREATE TABLE [tbl_B_CustTypeDesc] (
  [AID] integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
  [CustTypeDesc] nvarchar(50) COLLATE NOCASE, 
  [IsSupplier] integer);

/* Data [tbl_B_CustTypeDesc] */
insert into [tbl_B_CustTypeDesc] values(1, 'توليد‌كننده', 1);
insert into [tbl_B_CustTypeDesc] values(2, 'نماينده فروش', 1);
insert into [tbl_B_CustTypeDesc] values(3, 'وارد‌كننده', 1);
insert into [tbl_B_CustTypeDesc] values(4, 'مالك', 2);
insert into [tbl_B_CustTypeDesc] values(5, 'پيمانكار', 2);
insert into [tbl_B_CustTypeDesc] values(6, 'خراسان رضوی', 3);
insert into [tbl_B_CustTypeDesc] values(7, 'نوع شعبه 1', 4);
insert into [tbl_B_CustTypeDesc] values(8, 'استانی', 3);
insert into [tbl_B_CustTypeDesc] values(9, 'مصالح فروش', 1);
insert into [tbl_B_CustTypeDesc] values(10, 'مونتاژ کننده', 1);
insert into [tbl_B_CustTypeDesc] values(13, 'تأمین کننده ت', 1);
insert into [tbl_B_CustTypeDesc] values(16, 'مشتری ت', 2);
insert into [tbl_B_CustTypeDesc] values(17, '', 2);

