package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.File;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@MetaExoPlayerCustomization(type = {"NON_FINAL"}, value = "D54147219: For usage in Hero Simple Cache")
/* renamed from: com.facebook.ads.redexgen.X.iq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1707iq extends C0811Lx {
    public static byte[] A00;
    public static String[] A01 = {"OfRtwvXctRBBw9gKY8TWbFYEyrfTWUJ5", "O6KpU7VzQb47vbeRDg05X09dlcjSdrsx", "cGvb3Ixjw9glBryIXlKjYbTfS5Fhfs8X", "N3q9w52q7yAs4MQ92KFgaGGqaH957eGg", "tjYOyBogfVGQWArOceKhNo0cgBZwypsu", "xmSgRcjNSrQyzCd8Uu5cYZa5hRrGr9a8", "10tums6VyruOnAjrgpE7eJ8", "dQkd96lx4iAtJg2k9NqdAtWwc5SxpqrB"};
    public static final Pattern A02;
    public static final Pattern A03;
    public static final Pattern A04;

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a8, code lost:
        if (r12 == (-9223372036854775807L)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00aa, code lost:
        r12 = java.lang.Long.parseLong((java.lang.String) com.facebook.ads.redexgen.X.C3M.A01(r3.group(3)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00be, code lost:
        return new com.facebook.ads.redexgen.X.C1707iq(r7, r8, r10, r12, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d7, code lost:
        if (r12 == (-9223372036854775807L)) goto L26;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C1707iq A01(java.io.File r14, long r15, long r17, com.facebook.ads.redexgen.X.M6 r19) {
        /*
            r12 = r17
            r10 = r15
            java.lang.String r3 = r14.getName()
            r2 = 1
            r1 = 7
            r0 = 86
            java.lang.String r0 = A07(r2, r1, r0)
            boolean r0 = r3.endsWith(r0)
            r6 = 0
            r1 = r19
            if (r0 != 0) goto L23
            java.io.File r14 = A06(r14, r1)
            if (r14 != 0) goto L1f
            return r6
        L1f:
            java.lang.String r3 = r14.getName()
        L23:
            java.util.regex.Pattern r0 = com.facebook.ads.redexgen.X.C1707iq.A04
            java.util.regex.Matcher r3 = r0.matcher(r3)
            boolean r0 = r3.matches()
            if (r0 != 0) goto L30
            return r6
        L30:
            r0 = 1
            java.lang.String r0 = r3.group(r0)
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C3M.A01(r0)
            java.lang.String r0 = (java.lang.String) r0
            int r0 = java.lang.Integer.parseInt(r0)
            java.lang.String r7 = r1.A0F(r0)
            if (r7 != 0) goto L46
            return r6
        L46:
            r1 = -1
            int r0 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r0 != 0) goto L50
            long r10 = r14.length()
        L50:
            r4 = 0
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1707iq.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 2
            r2 = r2[r0]
            r0 = 16
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto Lda
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1707iq.A01
            java.lang.String r1 = "3kLuDF7WddxsAuj74YBqy147zLEiHTF0"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "yBKAMqN1ItuNGOhP7OCxzG9BVSMF66iW"
            r0 = 2
            r2[r0] = r1
            int r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r0 != 0) goto L77
            return r6
        L77:
            r0 = 2
            java.lang.String r4 = r3.group(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1707iq.A01
            r0 = 7
            r1 = r1[r0]
            r0 = 17
            char r1 = r1.charAt(r0)
            r0 = 78
            if (r1 == r0) goto Lbf
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1707iq.A01
            java.lang.String r1 = "3kqdJGKw3CP8mm7UdAcKh0LFQ5WJAflS"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "ycjOreuQW9uSgeP7cymbjNDk2aBjdnIT"
            r0 = 3
            r2[r0] = r1
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C3M.A01(r4)
            java.lang.String r0 = (java.lang.String) r0
            long r8 = java.lang.Long.parseLong(r0)
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb9
        Laa:
            r0 = 3
            java.lang.String r0 = r3.group(r0)
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C3M.A01(r0)
            java.lang.String r0 = (java.lang.String) r0
            long r12 = java.lang.Long.parseLong(r0)
        Lb9:
            com.facebook.ads.redexgen.X.iq r6 = new com.facebook.ads.redexgen.X.iq
            r6.<init>(r7, r8, r10, r12, r14)
            return r6
        Lbf:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1707iq.A01
            java.lang.String r1 = "aSANG9oSWduq5GFK5NdZXfdN35yUyqYg"
            r0 = 7
            r2[r0] = r1
            java.lang.Object r0 = com.facebook.ads.redexgen.X.C3M.A01(r4)
            java.lang.String r0 = (java.lang.String) r0
            long r8 = java.lang.Long.parseLong(r0)
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb9
            goto Laa
        Lda:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1707iq.A01(java.io.File, long, long, com.facebook.ads.redexgen.X.M6):com.facebook.ads.redexgen.X.iq");
    }

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 31);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{93, -93, -21, -88, -93, -38, -19, -28, -28, -82, -76, -79, -81, -30, -76, -82, -30, -22, -79, -81, -30, -76, -82, -30, -22, -79, -81, -30, -76, -4, -73, -30, -76, -21, -2, -11, -86, -13, -67, -61, -64, -66, -15, -61, -67, -15, -7, -64, -66, -15, -61, -67, -15, -7, -64, -66, -15, -61, Ascii.VT, -57, -15, -61, -6, Ascii.CR, 4, -71, -40, -94, -42, -34, -91, -93, -42, -88, -94, -42, -34, -91, -93, -42, -88, -94, -42, -34, -91, -93, -42, -88, -16, -83, -42, -88, -33, -14, -23, -98};
    }

    static {
        A08();
        A02 = Pattern.compile(A07(8, 29, 103), 32);
        A03 = Pattern.compile(A07(37, 29, 118), 32);
        A04 = Pattern.compile(A07(66, 30, 91), 32);
    }

    public C1707iq(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public static C1707iq A02(File file, long j, M6 m6) {
        return A01(file, j, -9223372036854775807L, m6);
    }

    public static C1707iq A03(String str, long j) {
        return new C1707iq(str, j, -1L, -9223372036854775807L, null);
    }

    public static C1707iq A04(String str, long j, long j2) {
        return new C1707iq(str, j, j2, -9223372036854775807L, null);
    }

    public static File A05(File file, int i, long j, long j2) {
        StringBuilder append = new StringBuilder().append(i);
        String A07 = A07(0, 1, 16);
        return new File(file, append.append(A07).append(j).append(A07).append(j2).append(A07(1, 7, 86)).toString());
    }

    public static File A06(File file, M6 m6) {
        String str = null;
        String name = file.getName();
        Matcher matcher = A03.matcher(name);
        if (matcher.matches()) {
            String key = matcher.group(1);
            str = AbstractC03624a.A0l((String) C3M.A01(key));
        } else {
            matcher = A02.matcher(name);
            if (matcher.matches()) {
                String key2 = matcher.group(1);
                Object A012 = C3M.A01(key2);
                String[] strArr = A01;
                String filename = strArr[0];
                if (filename.charAt(16) == strArr[2].charAt(16)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[0] = "SH9gvm8hJK4XlSeUgFI9DN0CGl9RiOAn";
                strArr2[2] = "6Y4JW5a7TLCjGmr1nVotQhjybpiv9cHJ";
                str = (String) A012;
            }
        }
        if (str == null) {
            return null;
        }
        int A0B = m6.A0B(str);
        String key3 = matcher.group(2);
        long parseLong = Long.parseLong((String) C3M.A01(key3));
        String key4 = matcher.group(3);
        File A05 = A05((File) C3M.A02(file.getParentFile()), A0B, parseLong, Long.parseLong((String) C3M.A01(key4)));
        if (!file.renameTo(A05)) {
            return null;
        }
        return A05;
    }

    public final C1707iq A09(File file, long j) {
        C3M.A08(this.A05);
        return new C1707iq(this.A04, this.A02, this.A01, j, file);
    }
}
