import 'dart:typed_data';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exibir Imagem')),
        body: Center(child: HexToImageWidget()),
      ),
    );
  }
}

class HexToImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var input =
        "0xFFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108005E00B003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EA2F65F26C247FF9E75C7F92915D6F47924FDE799BE4AEA3C543EC761B3FE7AC958FE4C7FF005CEB402BC1FF001F4F3FEEF6799F728D4C49797526FF00F969FF002D2A3AD436A353B1B79A131BDC6CF2A78CFEEF213FE5A0FEFF00F07E4D59815BC2DE28D63C19AC41A8691A85DE957D6E3093DACFE5C95C5FC45F8D5A3FC1EB296EF5CBE810EA07291ECF32597FDCAEDF53F0DEAD6B2BA4D63789247FF4C0853F8818AF817F6C5D724D73E356A9FC70D86CB74127FCB1FF009E9FFB356750D0F6E97FE0A0BE0D86EBFE411ACFFD74FB3249FF00B3D7A0FC35F8F9E12F8AD63E769CF6FA82C727EF225FF47B98EBF3C75299E1D8F1D59F0CF8FEEBE1CF8E2C358B477B736B3A48FE5C9FEB53F8EB1F67500FD387D5BE1EB3C9F6FF000D6B02331FEECDBEB29179527FC0E27AC39B45F879AC5BC696BE20D5BEDF2ECF320FB15BC98FEFFCFE77FEC95F9EFF0012FE3A6B9F1935F92EEFAEE64B6327EE2D41FDDC51D7327519F4FF00DF41234727FCF406ABF781ECCFD0DF11FC3D82CF549174EB9B8B8B3FF966F3C3E44927FC037BD635E7856EC1F92BC2FF0067CFDAE64F0FF84B548FC4B792DFDBE9B02496AC7FE3E643F73CBCFF001D727E30FDB67C59AD4B23E98F0E911FFCB38963DCFF00F7DBD65ED6A07B33E941653C32FEFE0FFBE2A48627FF00961FEB3FE9A57CCFE09FDB1FC616DAA5BA6A0967AB5BCBFEB04B1ED93FF1CAFA6B47D634CF14F862DF57B49E34B2B98FCC490F18A3DA00937DAA5FF5EF55FC9BAB3BADE8F7295CB7893F683F09F86A6F24F886DEF9E2FE082279BF9D6A781BE3A693E339BECFA75FDBDDC9FEB3CB1C4947B4333A8D375EBAB3F91E48E4F37FBE95D043E3690491EFD2EDBFED8BF975CC4566935C95547883F539E05695869D1B9E6E2398E7F791871CD6A0773A478C6D84B06CB578BCCFF6EBB1D3AFDA488398A58B3D3CC1D6B8AF87573A4691753C7AC581BAB796392246593125B39FB938FEFECAD3D33C4F720AC26F2E350B7B24D907DA1DFF00771FFB15A5303B586F2AE59CBFDCAC3B39BF8EB42CE5FEE50057F150F3EED13FE797EF2B1EF6F61F2A4F301327FCB3D82B525924BDD5EE245CFF00ACF2EB1F5881FEDFD7F5AD00CFBB2F11D8952CD2F149143E75D558BC87F75B280093E39F8ABC27A2496567E24D72D2CA21916B0DF491C7FF007C74AFCE2F8AFE219FC4FE38D5F53BA90CB71A8DDBCF213FF2D1DDFBD7DB3F1AB52FEC1F02EB179BCA1B7B47031DEBE06D4BC63FBD748EDF7097AC845660519E07923D9FEB3FDDE2B3357D2E4FB147F27FCB3AD987535BA87F791B7FACF5AD6B7D2ED750B78F37083F0AD3D987B438FB6D3E5693F77149F8558364907CEE65F363E89EB5EF5A67ECEFA7BE8F1EA4358B5B9571C8B794A915575BFD9BEF34E3A76A0CB736FA06AD2491C17B748009648D13CC4503A04DEB8FF787A51513FE207B53C1659A09D278E432C12492274A71D1A612F58A7CFF0079EBD0FC67E12B0F0EDDC62E2C6EA5B6F338B849157CCFAE2AD58E95E1ABB31C7F62BD6B8FEEC930C7F2AE6A9529FB3343CC7ECED6F223C727FABEB8FF009675D8F8B3E21EA0FF00057C39A22CF225BBDC4E67119FF5BB1FFF00B3ADBD6FC2BA159F966E74DB88D3FE984CC3FF0065AE72FF00C13637D7C96D69AA9289BE48E3913A6FACA9D4A66871DE724DFF002CF0FF00EDD5BD3EFE6D1AFADEE6C9FCB9ED64F337A3E335D643F0AC093FE3F2DB7FFD726AA9AD7C2FBAB6F2DD2488F9BF73676A7ED29998BE34FDA27C4BF12EEDCCB7D71656CBC0B4B693CA03FDFF00EFD61787BC4FA8586A7E75BDFCF6CF1F49126715159F842EE2BEB887ECC774526246CF069B3E9D24179E5CC22263E82BA7F7607DB7FB2D7C497F889A042DA9CFF6FBBD3A4D8F21FF00969FF3CF35EF3AC2FF00694A358F2E383EDBFBB9604411C71BFAE2BE1FFD8FFC6EDE1AF1A9B6921482DEFE3DA02BFF00AC74F5FF00C7BF3AFAE7FB5FED1756EBFF002CD3A0AE703BED325CDAC6F5A96737F72B9FD0A578AC53FE99D6C59FF7EBA00B1697525B4787EBD85666B365FE9BE6491B2FB835D3F8C2FECAFAE6792C6C534DB49CFCB6E1FCCF2FE8FD6B9BBDB59ADA38D33B3FDFE6B43329E9B67B657DF56352B3FDD568E8FA6ECB6F9F9A7DE471CE280383F889A0C37BE0BBA81951BED27CB3BC66BC0EF3F67DD213C2FABC935A24B70F227904C638AFA4750B48AE2C3636F71E67DF279AE33C57A4086C767FD34FCEB3A6675363C547ECC7A09D1AEFFD1FE736F1BA9C7FAA93DAB3BC3FFB3E69BAA69378D756A564B681E488A1C6FF00AD7B9D969B0DE6A3701E267804691ED462315AFE32F0368314711D066D4A5867B5469D2FA2449AD661F7D08070C0D69ED0CCF0EF81BF0E20F0D78D585D4AE74778FCCB95913CCD9F4CD7D91FB687C33F83DE24FD94BC3DA27C207B8D4351D33515D4B57D42EA0743F3C3B3C88C391857DE738E9B6BC26F3C167486B87B747960F23CBDFB4F15B5E17D35649A2F99C29B7C3AC6C4093EB57F589FB317B3F7CF9F26F8297FA77DA2CA0B63749623CD68E43906B9DBFF0086F79AD4D2476F6EA82D79774E09AFAA16D23D374FD4EDC5B0F3E6812449F79DC187DF4FA1AE57C37A28D1A5BB648E36925B7EAE335E7FB33A4F9FAEBE136A515A4BE625DC9E50F3785DDFCEB9493C2D77FDA29BB4E9898B9F322B7AFAE9227D5ADEEA1BA0B892D3CBF9062B3749F0D268FE1FBF8A0CC7E747F23B76A3D9967CB17F1B69CBE6149E34EDE62526976BA8789EE9ACADAD8DFDD3A7991885391E5FCFD2BE88BBF87967AA6877714D0472CCFB36B11FEAFE9555BE175A7867439AE34FF320D56DF0B1CD19F2A511B7C920C8F5A29D3A63F687CE1F14B49B9F85FF0012EF74ED46DE6673B669E5116373300C094E8A083904751CD715AE78B60D42478E282CE188FF00CB46E653F8D7DBDF1BFC35AAFC51D3B4DBBF14F9B7FAFE9BA75B5824B711C7FBBB358B6C111C01BC842BF31E76ED1DABC6FC47FB12E99AE69D6F3D942D14D747CB77493091FD056B4E9C3DA07B43CAFE0E6AD1E8FE2AB4BB5686448A4FEF57D97A05C3CF736E5C39CF96F1E0F4AF9FEC3F625BBD074A8E4B4BE91EE41FBBB462BE96F853F0E35AF194BA6D869704935E95D8E59822A2C7F7E424F03359FF00CBC03BED0439122E7F77F5AD887F73FEE7A564D969D3E8FA9496974B89E2FDD381F74BFAD6942715D006A5DE6E2748CA6CF2BF79F2FAD53D6D1EE022754EEFDEBBEF8B7A0D9F87FC67FD9D6B6AB6779631982FA0DCE76DD2FF00AC5CB93C5714D6B25DDD48D1E7CBF6AE8331F15B8FDDED661F5152CF61246BE6051B31D2AC5AC627D95A12439B193FEB9D677038CBCB6F3ED93EE7E55C5F8C6CB26DE300FF00ACEC2BD2753D33665101FDDFB571FE27D29935AB4F37E538F338ACC2A7C0745FB2EF8063F1A6BBA95FDD2584F059C1B92CEF064DD349B20558CE47EF06E67E78F90545E24F87F79E1DD5EE2CA48243F67932CDC600FF0067D7F0A8BC261ED047240B1AFF00BA48AEA44E75ABB8E4BBBA77C7EEE97B40E4381D53C3864D1E76177B5654FB89902A0D134A7B33141F7008FCC7C7735D7F8AECA3B1D32E193E684F551FC3F4AC1D3808E48A49D982CF1FEED476ACFDA07B3F7CAD368FF6892EDDF2A76797C8C56249E1979E193C851B847C915D923D8DCC8FB0B82A9B9E791B827D31EB5269D07DBC3C714B0C292FC91B4C480C3DF038A8343887B35B236FBD4BEE8FF79B463352269B06A76F215E11D3915BFA978296D6C74B171A8C2D78D70E8D02027ECE3DDBF8BA37E74DBAD263D26E3CB519957EF81D0D0674CE42E3C312436B3EC5C663F93DAA38F4678E2595E076B77B7F9CC78627F3AEE745D3C5E48F0B2C51C9D70E4E4D6F7817E01EA7F133E1E78BBC43A75EE9765A7F820A3EA16325CE2F4A3E312A03D5064671C0CD694E98543C9751D365D59E675769BCDD9F7BFD8ACEBAB792CA328C8536379B1E0F4AF423A525B49B4024274F7A93C3BF0FB54F1C6B51695A258DDEABA85E1C41696F0EF7FF0074FA2FBD2A7FC40A94FF0076735A2D87DBF4BE54277F96BA5F08E9B2E89A248BE4DC5BFDB418D6752CA1957FD6283D09E471EF5D47C45D0BC5363E28B61E2DD166F0F5D1B44B386D9EC4DAA18EDD3CB8CF206F62AA3730CEE6E6B36DF5CD417C3AFA45C319AC63BA592DB337FC7A16CE7CB18C7CFB57391FF2CFDE9D4A7FBC35A7FC33374985E49FF7ECF2CC9261C96FCAB5BC820FDC5A96FAD238B4AB79154C93C723C4D32328DE176E14AFF7B83F37B54F2C3F698772F06B411AD25D4D7B234F34D34F71745A49189DD2CCCDF7DC93FC46ABDBCE889B5A339F456C1A9ECF4E95724C6E24574319F4AB5A9C7737BA8FDA2EE3699FD36ED1FA574198DB5D66D923C244A0FA77AA97DAFC63E5042879361C9ED41D11648B29B849EB8AC8F16F87A4974AFDCC8CD26FEC99A8F6604DE24D630C0C72A6247E48615CC78D262FE23F96607CB830303A9A8F52D16F27D3502CA01F42B5CBEA1E03BCBBBFF3A458A43E667818FEB4BD90543D4B42B6FB3E8D66C3612F1E1B07A558B8B5F334EDFF003A7EF3F8457036361AC59DAA285603D77F14E379ADDB2618C8C9E99A8E403AAD4AEFECBA5DC4BF7DA2FE13D2B9CB5B8935DD6C01FBA8E083F7607F0D606B37DA99B39A1796EA112FB66B2FC31737DA05ECEE2F659FCF4C2EF8CFCB59544C0F55D12C6D53489ED0AFEF0B79D13FDE27DCD558DCCCBB137C6DFDD2302B97D2BE22DC69B70EE837129E5F2B4B1FC4992CEFBCCCDBBBFF0075BA573FB3343BFD4D2DAFE182E74D6B98E285238E45B8642FF686DF9C01CED1599736FF006B984A7AC9D78E95E6BA6F89EFE4F11A5D18A2116FF3372CE31FF7CE6BB68BC6405DEE3B367A66BA40EEAF74AD497E1459C761A1E9E96DA75DCF3CBA902BE7B83E44650A93D033A95F979F34FF0074D721E00F1BEBDF0FAEF58862BF7D3D3574FB25E47191FE9106F3F29E0FA27E55A777F1B2D8681FD9D0D84512CBFEB2629BA67F9CF4E711F41F771F745701AAFC4FB23E257F2E1BD292C99566230BF8D5999D8DE583497198FA76A5F0FF0089F55F05EA8D73A4DFDE69D7AE9E5F9B03ED9231ECD5525F1DE9EF711B206F2EA2D63C4DA7CDA9F9B1BC48BE98AC35341B3FC48D7FC59AA5B2EBBAC5FEAEF62DB613793B4AD0A7A02D5ADE26B1FF008A36ED80285674DA14727EFF00F1570BAFF8B2C34DD765F2E78DB3271820E6BAED435B5BC863D9F36C1BDCABE549FF0076AC20741E107B4F10783EF1669E38A5B78B31C7B7E691FD49FF00AE61BFE0469F041BACE371FF003CEB0F4BB7F2226C7EF3ED9CAE38DB5BFA444F169716F3D79FAD69703D08BAE376D19FF7291E7867EF9FF80D73F6EBA80FBD7911FF00B771FE35A7A7BCD3CBFBC757FC315DDEC8E6F685CFECB81C72BFF7CF3566DFC2B04B1FFAB3F953E363174C52DBDF5D1BCD8FE4FE00D1EC83DA11FF00C2230A6370073D30839A49BC0F6BE57FC7BFFE3A2B692DBCE808F31D99BEE93C6DAB6BA779D0FDE347B30F6871F2F802D36F97B21FFBE0D67DD7C2DB2B81F2C283F3AEDEF99627C63E6F5AAF3CE228A5E3FD5F4ACBD98CF3FB8F8356770482A508EB939C566B7C148E2938987FDF4DFE15E952FDD0FF00DDFBDFED52EC3E8B48D0F2D9BE064729F9188FC45636A3FB3F47E6FDC93F315ECCD37953ECDA314C95165979151ECC0F10B6FD9B646EBBE3FA30A93FE141CF6E7991D8FD2BD9A9678FE5DFDE901E0FA9FC05BC3FEACC9F81ACEB7F813771BE7CB671EE6BE85B755987229BF655CE76AEDF4A00F9EAE3E166AB11D9FBDC55197E1AEADE6653CD61EAC2BE949208E6FEF7E42ABED8B7ECDBC7D056607CE36BF0D75482F51DA1497F799E5457572F8435073B1A1C08BFD5E182EEFAD7ADDC2C50CDF77F41515DC11CB2FDC5A39101E78D1089AD638FFD63A6368EB19F71DABA52112008067CA8F1579ADA388EDD89BFFBFB79AAB71108A55FFA69D68E4343FFD9002C20FFD8FFE000104A46494600010101006000600000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108005E00B003012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00EA2F65F26C247FF9E75C7F92915D6F47924FDE799BE4AEA3C543EC761B3FE7AC958FE4C7FF005CEB402BC1FF001F4F3FEEF6799F728D4C49797526FF00F969FF002D2A3AD436A353B1B79A131BDC6CF2A78CFEEF213FE5A0FEFF00F07E4D59815BC2DE28D63C19AC41A8691A85DE957D6E3093DACFE5C95C5FC45F8D5A3FC1EB296EF5CBE810EA07291ECF32597FDCAEDF53F0DEAD6B2BA4D63789247FF4C0853F8818AF817F6C5D724D73E356A9FC70D86CB74127FCB1FF009E9FFB356750D0F6E97FE0A0BE0D86EBFE411ACFFD74FB3249FF00B3D7A0FC35F8F9E12F8AD63E769CF6FA82C727EF225FF47B98EBF3C75299E1D8F1D59F0CF8FEEBE1CF8E2C358B477B736B3A48FE5C9FEB53F8EB1F67500FD387D5BE1EB3C9F6FF000D6B02331FEECDBEB29179527FC0E27AC39B45F879AC5BC696BE20D5BEDF2ECF320FB15BC98FEFFCFE77FEC95F9EFF0012FE3A6B9F1935F92EEFAEE64B6327EE2D41FDDC51D7327519F4FF00DF41234727FCF406ABF781ECCFD0DF11FC3D82CF549174EB9B8B8B3FF966F3C3E44927FC037BD635E7856EC1F92BC2FF0067CFDAE64F0FF84B548FC4B792DFDBE9B02496AC7FE3E643F73CBCFF001D727E30FDB67C59AD4B23E98F0E911FFCB38963DCFF00F7DBD65ED6A07B33E941653C32FEFE0FFBE2A48627FF00961FEB3FE9A57CCFE09FDB1FC616DAA5BA6A0967AB5BCBFEB04B1ED93FF1CAFA6B47D634CF14F862DF57B49E34B2B98FCC490F18A3DA00937DAA5FF5EF55FC9BAB3BADE8F7295CB7893F683F09F86A6F24F886DEF9E2FE082279BF9D6A781BE3A693E339BECFA75FDBDDC9FEB3CB1C4947B4333A8D375EBAB3F91E48E4F37FBE95D043E3690491EFD2EDBFED8BF975CC4566935C95547883F539E05695869D1B9E6E2398E7F791871CD6A0773A478C6D84B06CB578BCCFF6EBB1D3AFDA488398A58B3D3CC1D6B8AF87573A4691753C7AC581BAB796392246593125B39FB938FEFECAD3D33C4F720AC26F2E350B7B24D907DA1DFF00771FFB15A5303B586F2AE59CBFDCAC3B39BF8EB42CE5FEE50057F150F3EED13FE797EF2B1EF6F61F2A4F301327FCB3D82B525924BDD5EE245CFF00ACF2EB1F5881FEDFD7F5AD00CFBB2F11D8952CD2F149143E75D558BC87F75B280093E39F8ABC27A2496567E24D72D2CA21916B0DF491C7FF007C74AFCE2F8AFE219FC4FE38D5F53BA90CB71A8DDBCF213FF2D1DDFBD7DB3F1AB52FEC1F02EB179BCA1B7B47031DEBE06D4BC63FBD748EDF7097AC845660519E07923D9FEB3FDDE2B3357D2E4FB147F27FCB3AD987535BA87F791B7FACF5AD6B7D2ED750B78F37083F0AD3D987B438FB6D3E5693F77149F8558364907CEE65F363E89EB5EF5A67ECEFA7BE8F1EA4358B5B9571C8B794A915575BFD9BEF34E3A76A0CB736FA06AD2491C17B748009648D13CC4503A04DEB8FF787A51513FE207B53C1659A09D278E432C12492274A71D1A612F58A7CFF0079EBD0FC67E12B0F0EDDC62E2C6EA5B6F338B849157CCFAE2AD58E95E1ABB31C7F62BD6B8FEEC930C7F2AE6A9529FB3343CC7ECED6F223C727FABEB8FF009675D8F8B3E21EA0FF00057C39A22CF225BBDC4E67119FF5BB1FFF00B3ADBD6FC2BA159F966E74DB88D3FE984CC3FF0065AE72FF00C13637D7C96D69AA9289BE48E3913A6FACA9D4A66871DE724DFF002CF0FF00EDD5BD3EFE6D1AFADEE6C9FCB9ED64F337A3E335D643F0AC093FE3F2DB7FFD726AA9AD7C2FBAB6F2DD2488F9BF73676A7ED29998BE34FDA27C4BF12EEDCCB7D71656CBC0B4B693CA03FDFF00EFD61787BC4FA8586A7E75BDFCF6CF1F49126715159F842EE2BEB887ECC774526246CF069B3E9D24179E5CC22263E82BA7F7607DB7FB2D7C497F889A042DA9CFF6FBBD3A4D8F21FF00969FF3CF35EF3AC2FF00694A358F2E383EDBFBB9604411C71BFAE2BE1FFD8FFC6EDE1AF1A9B6921482DEFE3DA02BFF00AC74F5FF00C7BF3AFAE7FB5FED1756EBFF002CD3A0AE703BED325CDAC6F5A96737F72B9FD0A578AC53FE99D6C59FF7EBA00B1697525B4787EBD85666B365FE9BE6491B2FB835D3F8C2FECAFAE6792C6C534DB49CFCB6E1FCCF2FE8FD6B9BBDB59ADA38D33B3FDFE6B43329E9B67B657DF56352B3FDD568E8FA6ECB6F9F9A7DE471CE280383F889A0C37BE0BBA81951BED27CB3BC66BC0EF3F67DD213C2FABC935A24B70F227904C638AFA4750B48AE2C3636F71E67DF279AE33C57A4086C767FD34FCEB3A6675363C547ECC7A09D1AEFFD1FE736F1BA9C7FAA93DAB3BC3FFB3E69BAA69378D756A564B681E488A1C6FF00AD7B9D969B0DE6A3701E267804691ED462315AFE32F0368314711D066D4A5867B5469D2FA2449AD661F7D08070C0D69ED0CCF0EF81BF0E20F0D78D585D4AE74778FCCB95913CCD9F4CD7D91FB687C33F83DE24FD94BC3DA27C207B8D4351D33515D4B57D42EA0743F3C3B3C88C391857DE738E9B6BC26F3C167486B87B747960F23CBDFB4F15B5E17D35649A2F99C29B7C3AC6C4093EB57F589FB317B3F7CF9F26F8297FA77DA2CA0B63749623CD68E43906B9DBFF0086F79AD4D2476F6EA82D79774E09AFAA16D23D374FD4EDC5B0F3E6812449F79DC187DF4FA1AE57C37A28D1A5BB648E36925B7EAE335E7FB33A4F9FAEBE136A515A4BE625DC9E50F3785DDFCEB9493C2D77FDA29BB4E9898B9F322B7AFAE9227D5ADEEA1BA0B892D3CBF9062B3749F0D268FE1FBF8A0CC7E747F23B76A3D9967CB17F1B69CBE6149E34EDE62526976BA8789EE9ACADAD8DFDD3A7991885391E5FCFD2BE88BBF87967AA6877714D0472CCFB36B11FEAFE9555BE175A7867439AE34FF320D56DF0B1CD19F2A511B7C920C8F5A29D3A63F687CE1F14B49B9F85FF0012EF74ED46DE6673B669E5116373300C094E8A083904751CD715AE78B60D42478E282CE188FF00CB46E653F8D7DBDF1BFC35AAFC51D3B4DBBF14F9B7FAFE9BA75B5824B711C7FBBB358B6C111C01BC842BF31E76ED1DABC6FC47FB12E99AE69D6F3D942D14D747CB77493091FD056B4E9C3DA07B43CAFE0E6AD1E8FE2AB4BB5686448A4FEF57D97A05C3CF736E5C39CF96F1E0F4AF9FEC3F625BBD074A8E4B4BE91EE41FBBB462BE96F853F0E35AF194BA6D869704935E95D8E59822A2C7F7E424F03359FF00CBC03BED0439122E7F77F5AD887F73FEE7A564D969D3E8FA9496974B89E2FDD381F74BFAD6942715D006A5DE6E2748CA6CF2BF79F2FAD53D6D1EE022754EEFDEBBEF8B7A0D9F87FC67FD9D6B6AB6779631982FA0DCE76DD2FF00AC5CB93C5714D6B25DDD48D1E7CBF6AE8331F15B8FDDED661F5152CF61246BE6051B31D2AC5AC627D95A12439B193FEB9D677038CBCB6F3ED93EE7E55C5F8C6CB26DE300FF00ACEC2BD2753D33665101FDDFB571FE27D29935AB4F37E538F338ACC2A7C0745FB2EF8063F1A6BBA95FDD2584F059C1B92CEF064DD349B20558CE47EF06E67E78F90545E24F87F79E1DD5EE2CA48243F67932CDC600FF0067D7F0A8BC261ED047240B1AFF00BA48AEA44E75ABB8E4BBBA77C7EEE97B40E4381D53C3864D1E76177B5654FB89902A0D134A7B33141F7008FCC7C7735D7F8AECA3B1D32E193E684F551FC3F4AC1D3808E48A49D982CF1FEED476ACFDA07B3F7CAD368FF6892EDDF2A76797C8C56249E1979E193C851B847C915D923D8DCC8FB0B82A9B9E791B827D31EB5269D07DBC3C714B0C292FC91B4C480C3DF038A8343887B35B236FBD4BEE8FF79B463352269B06A76F215E11D3915BFA978296D6C74B171A8C2D78D70E8D02027ECE3DDBF8BA37E74DBAD263D26E3CB519957EF81D0D0674CE42E3C312436B3EC5C663F93DAA38F4678E2595E076B77B7F9CC78627F3AEE745D3C5E48F0B2C51C9D70E4E4D6F7817E01EA7F133E1E78BBC43A75EE9765A7F820A3EA16325CE2F4A3E312A03D5064671C0CD694E98543C9751D365D59E675769BCDD9F7BFD8ACEBAB792CA328C8536379B1E0F4AF423A525B49B4024274F7A93C3BF0FB54F1C6B51695A258DDEABA85E1C41696F0EF7FF0074FA2FBD2A7FC40A94FF0076735A2D87DBF4BE54277F96BA5F08E9B2E89A248BE4DC5BFDB418D6752CA1957FD6283D09E471EF5D47C45D0BC5363E28B61E2DD166F0F5D1B44B386D9EC4DAA18EDD3CB8CF206F62AA3730CEE6E6B36DF5CD417C3AFA45C319AC63BA592DB337FC7A16CE7CB18C7CFB57391FF2CFDE9D4A7FBC35A7FC33374985E49FF7ECF2CC9261C96FCAB5BC820FDC5A96FAD238B4AB79154C93C723C4D32328DE176E14AFF7B83F37B54F2C3F698772F06B411AD25D4D7B234F34D34F71745A49189DD2CCCDF7DC93FC46ABDBCE889B5A339F456C1A9ECF4E95724C6E24574319F4AB5A9C7737BA8FDA2EE3699FD36ED1FA574198DB5D66D923C244A0FA77AA97DAFC63E5042879361C9ED41D11648B29B849EB8AC8F16F87A4974AFDCC8CD26FEC99A8F6604DE24D630C0C72A6247E48615CC78D262FE23F96607CB830303A9A8F52D16F27D3502CA01F42B5CBEA1E03BCBBBFF3A458A43E667818FEB4BD90543D4B42B6FB3E8D66C3612F1E1B07A558B8B5F334EDFF003A7EF3F8457036361AC59DAA285603D77F14E379ADDB2618C8C9E99A8E403AAD4AEFECBA5DC4BF7DA2FE13D2B9CB5B8935DD6C01FBA8E083F7607F0D606B37DA99B39A1796EA112FB66B2FC31737DA05ECEE2F659FCF4C2EF8CFCB59544C0F55D12C6D53489ED0AFEF0B79D13FDE27DCD558DCCCBB137C6DFDD2302B97D2BE22DC69B70EE837129E5F2B4B1FC4992CEFBCCCDBBBFF0075BA573FB3343BFD4D2DAFE182E74D6B98E285238E45B8642FF686DF9C01CED1599736FF006B984A7AC9D78E95E6BA6F89EFE4F11A5D18A2116FF3372CE31FF7CE6BB68BC6405DEE3B367A66BA40EEAF74AD497E1459C761A1E9E96DA75DCF3CBA902BE7B83E44650A93D033A95F979F34FF0074D721E00F1BEBDF0FAEF58862BF7D3D3574FB25E47191FE9106F3F29E0FA27E55A777F1B2D8681FD9D0D84512CBFEB2629BA67F9CF4E711F41F771F745701AAFC4FB23E257F2E1BD292C99566230BF8D5999D8DE583497198FA76A5F0FF0089F55F05EA8D73A4DFDE69D7AE9E5F9B03ED9231ECD5525F1DE9EF711B206F2EA2D63C4DA7CDA9F9B1BC48BE98AC35341B3FC48D7FC59AA5B2EBBAC5FEAEF62DB613793B4AD0A7A02D5ADE26B1FF008A36ED80285674DA14727EFF00F1570BAFF8B2C34DD765F2E78DB3271820E6BAED435B5BC863D9F36C1BDCABE549FF0076AC20741E107B4F10783EF1669E38A5B78B31C7B7E691FD49FF00AE61BFE0469F041BACE371FF003CEB0F4BB7F2226C7EF3ED9CAE38DB5BFA444F169716F3D79FAD69703D08BAE376D19FF7291E7867EF9FF80D73F6EBA80FBD7911FF00B771FE35A7A7BCD3CBFBC757FC315DDEC8E6F685CFECB81C72BFF7CF3566DFC2B04B1FFAB3F953E363174C52DBDF5D1BCD8FE4FE00D1EC83DA11FF00C2230A6370073D30839A49BC0F6BE57FC7BFFE3A2B692DBCE808F31D99BEE93C6DAB6BA779D0FDE347B30F6871F2F802D36F97B21FFBE0D67DD7C2DB2B81F2C283F3AEDEF99627C63E6F5AAF3CE228A5E3FD5F4ACBD98CF3FB8F8356770482A508EB939C566B7C148E2938987FDF4DFE15E952FDD0FF00DDFBDFED52EC3E8B48D0F2D9BE064729F9188FC45636A3FB3F47E6FDC93F315ECCD37953ECDA314C95165979151ECC0F10B6FD9B646EBBE3FA30A93FE141CF6E7991D8FD2BD9A9678FE5DFDE901E0FA9FC05BC3FEACC9F81ACEB7F813771BE7CB671EE6BE85B755987229BF655CE76AEDF4A00F9EAE3E166AB11D9FBDC55197E1AEADE6653CD61EAC2BE949208E6FEF7E42ABED8B7ECDBC7D056607CE36BF0D75482F51DA1497F799E5457572F8435073B1A1C08BFD5E182EEFAD7ADDC2C50CDF77F41515DC11CB2FDC5A39101E78D1089AD638FFD63A6368EB19F71DABA52112008067CA8F1579ADA388EDD89BFFBFB79AAB71108A55FFA69D68E4343FFD900";

    // Converte a string hexadecimal para bytes
    var bytes = hexToBytes(input);

    // Retorna o widget Image usando os bytes convertidos
    return Image.memory(bytes);
  }

  // Função para converter hexadecimal em bytes
  Uint8List hexToBytes(String hex) {
    // Remove o prefixo '0x' se presente
    if (hex.startsWith('0x')) {
      hex = hex.substring(2);
    }

    // Cria uma lista de bytes
    var bytes = Uint8List((hex.length / 2).floor());

    for (var i = 0; i < bytes.length; i++) {
      var byteString = hex.substring(i * 2, i * 2 + 2);
      bytes[i] = int.parse(byteString, radix: 16);
    }

    return bytes;
  }
}
