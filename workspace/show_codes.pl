use strict;
use warnings;

use Encode;
use Encode::JP::Emoji;
use Encode::JP::Emoji::FB_EMOJI_TEXT;

my $emojis = "😄😃😀😊☺😉😍😘😚😗😙😜😝😛😳😁😔😌😒😞😣😢😂😭😪😥😰😅😓😩😫😨😱😠😡😤😖😆😋😷😎😴😵😲😟😦😧😈👿😮😬😐😕😯😶😇😏😑👲👳👮👷💂👶👦👧👨👩👴👵👱👼👸😺😸😻😽😼🙀😿😹😾👹👺🙈🙉🙊💀👽💩🔥✨🌟💫💥💢💦💧💤💨👂👀👃👅👄👍👎👌👊✊✌👋✋👐👆👇👉👈🙌🙏☝👏💪🚶🏃💃👫👪👬👭💏💑👯🙆🙅💁🙋💆💇💅👰🙎🙍🙇🎩👑👒👟👞👡👠👢👕👔👚👗🎽👖👘👙💼👜👝👛👓🎀🌂💄💛💙💜💚❤💔💗💓💕💖💞💘💌💋💍💎👤👥💬👣💭🐶🐺🐱🐱🐹🐰🐸🐯🐨🐻🐷🐽🐮🐗🐵🐒🐴🐑🐘🐼🐧🐦🐤🐥🐣🐔🐍🐢🐛🐝🐜🐞🐌🐙🐚🐠🐟🐬🐳🐋🐄🐏🐀🐃🐅🐇🐉🐎🐐🐓🐕🐖🐁🐂🐲🐡🐊🐫🐪🐆🐈🐩🐾💐🌸🌷🍀🌹🌻🌺🍁🍃🍂🌿🌾🍄🌵🌴🌲🌳🌰🌱🌼🌐🌞🌝🌚🌑🌒🌓🌔🌕🌖🌗🌘🌜🌛🌙🌍🌎🌏🌋🌌🌠⭐☀⛅☁⚡☔❄⛄🌀🌁🌈🌊🎍💝🎎🎒🎓🎏🎆🎇🎐🎑🎃👻🎅🎄🎁🎋🎉🎊🎈🎌🔮🎥📷📹📼💿📀💽💾💻📱☎📞📟📠📡📺📻🔊🔉🔈🔇🔔🔕📢📣⏳⌛⏰⌚🔓🔒🔏🔐🔑🔎💡🔦🔆🔅🔌🔋🔍🛁🛀🚿🚽🔧🔩🔨🚪🚬💣🔫🔪💊💉💰💴💵💷💶💳💸📲📧📥📤✉📩📨📯📫📪📬📭📮📦📝📄📃📑📊📈📉📜📋📅📆📇📁📂✂📌📎✒✏📏📐📕📗📘📙📓📔📒📚📖🔖📛🔬🔭📰🎨🎬🎤🎧🎼🎵🎶🎹🎻🎺🎷🎸👾🎮🃏🎴🀄🎲🎯🏈🏀⚽⚾🎾🎱🏉🎳⛳🚵🚴🏁🏇🏆🎿🏂🏊🏄🎣☕🍵🍶🍼🍺🍻🍸🍹🍷🍴🍕🍔🍟🍗🍖🍝🍛🍤🍱🍣🍥🍙🍘🍚🍜🍲🍢🍡🍳🍞🍩🍮🍦🍨🍧🎂🍰🍪🍫🍬🍭🍯🍎🍏🍊🍋🍒🍇🍉🍓🍑🍈🍌🍐🍍🍠🍆🍅🌽🏠🏡🏫🏢🏣🏥🏦🏪🏩🏨💒⛪🏬🏤🌇🌆🏯🏰⛺🏭🗼🗾🗻🌄🌅🌃🗽🌉🎠🎡⛲🎢🚢⛵🚤🚣⚓🚀✈💺🚁🚂🚊🚉🚎🚆🚄🚅🚈🚇🚝🚋🚃🚎🚌🚍🚙🚘🚗🚕🚖🚛🚚🚨🚓🚔🚒🚑🚐🚲🚡🚟🚠🚜💈🚏🎫🚦🚥⚠🚧🔰⛽🏮🎰♨🗿🎪🎭📍🚩🇯🇵🇰🇷🇩🇪🇨🇳🇺🇸🇫🇷🇪🇸🇮🇹🇷🇺🇬🇧1⃣2⃣3⃣4⃣5⃣6⃣7⃣8⃣9⃣0⃣🔟🔢#⃣🔣⬆⬇⬅➡🔠🔡🔤↗↖↘↙↔↕🔄◀▶🔼🔽↩↪ℹ⏪⏩⏫⏬⤵⤴🆗🔀🔁🔂🆕🆙🆒🆓🆖📶🎦🈁🈯🈳🈵🈴🈲🉐🈹🈺🈶🈚🚻🚹🚺🚼🚾🚰🚮🅿♿🚭🈷🈸🈂Ⓜ🛂🛄🛅🛃🉑㊙㊗🆑🆘🆔🚫🔞📵🚯🚱🚳🚷🚸⛔✳❇❎✅✴💟🆚📳📴🅰🅱🆎🅾💠➿♻♈♉♊♋♌♍♎♏♐♑♒♓⛎🔯🏧💹💲💱©®™❌‼⁉❗❓❕❔⭕🔝🔚🔙🔛🔜🔃🕛🕧🕐🕜🕑🕝🕒🕞🕓🕟🕔🕠🕕🕡🕖🕢🕗🕣🕘🕤🕙🕥🕚🕦✖➕➖➗♠♥♣♦💮💯✔☑🔘🔗➰〰〽🔱◼◻◾◽▪▫🔺🔲🔳⚫⚪🔴🔵🔻⬜⬛🔶🔷🔸🔹";



sub String2Bytes {
    my $str = shift || return('');
    my $fmt = shift || '%02X';

    $str =~ s/(.)/sprintf($fmt, ord($1))/eg;
    $str =~ s/\n/0A/g;

    return($str);
}
my $strings = Encode::decode('utf8', $emojis);
my @chars = split(//, $strings);
my $id = 1;
foreach my $c (@chars){
    my $codepoint = String2Bytes($c);
    my $dec = hex($codepoint);
    #print "wget http://www.charbase.com/images/glyph/".$dec;

    my $name = Encode::encode('x-utf8-e4u-none', $c, FB_EMOJI_TEXT());
    my $utf8 = Encode::encode('utf8', $c);
    my $utf16 = Encode::encode('utf16BE', $c);
    $c = Encode::encode('x-utf8-e4u-unicode', $c);
    my $google_emoji = Encode::decode('x-utf8-e4u-unicode', $c);
    my $docomo = Encode::encode('x-utf8-e4u-docomo', $google_emoji) || '';
    my $sb = Encode::encode('x-utf8-e4u-softbank3g', $google_emoji) || '';
    my $kddi = Encode::encode('x-utf8-e4u-kddiweb', $google_emoji) || '';
    $docomo = '' if ($utf8 eq $docomo);
    $sb = '' if ($utf8 eq $sb);
    $kddi = '' if ($utf8 eq $kddi);


    print_tr($id, $dec, $name, $codepoint, $utf8, $utf16, $docomo, $sb, $kddi);
    #print_json($name, $codepoint, $utf8, $utf16, $docomo, $sb, $kddi);
    print "\n";

    $id += 1;
}

sub print_tr {
    my $id = shift;
    my $dec = shift;
    my $name = shift;
    my $codepoint = shift;
    my $utf8 = shift;
    my $utf16 = shift;
    my $docomo = shift;
    my $sb = shift;
    my $kddi = shift;


    print '<tr>';
    print '<td>'.$id.'</td>';
    print '<td><img src="img/'.$dec.'.png" /></td>';
    print '<td>'.$name.'</td>';
    print '<td><a href="http://www.fileformat.info/info/unicode/char/'.$codepoint.'/index.htm" target="_blank">'.$codepoint.'</a></td>';
    print '<td>'.String2Bytes($utf8).'</td>';
    print '<td>'.String2Bytes($utf16).'</td>';
    print '<td>'.String2Bytes($docomo).'</td>';
    print '<td>'.String2Bytes($sb).'</td>';
    print '<td>'.String2Bytes($kddi).'</td>';
    print '</tr>';
}

sub print_json {
    my $name = shift;
    my $codepoint = shift;
    my $utf8 = shift;
    my $utf16 = shift;
    my $docomo = shift;
    my $sb = shift;
    my $kddi = shift;

    print '{"name":"'.$name.'",';
    print '"unicode":"'.$codepoint.'",';
    print '"utf8":"'.String2Bytes($utf8).'",';
    print '"utf16":"'.String2Bytes($utf16).'",';
    print '"docomo-utf8":"'.String2Bytes($docomo).'",';
    print '"softbank-utf8":"'.String2Bytes($sb).'",';
    print '"kddi-utf8":"'.String2Bytes($kddi).'",';
    print '},';
}
