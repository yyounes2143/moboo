package com.appsflyer.internal;

import com.tencent.rtmp.TXLiveConstants;
import java.util.Map;
/* loaded from: classes3.dex */
public class AFi1fSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    private static long afDebugLog;
    private static long afErrorLog;
    private static long afInfoLog;
    private static int afRDLog;
    private static byte[] afVerboseLog;
    private static int afWarnLog;
    private static Object d;
    private static byte[] e;
    private static int force;
    private static byte[] i;
    public static final Map registerClient;
    private static Object unregisterClient;
    private static int v;
    public static final Map w;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r0 == null) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x005e -> B:12:0x0035). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String $$c(int r5, int r6, short r7) {
        /*
            int r0 = com.appsflyer.internal.AFi1fSDK.$12
            int r0 = r0 + 35
            int r1 = r0 % 128
            com.appsflyer.internal.AFi1fSDK.$13 = r1
            int r0 = r0 % 2
            r1 = -1
            if (r0 != 0) goto L1c
            int r5 = r5 * 87
            byte[] r0 = com.appsflyer.internal.AFi1fSDK.$$a
            int r6 = r6 + 6
            int r7 = r7 + 61
            byte[] r2 = new byte[r5]
            int r5 = r5 + 41
            if (r0 != 0) goto L35
            goto L2d
        L1c:
            int r0 = 49 - r5
            byte[] r2 = com.appsflyer.internal.AFi1fSDK.$$a
            int r6 = r6 + 33
            int r7 = r7 + 4
            byte[] r0 = new byte[r0]
            int r5 = 48 - r5
            r4 = r2
            if (r2 != 0) goto L33
            r2 = r0
            r0 = r4
        L2d:
            r6 = r5
            r3 = r2
            r2 = r1
            r1 = r0
            r0 = r7
            goto L5e
        L33:
            r2 = r0
            r0 = r4
        L35:
            int r1 = r1 + 1
            byte r3 = (byte) r6
            r2[r1] = r3
            if (r1 != r5) goto L51
            java.lang.String r5 = new java.lang.String
            r6 = 0
            r5.<init>(r2, r6)
            int r6 = com.appsflyer.internal.AFi1fSDK.$13
            int r6 = r6 + 115
            int r7 = r6 % 128
            com.appsflyer.internal.AFi1fSDK.$12 = r7
            int r6 = r6 % 2
            if (r6 != 0) goto L4f
            return r5
        L4f:
            r5 = 0
            throw r5
        L51:
            int r7 = r7 + 1
            r3 = r0[r7]
            r4 = r6
            r6 = r5
            r5 = r4
            r4 = r0
            r0 = r7
            r7 = r3
            r3 = r2
            r2 = r1
            r1 = r4
        L5e:
            int r7 = -r7
            int r5 = r5 + r7
            r7 = r6
            r6 = r5
            r5 = r7
            r7 = r0
            r0 = r1
            r1 = r2
            r2 = r3
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1fSDK.$$c(int, int, short):java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(44:808|809|(5:798|799|800|801|802)|22|(42:789|790|791|792|793|(0)|27|28|(0)|30|31|32|(0)(0)|35|(0)|(0)|45|46|47|48|49|50|51|52|53|54|55|(0)(0)|58|(0)|758|63|64|(0)(0)|67|(0)(0)|70|71|(0)|753|751|752)|24|25|(0)|27|28|(0)|30|31|32|(0)(0)|35|(0)|(0)|45|46|47|48|49|50|51|52|53|54|55|(0)(0)|58|(0)|758|63|64|(0)(0)|67|(0)(0)|70|71|(0)|753|751|752) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x046d, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0470, code lost:
        r41 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0473, code lost:
        r41 = 2;
        r40 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0541, code lost:
        if (r51 == null) goto L684;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0559, code lost:
        if (r51 == null) goto L684;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x055b, code lost:
        r2 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x055e, code lost:
        if (r5 != null) goto L681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0560, code lost:
        r2 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0563, code lost:
        if (r14 != null) goto L683;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0565, code lost:
        java.lang.System.currentTimeMillis();
        java.lang.System.currentTimeMillis();
        r2 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x056e, code lost:
        r2 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0214, code lost:
        if (r6 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x18e1, code lost:
        r10 = r27;
        r9 = r65;
        r39 = 357;
        r0 = r62.getDeclaredConstructor(java.lang.Object.class, java.lang.Boolean.TYPE);
        r0.setAccessible(true);
        com.appsflyer.internal.AFi1fSDK.d = r0.newInstance(r1, java.lang.Boolean.valueOf(!r56));
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x190f, code lost:
        r9.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x1912, code lost:
        com.appsflyer.internal.AFi1fSDK.$11 = (com.appsflyer.internal.AFi1fSDK.$10 + 97) % 128;
        r2 = r63;
        r5 = 2;
        r29 = -1;
        r48 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x1927, code lost:
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:1004:0x1cdc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0ca5 A[Catch: all -> 0x0ca6, TryCatch #56 {all -> 0x0ca6, blocks: (B:344:0x0e4e, B:312:0x0c9f, B:314:0x0ca5, B:317:0x0cb2), top: B:841:0x0e4e }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0cb2 A[Catch: all -> 0x0ca6, TRY_LEAVE, TryCatch #56 {all -> 0x0ca6, blocks: (B:344:0x0e4e, B:312:0x0c9f, B:314:0x0ca5, B:317:0x0cb2), top: B:841:0x0e4e }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x1687  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0310 A[Catch: Exception -> 0x1dd2, TRY_ENTER, TRY_LEAVE, TryCatch #93 {Exception -> 0x1dd2, blocks: (B:8:0x01ba, B:10:0x01d1, B:59:0x0310, B:65:0x0379, B:73:0x03c5, B:75:0x040c, B:77:0x0411, B:79:0x041c, B:91:0x0452, B:95:0x0462, B:99:0x046a, B:108:0x0481, B:762:0x1c59, B:766:0x1cc7, B:771:0x1cde, B:773:0x1ce2, B:776:0x1cf3, B:769:0x1ccf, B:55:0x02ce, B:778:0x1d33, B:779:0x1d5d, B:62:0x0359, B:66:0x038d, B:60:0x0320, B:56:0x02f0), top: B:980:0x01ba }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:678:0x1a80 A[Catch: all -> 0x1897, TryCatch #47 {all -> 0x1897, blocks: (B:561:0x1878, B:568:0x18a0, B:570:0x18a6, B:571:0x18a7, B:596:0x18e1, B:604:0x1931, B:606:0x1937, B:609:0x193a, B:610:0x193b, B:661:0x1a46, B:663:0x1a4c, B:664:0x1a4d, B:676:0x1a7a, B:678:0x1a80, B:679:0x1a81, B:696:0x1acb, B:698:0x1ad1, B:699:0x1ad2, B:266:0x0a60, B:612:0x1970, B:613:0x199a, B:496:0x145e, B:556:0x17a1, B:555:0x171f, B:554:0x16f1, B:262:0x09ff, B:461:0x1313, B:458:0x12d6, B:261:0x09ce), top: B:828:0x1878 }] */
    /* JADX WARN: Removed duplicated region for block: B:679:0x1a81 A[Catch: all -> 0x1897, TryCatch #47 {all -> 0x1897, blocks: (B:561:0x1878, B:568:0x18a0, B:570:0x18a6, B:571:0x18a7, B:596:0x18e1, B:604:0x1931, B:606:0x1937, B:609:0x193a, B:610:0x193b, B:661:0x1a46, B:663:0x1a4c, B:664:0x1a4d, B:676:0x1a7a, B:678:0x1a80, B:679:0x1a81, B:696:0x1acb, B:698:0x1ad1, B:699:0x1ad2, B:266:0x0a60, B:612:0x1970, B:613:0x199a, B:496:0x145e, B:556:0x17a1, B:555:0x171f, B:554:0x16f1, B:262:0x09ff, B:461:0x1313, B:458:0x12d6, B:261:0x09ce), top: B:828:0x1878 }] */
    /* JADX WARN: Removed duplicated region for block: B:748:0x1bd6 A[Catch: all -> 0x1927, TryCatch #122 {all -> 0x1927, blocks: (B:716:0x1b20, B:597:0x190f, B:751:0x1bdf, B:746:0x1bd0, B:748:0x1bd6, B:749:0x1bd7, B:753:0x1c11, B:754:0x1c34, B:254:0x095e, B:253:0x0940, B:712:0x1b18), top: B:933:0x190f }] */
    /* JADX WARN: Removed duplicated region for block: B:749:0x1bd7 A[Catch: all -> 0x1927, TryCatch #122 {all -> 0x1927, blocks: (B:716:0x1b20, B:597:0x190f, B:751:0x1bdf, B:746:0x1bd0, B:748:0x1bd6, B:749:0x1bd7, B:753:0x1c11, B:754:0x1c34, B:254:0x095e, B:253:0x0940, B:712:0x1b18), top: B:933:0x190f }] */
    /* JADX WARN: Removed duplicated region for block: B:765:0x1cbb  */
    /* JADX WARN: Removed duplicated region for block: B:773:0x1ce2 A[Catch: Exception -> 0x1dd2, TRY_LEAVE, TryCatch #93 {Exception -> 0x1dd2, blocks: (B:8:0x01ba, B:10:0x01d1, B:59:0x0310, B:65:0x0379, B:73:0x03c5, B:75:0x040c, B:77:0x0411, B:79:0x041c, B:91:0x0452, B:95:0x0462, B:99:0x046a, B:108:0x0481, B:762:0x1c59, B:766:0x1cc7, B:771:0x1cde, B:773:0x1ce2, B:776:0x1cf3, B:769:0x1ccf, B:55:0x02ce, B:778:0x1d33, B:779:0x1d5d, B:62:0x0359, B:66:0x038d, B:60:0x0320, B:56:0x02f0), top: B:980:0x01ba }] */
    /* JADX WARN: Removed duplicated region for block: B:785:0x1d67  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:847:0x0252 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:872:0x0277 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:990:0x029c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:996:0x1ced A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:999:0x18e1 A[EDGE_INSN: B:999:0x18e1->B:596:0x18e1 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v25, types: [int, short] */
    static {
        /*
            Method dump skipped, instructions count: 7674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1fSDK.<clinit>():void");
    }

    private AFi1fSDK() {
    }

    public static int getCurrencyIso4217Code(int i2) {
        Object obj;
        int i3 = $11;
        int i4 = i3 + 97;
        $10 = i4 % 128;
        if (i4 % 2 != 0) {
            obj = d;
            int i5 = 11 / 0;
        } else {
            obj = d;
        }
        $10 = ((i3 ^ 85) + ((i3 & 85) << 1)) % 128;
        try {
            Object[] objArr = {Integer.valueOf(i2)};
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient).getMethod($$c(bArr[718], bArr[427], (short) 1167), Integer.TYPE).invoke(obj, objArr)).intValue();
            $10 = ($11 + 41) % 128;
            return intValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object getMediationNetwork(char c, int i2, int i3) {
        int i4 = $10;
        Object obj = d;
        int i5 = ((i4 & 105) + (i4 | 105)) % 128;
        $11 = i5;
        $10 = ((i5 & 79) + (i5 | 79)) % 128;
        try {
            Object[] objArr = {Character.valueOf(c), Integer.valueOf(i2), Integer.valueOf(i3)};
            byte[] bArr = $$a;
            Class<?> cls = Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient);
            String $$c = $$c(bArr[506], bArr[427], (short) 1128);
            Class<?> cls2 = Integer.TYPE;
            return cls.getMethod($$c, Character.TYPE, cls2, cls2).invoke(obj, objArr);
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    private static void getRevenue(int i2, int i3) {
        int i4 = $10 + 49;
        $11 = i4 % 128;
        if (i4 % 2 != 0) {
            return;
        }
        throw null;
    }

    public static void init$0() {
        int i2;
        int i3 = $11;
        int i4 = (i3 & 11) + (i3 | 11);
        $10 = i4 % 128;
        if (i4 % 2 != 0) {
            byte[] bArr = new byte[1181];
            System.arraycopy(")\u009f5»ó\nò\u0003\u0006\u00056Çõ\u0011ñ\bÿ\u0006ðEëÔ\u0003ýýö÷\u0010ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ï\u000f\u000fùø\u0000ô\u0002?Íñ\u0000ý\rúó\u0014óó\nò\u0003\u0006\u00056Íñ\u0000BíÞï\u000bó\rõû%ìö\r\u0004ýî\u0003\u0000\r÷ú3Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001ó\nò\u0003\u0006\u00056Íñ\u0000BíÑ\u0000)Ûý\r\u0001õù\u0002ñ+Û\u0005õ\u000b\bõ+Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001\u0002ñ.Ýý\u0007ò/Û÷\u0002ñ1Ô\u000bÿ\"âþû\u0003!Û÷\u0002ñ1âþû\u0003!Û÷Ë\u0003í\u00132Ë\u0003í\u00132\të\u00153ÅúAèÝý\u0007\të\u00153ÅúAº\u0007ý\fû÷\të\u00153Â\u000bó\u00079ÛÚ\u0006ÿ\u000fø\u0002ñ$Þ\u0003ÿ\u000bóþûô\u000bÿ\u0006ü\u0002þû\u0003ó\nò\u0003\u0006\u00056¿üEìÍ\fý\b@Î\u0011óÿ\nú\u0001\u000fùì\u0016ûú\u0002ó\u0017å\tõ\u000f\u0015ú\u0016ø\të\u00153ÅúAåú\nÍ\u0015þõü\u000bú\u0001î\u0003\u0000\r÷ú ëü\b\u0018äý\u0000\u0003ö\të\u00153ÅúAèÝý\u0007\u0016Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô÷ýü\u000e\u0015ý\u0013øÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=ýú\u0004\u0000ÿ\u0003\u0002ùÖ+Ð1Ôû-\u0002Ô6\u0002ñ\"íò\u0004ú\u0003\u000fþ\të\u00153À\tñFÙ\u0003\u0006\u0002ñ$ïí\f\të\u00153ÅúAìÍ\u000f\u0000\u0001ó\r\u0001\u001bÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAåÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAêãí\u0013\u0018Ûþû\u0001!ß\u0002\r\u0004ô\r\u0004ý\u001eÑ\t\u0000ó\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è0Ûþû\u0001!ß\u0002\r\u0004ôô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÛ:¿\u001f\u000fùô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÝ8Ï\u000f\u000fùø\u0000û\u0005Ý\u0012íï\u0011÷ù\u0010!ãí\u0013\b\u0002ù\r\u0004ý\u000eñ\"í\u0004ý\u0015á\u0002ó\u0015ü\u0014ø\u0005\tõ\u000f\u0002ñ.\u0002\të\u00153ÅúAèÝý\u0007!ßò\u0010ñ\tùü\u0005ýú\u000b\u000b\u0003õö\rþ=»ú\u0006ÿ\u000fø?êßí2Ýý\u0007ý\u000eý ßí\u0002ñ3ßï\u0004\u0003÷\u0001\u000f\u0015ïí\fÿù\u0007ñ\u000f\u0002ñ1×\u000bî\u0000'Ý\u000eýÿó\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù'Ûþû\u0001!ß\u0002\r\u0004ô\u0002ñ&éí\u0004/×ú\u0002ù\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù+×ú\u0002ù\u0002ñ!êï\u0015\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è*Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô\u0005-É\u0005\u000f$Ï\u0000\u0011è\të\u00153ÅúAë×ýü\u000e\u0004ÿö\u0007\u0003õö\rþ=»ú\u0006ÿ\u000fø?åÛ!èøþýù5ßí5×\u000bî\u0000'Ý\u000eýÿó\të\u00153À\u0005úAìÉ\u0005\u000f#Í\u000f\u0000\u0001ó\të\u00153Â\u000bó\u00079ë×\u000bî\u0000'Ý\u000eýÿó\u0005\u0011ñ\u0003õö\rþ=»ú\u0006ÿ\u000fø?ìáî\u000e!ßí5×\u000bî\u0000'Ý\u000eýÿó\u000fí\f\u001cãöÿ\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù5Û÷\r\u0002ï\u0005ý\t\u0004ò\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù)ïí\f#Ù\u0007ø\b÷ú\u0001\u0002ñ1Ô\u0002ý\u0001\u0001\t÷ú Û\t\u000b\u0015ø\u0018øý\u000eý!×\u000bî\u0000ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ë\u0013\u000fù'\u00adÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=Ë3Ï\u0000/ú\u0005Ò\u0001)ÿ\bþûÒ4Î7\u0015ù\u0017øºÿOº\u0005õ\u0000\n\u0001þøøS´\u0007ÿòK\u0002ñ'è\u0001û\bí\u000bú\u0001 éñý\bý\u0007\u0002ñ1Î\u0003\u0000\r÷\u000bê0Ö\u0004;\u0002\u0001úôÔ\u000bÿ\u0002ñ\"íï\u0011÷ù\u0010".getBytes("ISO-8859-1"), 0, bArr, 0, 1181);
            $$a = bArr;
            i2 = 69;
        } else {
            byte[] bArr2 = new byte[1181];
            System.arraycopy(")\u009f5»ó\nò\u0003\u0006\u00056Çõ\u0011ñ\bÿ\u0006ðEëÔ\u0003ýýö÷\u0010ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ï\u000f\u000fùø\u0000ô\u0002?Íñ\u0000ý\rúó\u0014óó\nò\u0003\u0006\u00056Íñ\u0000BíÞï\u000bó\rõû%ìö\r\u0004ýî\u0003\u0000\r÷ú3Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001ó\nò\u0003\u0006\u00056Íñ\u0000BíÑ\u0000)Ûý\r\u0001õù\u0002ñ+Û\u0005õ\u000b\bõ+Ñ\u0000\u0004\u0003\u0006\u0002í\u000bú\u0001\u0002ñ.Ýý\u0007ò/Û÷\u0002ñ1Ô\u000bÿ\"âþû\u0003!Û÷\u0002ñ1âþû\u0003!Û÷Ë\u0003í\u00132Ë\u0003í\u00132\të\u00153ÅúAèÝý\u0007\të\u00153ÅúAº\u0007ý\fû÷\të\u00153Â\u000bó\u00079ÛÚ\u0006ÿ\u000fø\u0002ñ$Þ\u0003ÿ\u000bóþûô\u000bÿ\u0006ü\u0002þû\u0003ó\nò\u0003\u0006\u00056¿üEìÍ\fý\b@Î\u0011óÿ\nú\u0001\u000fùì\u0016ûú\u0002ó\u0017å\tõ\u000f\u0015ú\u0016ø\të\u00153ÅúAåú\nÍ\u0015þõü\u000bú\u0001î\u0003\u0000\r÷ú ëü\b\u0018äý\u0000\u0003ö\të\u00153ÅúAèÝý\u0007\u0016Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô÷ýü\u000e\u0015ý\u0013øÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=ýú\u0004\u0000ÿ\u0003\u0002ùÖ+Ð1Ôû-\u0002Ô6\u0002ñ\"íò\u0004ú\u0003\u000fþ\të\u00153À\tñFÙ\u0003\u0006\u0002ñ$ïí\f\të\u00153ÅúAìÍ\u000f\u0000\u0001ó\r\u0001\u001bÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAåÛþû\u0001!ß\u0002\r\u0004ô\të\u00153ÅúAêãí\u0013\u0018Ûþû\u0001!ß\u0002\r\u0004ô\r\u0004ý\u001eÑ\t\u0000ó\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è0Ûþû\u0001!ß\u0002\r\u0004ôô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÛ:¿\u001f\u000fùô\u0002?Íñ\u0000ý\rúó\u0014óDÅûú\u000fó\u0004\rõ>íûÝ8Ï\u000f\u000fùø\u0000û\u0005Ý\u0012íï\u0011÷ù\u0010!ãí\u0013\b\u0002ù\r\u0004ý\u000eñ\"í\u0004ý\u0015á\u0002ó\u0015ü\u0014ø\u0005\tõ\u000f\u0002ñ.\u0002\të\u00153ÅúAèÝý\u0007!ßò\u0010ñ\tùü\u0005ýú\u000b\u000b\u0003õö\rþ=»ú\u0006ÿ\u000fø?êßí2Ýý\u0007ý\u000eý ßí\u0002ñ3ßï\u0004\u0003÷\u0001\u000f\u0015ïí\fÿù\u0007ñ\u000f\u0002ñ1×\u000bî\u0000'Ý\u000eýÿó\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù'Ûþû\u0001!ß\u0002\r\u0004ô\u0002ñ&éí\u0004/×ú\u0002ù\të\u00153¹\u0001\u000bý>´\u0011ùBÔñù+×ú\u0002ù\u0002ñ!êï\u0015\të\u00153ÅúAìÉ\u0005\u000f$Ï\u0000\u0011è*Ú\u0001\u0004û\u0001!ß\u0002\r\u0004ô\u0005-É\u0005\u000f$Ï\u0000\u0011è\të\u00153ÅúAë×ýü\u000e\u0004ÿö\u0007\u0003õö\rþ=»ú\u0006ÿ\u000fø?åÛ!èøþýù5ßí5×\u000bî\u0000'Ý\u000eýÿó\të\u00153À\u0005úAìÉ\u0005\u000f#Í\u000f\u0000\u0001ó\të\u00153Â\u000bó\u00079ë×\u000bî\u0000'Ý\u000eýÿó\u0005\u0011ñ\u0003õö\rþ=»ú\u0006ÿ\u000fø?ìáî\u000e!ßí5×\u000bî\u0000'Ý\u000eýÿó\u000fí\f\u001cãöÿ\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù5Û÷\r\u0002ï\u0005ý\t\u0004ò\rí\u000bó\u0011\u0019ã\u0007ð\u0011ïù)ïí\f#Ù\u0007ø\b÷ú\u0001\u0002ñ1Ô\u0002ý\u0001\u0001\t÷ú Û\t\u000b\u0015ø\u0018øý\u000eý!×\u000bî\u0000ô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=îûÝ8Ë\u0013\u000fù'\u00adÎî\u0000\u000eñ\u0001DÌô\u0002>Îñ\u0000ý\rúó\u0014óCÆûú\u000fó\u0004\rõ=Ë3Ï\u0000/ú\u0005Ò\u0001)ÿ\bþûÒ4Î7\u0015ù\u0017øºÿOº\u0005õ\u0000\n\u0001þøøS´\u0007ÿòK\u0002ñ'è\u0001û\bí\u000bú\u0001 éñý\bý\u0007\u0002ñ1Î\u0003\u0000\r÷\u000bê0Ö\u0004;\u0002\u0001úôÔ\u000bÿ\u0002ñ\"íï\u0011÷ù\u0010".getBytes("ISO-8859-1"), 0, bArr2, 0, 1181);
            $$a = bArr2;
            i2 = 112;
        }
        $$b = i2;
    }

    public static int getCurrencyIso4217Code(Object obj) {
        Object obj2;
        int i2 = $11;
        int i3 = (i2 & 63) + (i2 | 63);
        int i4 = i3 % 128;
        $10 = i4;
        if (i3 % 2 != 0) {
            obj2 = d;
            int i5 = 46 / 0;
        } else {
            obj2 = d;
        }
        $11 = (i4 + 51) % 128;
        try {
            Object[] objArr = {obj};
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c(bArr[27], bArr[82], (short) 563), true, (ClassLoader) unregisterClient).getMethod($$c(bArr[452], bArr[427], (short) ($$b | TXLiveConstants.PUSH_EVT_ROOM_USER_AUDIO_STATE)), Object.class).invoke(obj2, objArr)).intValue();
            $10 = ($11 + 9) % 128;
            return intValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }
}
