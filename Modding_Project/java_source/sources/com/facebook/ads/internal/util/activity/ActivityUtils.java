package com.facebook.ads.internal.util.activity;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.facebook.ads.internal.util.common.ANActivityLifecycleCallbacksListener;
import com.facebook.ads.redexgen.X.AbstractC0987Sv;
import com.facebook.ads.redexgen.X.C0988Sw;
import com.facebook.ads.redexgen.X.C1350cu;
import com.facebook.ads.redexgen.X.C1376dL;
import com.facebook.ads.redexgen.X.U7;
import com.facebook.ads.redexgen.X.WC;
import com.facebook.ads.redexgen.X.WD;
import com.facebook.ads.redexgen.X.WH;
import com.facebook.ads.redexgen.X.XJ;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.io.encoding.Base64;
/* loaded from: assets/audience_network.dex */
public final class ActivityUtils implements Application.ActivityLifecycleCallbacks {
    public static Context A01;
    public static C1350cu A02;
    public static byte[] A03;
    public static String[] A04 = {"92eOfmmmV4HUmtBKNwX5jODUm9snbisL", "83A6RHTc3uHHgwZu0l", "xT8NDmJO40EcDZzCFYpPknxtJdrIGRIs", "yd9OYuKBF31VEKohInrUKVptjNnIlgtF", "ffDhLNnwXMIpP", "gJJ", "YtTChd0N7kYfN", "CHt0mr4gyt"};
    public static final WH A05;
    public static final List<WD> A06;
    public static final List<Runnable> A07;
    public static final Map<Activity, Integer> A08;
    public final Class<? extends Activity> A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 121);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        byte[] bArr = {Ascii.SO, 2, 35, 69, 86, 75, 88, 75, 86, 91, Ascii.FS, 2, -90, -102, -20, -33, -32, -76, -102, 6, 40, 57, 46, 59, 46, 57, 62, -27, 41, 46, 56, 40, 55, 42, 53, 38, 51, 40, 46, 42, 56, -13, 56, 103, 103, 58, 102, 101, 107, 92, 111, 107, Ascii.ETB, 96, 106, Ascii.ETB, 101, 102, 107, Ascii.ETB, 56, 103, 103, 99, 96, 90, 88, 107, 96, 102, 101, 37, -3, 41, 40, Ascii.GS, 47, 44, 44, Ascii.US, 40, 46, -38, 39, 41, Ascii.RS, 35, 32, 35, Ascii.GS, Ascii.ESC, 46, 35, 41, 40, -38, Ascii.US, 50, Ascii.GS, Ascii.US, 42, 46, 35, 41, 40, -38, 46, 34, 44, 41, 49, 40, Ascii.RS, 47, 44, 35, 40, 33, -38, 44, Ascii.US, 33, 35, 45, 46, Ascii.US, 44, -5, Ascii.GS, 46, 35, 48, 35, 46, 51, -3, Ascii.ESC, 38, 38, Ascii.FS, Ascii.ESC, Ascii.GS, 37, 45, 6, 35, 45, 46, Ascii.US, 40, Ascii.US, 44, 45, 74, 66, -2, 63, 65, 82, 71, 84, 71, 82, 87, -2, 81, 82, 63, 82, 67, Ascii.CAN, -2, Ascii.CAN, 41, Base64.padSymbol, 59, 45, 44, -24, 41, 43, 60, 49, 62, 49, 60, 65, -24, 49, 59, -24, 54, 55, 60, -24, 58, 45, 59, Base64.padSymbol, 53, 45, 44, -10, 44, 63, 77, Ascii.DC4, -6, Ascii.ETB, Ascii.EM, 42, Ascii.NAK, 43, 42, Ascii.US, 34, -35, -20, -27, 58, 57, Ascii.FF, 46, 63, 52, 65, 52, 63, 68, Ascii.SO, Base64.padSymbol, 48, 44, 63, 48, 47};
        if (A04[0].charAt(5) != 'm') {
            throw new RuntimeException();
        }
        A04[7] = "OT1BI2x3SK";
        A03 = bArr;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static synchronized void A04(C1350cu c1350cu, Class<? extends Activity> cls) {
        synchronized (ActivityUtils.class) {
            A02 = c1350cu;
            A01 = c1350cu.getApplicationContext();
            if (A01 instanceof Application) {
                ANActivityLifecycleCallbacksListener aNActivityLifecycleCallbacksListener = ANActivityLifecycleCallbacksListener.getANActivityLifecycleCallbacksListener();
                if (aNActivityLifecycleCallbacksListener != null) {
                    Map<Activity, Integer> activityStateMap = aNActivityLifecycleCallbacksListener.getActivityStateMap();
                    synchronized (activityStateMap) {
                        try {
                            A08.putAll(activityStateMap);
                        } catch (ConcurrentModificationException unused) {
                            c1350cu.A08().AAy(A01(208, 8, 61), AbstractC0987Sv.A02, new C0988Sw(A01(72, 80, 65)));
                        }
                    }
                    ANActivityLifecycleCallbacksListener.unregisterActivityCallbacks(c1350cu);
                }
                ((Application) A01).registerActivityLifecycleCallbacks(new ActivityUtils(cls));
            } else {
                c1350cu.A08().AAy(A01(216, 3, 3), AbstractC0987Sv.A0d, new C0988Sw(A01(42, 30, 126)));
            }
        }
    }

    static {
        A02();
        A08 = Collections.synchronizedMap(new WeakHashMap());
        A06 = Collections.synchronizedList(new ArrayList());
        A07 = new ArrayList();
        A05 = WH.A00();
    }

    public ActivityUtils(Class<? extends Activity> adsActivityClass) {
        this.A00 = adsActivityClass;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[Catch: all -> 0x00a0, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x000e, B:8:0x0014, B:10:0x0027, B:13:0x0031, B:19:0x003d, B:20:0x0041, B:24:0x0049), top: B:33:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized android.app.Activity A00() {
        /*
            java.lang.Class<com.facebook.ads.internal.util.activity.ActivityUtils> r8 = com.facebook.ads.internal.util.activity.ActivityUtils.class
            monitor-enter(r8)
            r6 = 0
            java.util.Map<android.app.Activity, java.lang.Integer> r0 = com.facebook.ads.internal.util.activity.ActivityUtils.A08     // Catch: java.lang.Throwable -> La0
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> La0
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> La0
        Le:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L2d
            java.lang.Object r2 = r3.next()     // Catch: java.lang.Throwable -> La0
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> La0
            java.lang.Object r0 = r2.getValue()     // Catch: java.lang.Throwable -> La0
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> La0
            int r1 = r0.intValue()     // Catch: java.lang.Throwable -> La0
            r0 = 3
            if (r1 != r0) goto Le
            java.lang.Object r6 = r2.getKey()     // Catch: java.lang.Throwable -> La0
            android.app.Activity r6 = (android.app.Activity) r6     // Catch: java.lang.Throwable -> La0
        L2d:
            r5 = 0
            r7 = 1
            if (r6 == 0) goto L3a
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> La0
            r0 = 28
            if (r1 >= r0) goto L38
            goto L3a
        L38:
            r1 = 0
            goto L3b
        L3a:
            r1 = 1
        L3b:
            if (r1 == 0) goto L41
            android.app.Activity r5 = com.facebook.ads.redexgen.X.WA.A00()     // Catch: java.lang.Throwable -> La0
        L41:
            com.facebook.ads.redexgen.X.cu r0 = com.facebook.ads.internal.util.activity.ActivityUtils.A02     // Catch: java.lang.Throwable -> La0
            if (r0 == 0) goto L9a
            if (r1 == 0) goto L9a
            if (r6 == r5) goto L9a
            r2 = 19
            r1 = 23
            r0 = 76
            java.lang.String r1 = A01(r2, r1, r0)     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La0
            r4.<init>()     // Catch: java.lang.Throwable -> La0
            r3 = 203(0xcb, float:2.84E-43)
            r2 = 5
            r0 = 97
            java.lang.String r0 = A01(r3, r2, r0)     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r4 = r0.append(r6)     // Catch: java.lang.Throwable -> La0
            r3 = 12
            r2 = 7
            r0 = 1
            java.lang.String r0 = A01(r3, r2, r0)     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> La0
            java.lang.StringBuilder r0 = r0.append(r5)     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La0
            com.facebook.ads.redexgen.X.Sw r2 = new com.facebook.ads.redexgen.X.Sw     // Catch: java.lang.Throwable -> La0
            r2.<init>(r1, r0)     // Catch: java.lang.Throwable -> La0
            r2.A05(r7)     // Catch: java.lang.Throwable -> La0
            com.facebook.ads.redexgen.X.cu r0 = com.facebook.ads.internal.util.activity.ActivityUtils.A02     // Catch: java.lang.Throwable -> La0
            com.facebook.ads.redexgen.X.Su r4 = r0.A08()     // Catch: java.lang.Throwable -> La0
            r3 = 208(0xd0, float:2.91E-43)
            r1 = 8
            r0 = 61
            java.lang.String r0 = A01(r3, r1, r0)     // Catch: java.lang.Throwable -> La0
            int r1 = com.facebook.ads.redexgen.X.AbstractC0987Sv.A03     // Catch: java.lang.Throwable -> La0
            r4.AAy(r0, r1, r2)     // Catch: java.lang.Throwable -> La0
        L9a:
            if (r6 == 0) goto L9e
            monitor-exit(r8)
            return r6
        L9e:
            monitor-exit(r8)
            return r5
        La0:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.util.activity.ActivityUtils.A00():android.app.Activity");
    }

    public static void A03(C1376dL c1376dL) {
        if (!U7.A1k(c1376dL) || Build.VERSION.SDK_INT >= 29) {
            return;
        }
        WC wc = new WC(c1376dL);
        synchronized (A07) {
            A07.add(wc);
        }
        XJ.A01.A01().postDelayed(wc, 2000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        A08.put(activity, 1);
        Iterator<WD> it = A06.iterator();
        boolean hasNext = it.hasNext();
        String[] strArr = A04;
        if (strArr[4].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[3] = "6ucg7ZQRC52PgbYLp0IlsO8L9UBIqtAr";
        strArr2[2] = "XfsAw5zLn3vJHYKMay1aCQiNLVOIwPXI";
        if (hasNext) {
            it.next();
            throw new NullPointerException(A01(219, 17, 82));
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        A08.put(activity, 6);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ArrayList arrayList;
        Integer num = A08.get(activity);
        if (num == null || num.intValue() != 3) {
            C0988Sw c0988Sw = new C0988Sw(A01(172, 31, 79), A01(152, 20, 101) + num + A01(0, 12, 105) + activity);
            c0988Sw.A05(0);
            A02.A08().AAy(A01(208, 8, 61), AbstractC0987Sv.A03, c0988Sw);
        }
        A08.put(activity, 4);
        if (activity.getClass() != this.A00) {
            synchronized (A07) {
                arrayList = new ArrayList(A07);
                A07.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                XJ.A01.A01().removeCallbacks((Runnable) it.next());
            }
        }
        A05.A01();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        A08.put(activity, 3);
        A05.A02();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        A08.put(activity, 2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        A08.put(activity, 5);
    }
}
