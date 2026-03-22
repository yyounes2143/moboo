package kotlinx.serialization.json;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return "0";
        }
        if (i2 > 0) {
            return Long.toString(j, i);
        }
        i = (i < 2 || i > 36) ? 10 : 10;
        int i3 = 64;
        char[] cArr = new char[64];
        int i4 = i - 1;
        if ((i & i4) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i3--;
                cArr[i3] = Character.forDigit(((int) j) & i4, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            if ((i & 1) == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (j >>> 1) / (i >>> 1);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = kotlin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i);
            }
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * j2)), i);
            i3 = 63;
            while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                i3--;
                cArr[i3] = Character.forDigit((int) (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 % j2), i);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 /= j2;
            }
        }
        return new String(cArr, i3, 64 - i3);
    }
}
