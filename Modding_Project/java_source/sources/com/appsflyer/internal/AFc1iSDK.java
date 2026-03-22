package com.appsflyer.internal;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFc1iSDK extends HashMap<String, Object> {
    private static int $10 = 0;
    private static int $11 = 1;
    private static long AFAdRevenueData = 0;
    private static int areAllFieldsValid = 0;
    private static int component1 = 1;
    private static long getCurrencyIso4217Code;
    private static char[] getMediationNetwork;
    private final Map<String, Object> getMonetizationNetwork;
    private final Context getRevenue;

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class AFa1ySDK {
        @NonNull
        public static byte[] AFAdRevenueData(@NonNull String str) throws Exception {
            return str.getBytes(Charset.defaultCharset());
        }

        public static byte[] getMediationNetwork(@NonNull byte[] bArr) throws Exception {
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) (bArr[i] ^ ((i % 2) + 42));
            }
            return bArr;
        }
    }

    static {
        getCurrencyIso4217Code();
        TypedValue.complexToFloat(0);
        Color.red(0);
        PointF.length(0.0f, 0.0f);
        SystemClock.elapsedRealtime();
        Process.getGidForName("");
        Color.alpha(0);
        TextUtils.indexOf("", "", 0);
        ViewConfiguration.getMaximumDrawingCacheSize();
        KeyEvent.getMaxKeyCode();
        ViewConfiguration.getFadingEdgeLength();
        AudioTrack.getMaxVolume();
        areAllFieldsValid = (component1 + 101) % 128;
    }

    @WorkerThread
    public AFc1iSDK(Map<String, Object> map, Context context) {
        this.getMonetizationNetwork = map;
        this.getRevenue = context;
        put(AFAdRevenueData(), getMediationNetwork());
    }

    @NonNull
    private String AFAdRevenueData() {
        String str;
        areAllFieldsValid = (component1 + 87) % 128;
        try {
            String num = Integer.toString(Build.VERSION.SDK_INT);
            Map<String, Object> map = this.getMonetizationNetwork;
            Object[] objArr = new Object[1];
            a(13 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), Process.myPid() >> 22, (char) (View.MeasureSpec.getSize(0) + 12973), objArr);
            String obj = map.get(((String) objArr[0]).intern()).toString();
            Map<String, Object> map2 = this.getMonetizationNetwork;
            Object[] objArr2 = new Object[1];
            b("\uf4f5噬뇤።绗", TextUtils.indexOf("", "") + 41609, objArr2);
            String obj2 = map2.get(((String) objArr2[0]).intern()).toString();
            if (obj2 == null) {
                int i = component1 + 101;
                areAllFieldsValid = i % 128;
                if (i % 2 != 0) {
                    Object[] objArr3 = new Object[1];
                    a(26 % (ViewConfiguration.getTapTimeout() >>> 67), 107 >>> Drawable.resolveOpacity(1, 0), (char) TextUtils.indexOf("", "", 0), objArr3);
                    str = (String) objArr3[0];
                } else {
                    Object[] objArr4 = new Object[1];
                    a(8 - (ViewConfiguration.getTapTimeout() >> 16), 12 - Drawable.resolveOpacity(0, 0), (char) TextUtils.indexOf("", "", 0), objArr4);
                    str = (String) objArr4[0];
                }
                obj2 = str.intern();
            }
            StringBuilder sb = new StringBuilder(obj);
            sb.reverse();
            StringBuilder currencyIso4217Code = getCurrencyIso4217Code(num, obj2, sb.toString());
            int length = currencyIso4217Code.length();
            if (length > 4) {
                currencyIso4217Code.delete(4, length);
            } else {
                while (length < 4) {
                    length++;
                    currencyIso4217Code.append('1');
                    areAllFieldsValid = (component1 + 11) % 128;
                }
            }
            Object[] objArr5 = new Object[1];
            b("\uf4fc댯筋", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 18396, objArr5);
            currencyIso4217Code.insert(0, ((String) objArr5[0]).intern());
            return currencyIso4217Code.toString();
        } catch (Exception e) {
            Object[] objArr6 = new Object[1];
            b("\uf4b7ᒵ㑸听痕闼땂픑\uf6c6ᛚ㙃嘁矂靺뜴탸\uf0e7ၥ〨処熖酌넘틐\uf286ቄ㏲台獰錣볧\udcecﱜᰗ㷄巘絔鴇뻝\ude7c", 57412 - ((byte) KeyEvent.getModifierMetaStateMask()), objArr6);
            AFLogger.afErrorLogForExcManagerOnly(((String) objArr6[0]).intern(), e);
            StringBuilder sb2 = new StringBuilder();
            Object[] objArr7 = new Object[1];
            a(Color.green(0) + 42, 20 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (char) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), objArr7);
            sb2.append(((String) objArr7[0]).intern());
            sb2.append(e);
            AFLogger.afRDLog(sb2.toString());
            Object[] objArr8 = new Object[1];
            b("\uf4fc\uda8dꠏ翓䵒᳕\ue254", (ViewConfiguration.getTouchSlop() >> 8) + 11903, objArr8);
            return ((String) objArr8[0]).intern();
        }
    }

    private static void a(int i, int i2, char c, Object[] objArr) {
        int i3;
        AFk1mSDK aFk1mSDK = new AFk1mSDK();
        long[] jArr = new long[i];
        aFk1mSDK.getMediationNetwork = 0;
        $10 = ($11 + 111) % 128;
        while (true) {
            int i4 = aFk1mSDK.getMediationNetwork;
            if (i4 >= i) {
                break;
            }
            jArr[i4] = (((char) (getMediationNetwork[i2 + i4] ^ (-2577524606577954075L))) ^ (i4 * ((-2577524606577954075L) ^ getCurrencyIso4217Code))) ^ c;
            aFk1mSDK.getMediationNetwork = i4 + 1;
        }
        char[] cArr = new char[i];
        aFk1mSDK.getMediationNetwork = 0;
        $10 = ($11 + 111) % 128;
        while (true) {
            int i5 = aFk1mSDK.getMediationNetwork;
            if (i5 < i) {
                int i6 = $11 + 75;
                $10 = i6 % 128;
                if (i6 % 2 != 0) {
                    cArr[i5] = (char) jArr[i5];
                    i3 = i5 / 0;
                } else {
                    cArr[i5] = (char) jArr[i5];
                    i3 = i5 + 1;
                }
                aFk1mSDK.getMediationNetwork = i3;
            } else {
                objArr[0] = new String(cArr);
                return;
            }
        }
    }

    private static void b(String str, int i, Object[] objArr) {
        $11 = ($10 + 57) % 128;
        char[] cArr = str;
        if (str != null) {
            cArr = str.toCharArray();
        }
        char[] cArr2 = cArr;
        AFk1nSDK aFk1nSDK = new AFk1nSDK();
        aFk1nSDK.AFAdRevenueData = i;
        int length = cArr2.length;
        long[] jArr = new long[length];
        aFk1nSDK.getRevenue = 0;
        $11 = ($10 + 29) % 128;
        while (true) {
            int i2 = aFk1nSDK.getRevenue;
            if (i2 >= cArr2.length) {
                break;
            }
            int i3 = ($11 + 85) % 128;
            $10 = i3;
            jArr[i2] = (cArr2[i2] ^ (i2 * aFk1nSDK.AFAdRevenueData)) ^ (AFAdRevenueData ^ (-4672045500807300752L));
            aFk1nSDK.getRevenue = i2 + 1;
            $11 = (i3 + 101) % 128;
        }
        char[] cArr3 = new char[length];
        aFk1nSDK.getRevenue = 0;
        while (true) {
            int i4 = aFk1nSDK.getRevenue;
            if (i4 < cArr2.length) {
                cArr3[i4] = (char) jArr[i4];
                aFk1nSDK.getRevenue = i4 + 1;
            } else {
                objArr[0] = new String(cArr3);
                return;
            }
        }
    }

    @VisibleForTesting
    private static StringBuilder getCurrencyIso4217Code(@NonNull String... strArr) throws Exception {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        int i = 0;
        while (i < 3) {
            arrayList.add(Integer.valueOf(strArr[i].length()));
            i++;
            component1 = (areAllFieldsValid + 87) % 128;
        }
        Collections.sort(arrayList);
        int intValue = ((Integer) arrayList.get(0)).intValue();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < intValue) {
            Integer num = null;
            for (int i3 = 0; i3 < 3; i3++) {
                int charAt = strArr[i3].charAt(i2);
                if (num != null) {
                    charAt ^= num.intValue();
                }
                num = Integer.valueOf(charAt);
            }
            sb.append(Integer.toHexString(num.intValue()));
            i2++;
            component1 = (areAllFieldsValid + 85) % 128;
        }
        return sb;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x029d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getMediationNetwork() {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFc1iSDK.getMediationNetwork():java.lang.String");
    }

    public static void getCurrencyIso4217Code() {
        getMediationNetwork = new char[]{32809, 60417, 22601, 50353, 12445, 40142, 2359, 30066, 57668, 19854, 47603, 9789, 45739, 56965, 27364, 63018, 523, 44623, 15281, 18408, 45699, 57003, 27346, 62980, 572, 44650, 15327, 18379, 54264, 32556, 35670, 5266, 41136, 52466, 22558, 58442, 28786, 40410, 10688, 46589, 49455, 27934, 65156, 2745, 38644, 8786, 20052, 55929, 26549, 62430, 8007, 43825, 14205, 16521, 60606, 30968, 33805, 4167, 48240, 51618, 21895, 57666, 37826, 65525, 19355, 55118, 9062, 36650, 45768, 57016, 27352, 63046, 627, 45699, 57003, 27346, 62980, 572, 44650, 15327, 18379, 54264, 32556, 35670, 5266, 41136, 52466, 22558, 58442, 28786, 40410, 10688, 46589, 49455, 27934, 65177, 2749, 38625, 8711, 20038, 55856, 26550, 62431, 7955, 43836, 14117, 16527, 60579, 30955, 33820, 4190, 48235, 51621, 21970, 57612, 3433, 39200, 45700, 56996, 27359, 63002, 566, 44647, 15259, 18306, 54260, 32556, 35655, 5253, 41151, 52466, 22617, 58437, 28790, 40334, 10690, 46583, 49447, 27920, 65197, 2717, 38617, 8742, 20070, 55874, 26520, 62441, 7972, 43804, 14148, 16548, 60572, 30925, 33853, 45713, 57007, 27350, 63000, 572, 44668, 15262, 18392, 54248, 32560, 35670, 45703, 30921, 5299, 45698, 57007, 27343, 63038, 619, 44632, 15262, 18368, 54248, 32551, 35603, 5253, 41123, 52468, 22552, 58454};
        getCurrencyIso4217Code = 4920180562940649162L;
        AFAdRevenueData = 2584127450055626215L;
    }
}
