package com.appsflyer.internal;

import java.util.Map;
/* loaded from: classes3.dex */
public class AFa1hSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    public static final Map AFInAppEventType;
    private static long afDebugLog;
    private static int afErrorLog;
    private static byte[] afErrorLogForExcManagerOnly;
    private static int afInfoLog;
    private static int afVerboseLog;
    private static int afWarnLog;
    public static final Map d;
    private static Object e;
    private static long force;
    private static Object i;
    private static byte[] unregisterClient;
    private static long v;
    private static byte[] w;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0032 -> B:14:0x003b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String $$c(short r6, short r7, int r8) {
        /*
            int r0 = com.appsflyer.internal.AFa1hSDK.$13
            int r1 = r0 + 115
            int r1 = r1 % 128
            com.appsflyer.internal.AFa1hSDK.$12 = r1
            byte[] r1 = com.appsflyer.internal.AFa1hSDK.$$a
            int r2 = r6 + 1
            int r8 = 1173 - r8
            int r7 = 119 - r7
            byte[] r2 = new byte[r2]
            r3 = 0
            if (r1 != 0) goto L26
            int r0 = r0 + 121
            int r4 = r0 % 128
            com.appsflyer.internal.AFa1hSDK.$12 = r4
            int r0 = r0 % 2
            if (r0 == 0) goto L22
            r0 = 60
            int r0 = r0 / r3
        L22:
            r0 = r8
            r4 = r1
            r1 = r3
            goto L3b
        L26:
            r0 = r3
        L27:
            byte r4 = (byte) r7
            r2[r0] = r4
            if (r0 != r6) goto L32
            java.lang.String r6 = new java.lang.String
            r6.<init>(r2, r3)
            return r6
        L32:
            int r0 = r0 + 1
            r4 = r1[r8]
            r5 = r0
            r0 = r8
            r8 = r4
            r4 = r1
            r1 = r5
        L3b:
            int r7 = r7 + r8
            int r7 = r7 + (-3)
            int r8 = r0 + 1
            r0 = r1
            r1 = r4
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1hSDK.$$c(short, short, int):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(37:894|895|889|890|18|(32:885|886|(32:876|877|878|879|880|(29:867|868|869|870|871|27|(1:(1:864)(21:865|866|(3:31|32|33)|(2:35|(4:37|38|39|40))|41|42|43|44|(1:46)(1:860)|47|(1:51)(1:859)|52|53|(1:55)(1:857)|56|(1:58)(1:856)|59|60|61|(3:66|(5:68|(46:70|71|72|73|(6:807|(9:809|810|811|812|813|814|815|816|(1:818))(2:835|836)|819|820|821|822)(1:75)|76|(14:688|689|691|692|693|694|695|696|697|698|699|(2:701|(10:703|(1:705)(1:(3:780|(1:783)|782)(3:784|(1:786)|782))|706|707|708|(4:(7:711|712|713|714|(1:716)(3:727|728|729)|717|718)(5:733|734|735|736|737)|719|720|721)|742|743|(4:745|746|747|748)(1:(4:751|752|753|754)(1:(4:756|757|758|759)(7:760|761|762|763|764|765|766)))|749)(3:787|788|789))|790|791)(1:78)|79|80|81|82|83|84|85|86|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|(31:118|119|120|121|(4:123|124|125|126)|134|135|136|137|138|139|140|141|142|143|144|145|146|147|(12:591|592|593|594|595|596|597|598|599|600|601|602)(16:149|150|151|152|153|154|155|156|157|158|159|160|161|162|163|164)|165|166|167|168|169|170|171|172|173|(50:402|403|(1:405)(1:560)|(3:407|(3:409|410|411)|416)(1:559)|417|418|419|420|421|422|423|424|425|426|(6:428|429|430|431|432|433)(1:545)|434|435|436|437|438|439|440|(3:442|443|(2:445|446)(1:447))|514|448|449|450|451|452|453|454|455|456|457|458|459|460|461|462|463|464|465|466|467|468|469|470|471|(2:473|(4:475|476|477|478)(3:481|482|483))|484)(61:175|176|177|178|179|180|181|182|183|184|185|186|187|188|189|190|191|192|193|194|195|196|197|198|199|200|201|202|203|204|205|206|207|(5:208|209|210|211|(2:213|(3:215|216|(4:218|219|220|221)(1:222))(6:374|375|(1:377)|219|220|221))(2:378|379))|223|224|225|226|227|228|229|230|231|232|233|234|235|236|237|238|239|240|241|242|(3:244|245|246)|247|248|249|250|(1:252)|253)|(13:255|256|257|258|259|260|261|(2:263|264)|265|(15:267|268|269|(1:271)(1:293)|272|273|274|275|276|277|278|279|280|281|282)(1:298)|297|131|132)(7:337|338|339|(0)(0)|297|131|132)))(1:842)|323|307|308)(5:843|844|845|846|847)|62)|852))|29|(0)|(0)|41|42|43|44|(0)(0)|47|(13:49|51|52|53|(0)(0)|56|(0)(0)|59|60|61|(4:64|66|(0)(0)|62)|853|854)|859|52|53|(0)(0)|56|(0)(0)|59|60|61|(1:62)|853|854)|25|26|27|(0)|29|(0)|(0)|41|42|43|44|(0)(0)|47|(0)|859|52|53|(0)(0)|56|(0)(0)|59|60|61|(1:62)|853|854)|22|23|(0)|25|26|27|(0)|29|(0)|(0)|41|42|43|44|(0)(0)|47|(0)|859|52|53|(0)(0)|56|(0)(0)|59|60|61|(1:62)|853|854)|20|(0)|22|23|(0)|25|26|27|(0)|29|(0)|(0)|41|42|43|44|(0)(0)|47|(0)|859|52|53|(0)(0)|56|(0)(0)|59|60|61|(1:62)|853|854) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x01bb, code lost:
        if (r6 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x18fd, code lost:
        r0 = r58.getDeclaredConstructor(java.lang.Object.class, java.lang.Boolean.TYPE);
        r0.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:653:0x1918, code lost:
        if (r64 == true) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x191a, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:655:0x191c, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x191d, code lost:
        com.appsflyer.internal.AFa1hSDK.i = r0.newInstance(r2, java.lang.Boolean.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:657:0x1930, code lost:
        r0 = (int) java.lang.System.currentTimeMillis();
        r3 = ~(((-1250256032) ^ r0) | ((-1250256032) & r0));
        r4 = 2131057976 - (~(((r3 & 226762495) | (226762495 ^ r3)) * 262));
        r7 = (r4 & (-626405422)) + ((-626405422) | r4);
        r0 = ~r0;
        r0 = -(-(((~((r0 & (-1250256032)) | ((-1250256032) ^ r0))) | 226762495) * 262));
        r2 = (r7 & r0) + (r0 | r7);
        r0 = (int) java.lang.System.currentTimeMillis();
        r7 = 1652425198 ^ (~((1195487659 & r0) | (1195487659 ^ r0)));
        r0 = ~r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:658:0x1995, code lost:
        if (r2 <= (((1010254117 - (~(((r3 & 1652425198) | r7) * 398))) - (~(((~((r0 & 1195487659) | (1195487659 ^ r0))) | 1652425198) * 398))) - 1)) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:659:0x1997, code lost:
        r5.close();
        r0 = 81 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:660:0x19a1, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x19a2, code lost:
        r25 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:662:0x19a6, code lost:
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:663:0x19a9, code lost:
        r9 = r63;
        r24 = 0;
        r25 = 3;
        r39 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0414, code lost:
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:1060:0x1ced A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x048e A[Catch: all -> 0x048f, TryCatch #57 {all -> 0x048f, blocks: (B:125:0x04aa, B:118:0x0488, B:120:0x048e, B:123:0x04a5, B:127:0x04da, B:128:0x04fd), top: B:910:0x0443 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04a5 A[Catch: all -> 0x048f, TryCatch #57 {all -> 0x048f, blocks: (B:125:0x04aa, B:118:0x0488, B:120:0x048e, B:123:0x04a5, B:127:0x04da, B:128:0x04fd), top: B:910:0x0443 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x1204 A[Catch: all -> 0x11e1, TryCatch #89 {all -> 0x11e1, blocks: (B:419:0x1118, B:455:0x11ea, B:457:0x11f0, B:458:0x11f1, B:465:0x11fe, B:467:0x1204, B:468:0x1205, B:484:0x1228), top: B:955:0x1118 }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x1205 A[Catch: all -> 0x11e1, TryCatch #89 {all -> 0x11e1, blocks: (B:419:0x1118, B:455:0x11ea, B:457:0x11f0, B:458:0x11f1, B:465:0x11fe, B:467:0x1204, B:468:0x1205, B:484:0x1228), top: B:955:0x1118 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02aa A[Catch: Exception -> 0x1d13, TRY_ENTER, TRY_LEAVE, TryCatch #112 {Exception -> 0x1d13, blocks: (B:8:0x0165, B:10:0x0178, B:50:0x02aa, B:57:0x031d, B:66:0x036b, B:67:0x03b6, B:79:0x03fc, B:83:0x0406, B:87:0x0410, B:98:0x0433, B:815:0x1bc2, B:817:0x1c26, B:820:0x1c32, B:838:0x1cd0, B:826:0x1c55, B:827:0x1c65, B:828:0x1c6c, B:839:0x1ced, B:841:0x1cf4, B:46:0x0266, B:59:0x032f, B:830:0x1c79, B:831:0x1cad, B:52:0x02e9, B:51:0x02b7, B:47:0x0288), top: B:1032:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x176e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x1ab8 A[Catch: all -> 0x1a34, TryCatch #126 {all -> 0x1a34, blocks: (B:675:0x19ea, B:732:0x1ab2, B:734:0x1ab8, B:735:0x1ab9, B:749:0x1aee, B:751:0x1af4, B:752:0x1af5, B:765:0x1b26, B:767:0x1b2c, B:768:0x1b2d, B:779:0x1b53, B:781:0x1b59, B:782:0x1b5a, B:677:0x19fc, B:678:0x1a2b, B:283:0x0a79, B:565:0x155f, B:528:0x13de, B:526:0x13a9, B:290:0x0ae7), top: B:1008:0x0a79 }] */
    /* JADX WARN: Removed duplicated region for block: B:735:0x1ab9 A[Catch: all -> 0x1a34, TryCatch #126 {all -> 0x1a34, blocks: (B:675:0x19ea, B:732:0x1ab2, B:734:0x1ab8, B:735:0x1ab9, B:749:0x1aee, B:751:0x1af4, B:752:0x1af5, B:765:0x1b26, B:767:0x1b2c, B:768:0x1b2d, B:779:0x1b53, B:781:0x1b59, B:782:0x1b5a, B:677:0x19fc, B:678:0x1a2b, B:283:0x0a79, B:565:0x155f, B:528:0x13de, B:526:0x13a9, B:290:0x0ae7), top: B:1008:0x0a79 }] */
    /* JADX WARN: Removed duplicated region for block: B:751:0x1af4 A[Catch: all -> 0x1a34, TryCatch #126 {all -> 0x1a34, blocks: (B:675:0x19ea, B:732:0x1ab2, B:734:0x1ab8, B:735:0x1ab9, B:749:0x1aee, B:751:0x1af4, B:752:0x1af5, B:765:0x1b26, B:767:0x1b2c, B:768:0x1b2d, B:779:0x1b53, B:781:0x1b59, B:782:0x1b5a, B:677:0x19fc, B:678:0x1a2b, B:283:0x0a79, B:565:0x155f, B:528:0x13de, B:526:0x13a9, B:290:0x0ae7), top: B:1008:0x0a79 }] */
    /* JADX WARN: Removed duplicated region for block: B:752:0x1af5 A[Catch: all -> 0x1a34, TryCatch #126 {all -> 0x1a34, blocks: (B:675:0x19ea, B:732:0x1ab2, B:734:0x1ab8, B:735:0x1ab9, B:749:0x1aee, B:751:0x1af4, B:752:0x1af5, B:765:0x1b26, B:767:0x1b2c, B:768:0x1b2d, B:779:0x1b53, B:781:0x1b59, B:782:0x1b5a, B:677:0x19fc, B:678:0x1a2b, B:283:0x0a79, B:565:0x155f, B:528:0x13de, B:526:0x13a9, B:290:0x0ae7), top: B:1008:0x0a79 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:817:0x1c26 A[Catch: Exception -> 0x1d13, TRY_LEAVE, TryCatch #112 {Exception -> 0x1d13, blocks: (B:8:0x0165, B:10:0x0178, B:50:0x02aa, B:57:0x031d, B:66:0x036b, B:67:0x03b6, B:79:0x03fc, B:83:0x0406, B:87:0x0410, B:98:0x0433, B:815:0x1bc2, B:817:0x1c26, B:820:0x1c32, B:838:0x1cd0, B:826:0x1c55, B:827:0x1c65, B:828:0x1c6c, B:839:0x1ced, B:841:0x1cf4, B:46:0x0266, B:59:0x032f, B:830:0x1c79, B:831:0x1cad, B:52:0x02e9, B:51:0x02b7, B:47:0x0288), top: B:1032:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:826:0x1c55 A[Catch: Exception -> 0x1d13, TRY_ENTER, TryCatch #112 {Exception -> 0x1d13, blocks: (B:8:0x0165, B:10:0x0178, B:50:0x02aa, B:57:0x031d, B:66:0x036b, B:67:0x03b6, B:79:0x03fc, B:83:0x0406, B:87:0x0410, B:98:0x0433, B:815:0x1bc2, B:817:0x1c26, B:820:0x1c32, B:838:0x1cd0, B:826:0x1c55, B:827:0x1c65, B:828:0x1c6c, B:839:0x1ced, B:841:0x1cf4, B:46:0x0266, B:59:0x032f, B:830:0x1c79, B:831:0x1cad, B:52:0x02e9, B:51:0x02b7, B:47:0x0288), top: B:1032:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:828:0x1c6c A[Catch: Exception -> 0x1d13, TRY_LEAVE, TryCatch #112 {Exception -> 0x1d13, blocks: (B:8:0x0165, B:10:0x0178, B:50:0x02aa, B:57:0x031d, B:66:0x036b, B:67:0x03b6, B:79:0x03fc, B:83:0x0406, B:87:0x0410, B:98:0x0433, B:815:0x1bc2, B:817:0x1c26, B:820:0x1c32, B:838:0x1cd0, B:826:0x1c55, B:827:0x1c65, B:828:0x1c6c, B:839:0x1ced, B:841:0x1cf4, B:46:0x0266, B:59:0x032f, B:830:0x1c79, B:831:0x1cad, B:52:0x02e9, B:51:0x02b7, B:47:0x0288), top: B:1032:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:945:0x18fd A[EDGE_INSN: B:945:0x18fd->B:652:0x18fd ?: BREAK  , EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:962:0x0213 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:985:0x0238 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0433 A[Catch: Exception -> 0x1d13, TRY_ENTER, TRY_LEAVE, TryCatch #112 {Exception -> 0x1d13, blocks: (B:8:0x0165, B:10:0x0178, B:50:0x02aa, B:57:0x031d, B:66:0x036b, B:67:0x03b6, B:79:0x03fc, B:83:0x0406, B:87:0x0410, B:98:0x0433, B:815:0x1bc2, B:817:0x1c26, B:820:0x1c32, B:838:0x1cd0, B:826:0x1c55, B:827:0x1c65, B:828:0x1c6c, B:839:0x1ced, B:841:0x1cf4, B:46:0x0266, B:59:0x032f, B:830:0x1c79, B:831:0x1cad, B:52:0x02e9, B:51:0x02b7, B:47:0x0288), top: B:1032:0x0165 }] */
    /* JADX WARN: Type inference failed for: r4v308, types: [int, short] */
    static {
        /*
            Method dump skipped, instructions count: 7484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1hSDK.<clinit>():void");
    }

    private AFa1hSDK() {
    }

    private static void AFAdRevenueData(int i2, int i3) {
        $11 = ($10 + 77) % 128;
    }

    public static int getMonetizationNetwork(int i2) {
        int i3 = $10 + 85;
        int i4 = i3 % 128;
        $11 = i4;
        if (i3 % 2 != 0) {
            Object obj = i;
            $10 = ((i4 ^ 63) + ((i4 & 63) << 1)) % 128;
            try {
                Object[] objArr = {Integer.valueOf(i2)};
                byte[] bArr = $$a;
                return ((Integer) Class.forName($$c(bArr[511], bArr[107], (short) 583), true, (ClassLoader) e).getMethod($$c(bArr[72], bArr[4], bArr[7]), Integer.TYPE).invoke(obj, objArr)).intValue();
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        throw null;
    }

    public static int getRevenue(Object obj) {
        int i2 = $11;
        Object obj2 = i;
        $10 = (((i2 | 39) << 1) - (i2 ^ 39)) % 128;
        try {
            Object[] objArr = {obj};
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c(bArr[511], bArr[107], (short) 583), true, (ClassLoader) e).getMethod($$c(bArr[12], bArr[85], (short) 551), Object.class).invoke(obj2, objArr)).intValue();
            int i3 = $10 + 103;
            $11 = i3 % 128;
            if (i3 % 2 != 0) {
                return intValue;
            }
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static void init$0() {
        int i2 = $11;
        $10 = (((i2 | 113) << 1) - (i2 ^ 113)) % 128;
        byte[] bArr = new byte[1194];
        System.arraycopy("\u000f×sN\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾9\u0011ò\u0019í\u0004\rüÌ\u00191ò\u0019í\u0004\rüö\u0011ÿ\u0000\ròí$ô\u0005\t\u000e\b\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ3õô\n\u000b\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u00063Ø\u0004\u0001\u00042Î\u00073Ô\u00030Ð\u00056ÿÏ\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b(ÉDäô\n\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b\u001eÓ3õô\n\u000b\u0003\bþ&ñ\u0016\u0014ò\f\nóâ \u0016ðû\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ:îô\nÜL5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ9\u0003\u0000\u0004Ó\u0006\u0004\u0003\u0005ý\u0003\u0007þ\u00060\u0002\u0004Îî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸\u0001\u0012Ü\u001b\u0002\bû\u0016ø\t\u0002ã\u001a\u0012\u0006û\u0006ü\u0001\u0012Ò5\u0000\u0003ö\fø\u0019Ó-ÿÈ\u0001\u0002\t\u000f/ø\u0004".getBytes("ISO-8859-1"), 0, bArr, 0, 1194);
        $$a = bArr;
        $$b = 246;
        int i3 = $10;
        int i4 = (i3 & 45) + (i3 | 45);
        $11 = i4 % 128;
        if (i4 % 2 == 0) {
            int i5 = 21 / 0;
        }
    }

    public static Object getRevenue(int i2, char c, int i3) {
        int i4 = $10;
        int i5 = (i4 & 63) + (i4 | 63);
        int i6 = i5 % 128;
        $11 = i6;
        if (i5 % 2 != 0) {
            Object obj = i;
            $10 = (i6 + 43) % 128;
            try {
                Object[] objArr = {Integer.valueOf(i2), Character.valueOf(c), Integer.valueOf(i3)};
                byte[] bArr = $$a;
                Class<?> cls = Class.forName($$c(bArr[511], bArr[107], (short) 583), true, (ClassLoader) e);
                byte b = bArr[14];
                String $$c = $$c(b, bArr[4], b);
                Class<?> cls2 = Integer.TYPE;
                Object invoke = cls.getMethod($$c, cls2, Character.TYPE, cls2).invoke(obj, objArr);
                $11 = ($10 + 27) % 128;
                return invoke;
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        throw null;
    }
}
