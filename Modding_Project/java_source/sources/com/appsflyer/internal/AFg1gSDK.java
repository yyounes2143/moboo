package com.appsflyer.internal;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.appsflyer.internal.AFg1dSDK;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFg1gSDK {
    private final LinkedHashMap<String, Object> getMediationNetwork;
    public static final Object getRevenue = new Object() { // from class: com.appsflyer.internal.AFg1gSDK.4
        public final boolean equals(Object obj) {
            if (obj != this && obj != null) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return AbstractJsonLexerKt.NULL;
        }
    };
    private static final Double getCurrencyIso4217Code = Double.valueOf(-0.0d);

    public AFg1gSDK() {
        this.getMediationNetwork = new LinkedHashMap<>();
    }

    public static String getCurrencyIso4217Code(Number number) throws AFg1mSDK {
        if (number != null) {
            double doubleValue = number.doubleValue();
            try {
                Object[] objArr = {Double.valueOf(doubleValue)};
                Map map = AFa1hSDK.d;
                Object obj = map.get(-1740817925);
                if (obj == null) {
                    obj = ((Class) AFa1hSDK.getRevenue(287 - TextUtils.indexOf("", "", 0), (char) (ViewConfiguration.getDoubleTapTimeout() >> 16), 36 - (Process.myPid() >> 22))).getDeclaredMethod("AFAdRevenueData", Double.TYPE);
                    map.put(-1740817925, obj);
                }
                ((Double) ((Method) obj).invoke(null, objArr)).getClass();
                if (number.equals(getCurrencyIso4217Code)) {
                    return "-0";
                }
                long longValue = number.longValue();
                if (doubleValue == longValue) {
                    return Long.toString(longValue);
                }
                return number.toString();
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        throw new AFg1mSDK("Number must be non-null");
    }

    public static Object getMediationNetwork(Object obj) {
        if (obj == null) {
            return getRevenue;
        }
        if (!((Class) AFa1hSDK.getRevenue(View.combineMeasuredStates(0, 0) + 323, (char) (31688 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))), 36 - TextUtils.indexOf("", "", 0))).isInstance(obj)) {
            if (obj instanceof AFg1gSDK) {
                return obj;
            }
            if (obj instanceof JSONArray) {
                Object[] objArr = {obj.toString()};
                Map map = AFa1hSDK.d;
                Object obj2 = map.get(1701394550);
                if (obj2 == null) {
                    obj2 = ((Class) AFa1hSDK.getRevenue(322 - ExpandableListView.getPackedPositionChild(0L), (char) (31686 - ExpandableListView.getPackedPositionChild(0L)), 35 - TextUtils.indexOf((CharSequence) "", '0', 0))).getDeclaredConstructor(String.class);
                    map.put(1701394550, obj2);
                }
                return ((Constructor) obj2).newInstance(objArr);
            }
            if (obj instanceof JSONObject) {
                return new AFg1gSDK(obj.toString());
            }
            if (!obj.equals(getRevenue)) {
                if (obj instanceof Collection) {
                    Object[] objArr2 = {(Collection) obj};
                    Map map2 = AFa1hSDK.d;
                    Object obj3 = map2.get(1736765615);
                    if (obj3 == null) {
                        obj3 = ((Class) AFa1hSDK.getRevenue(323 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (char) (31686 - ImageFormat.getBitsPerPixel(0)), 35 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)))).getDeclaredConstructor(Collection.class);
                        map2.put(1736765615, obj3);
                    }
                    return ((Constructor) obj3).newInstance(objArr2);
                } else if (obj.getClass().isArray()) {
                    Object[] objArr3 = {obj};
                    Map map3 = AFa1hSDK.d;
                    Object obj4 = map3.get(-3119068);
                    if (obj4 == null) {
                        obj4 = ((Class) AFa1hSDK.getRevenue((ViewConfiguration.getJumpTapTimeout() >> 16) + 323, (char) ((-16745529) - Color.rgb(0, 0, 0)), (ViewConfiguration.getKeyRepeatDelay() >> 16) + 36)).getDeclaredConstructor(Object.class);
                        map3.put(-3119068, obj4);
                    }
                    return ((Constructor) obj4).newInstance(objArr3);
                } else if (obj instanceof Map) {
                    return new AFg1gSDK((Map) obj);
                } else {
                    if (!(obj instanceof Boolean) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short) && !(obj instanceof String)) {
                        if (obj.getClass().getPackage().getName().startsWith("java.")) {
                            return obj.toString();
                        }
                        return null;
                    }
                    return obj;
                }
            }
            return obj;
        }
        return obj;
    }

    public final AFg1gSDK getMonetizationNetwork(String str, Object obj) throws AFg1mSDK {
        if (obj == null) {
            this.getMediationNetwork.remove(str);
            return this;
        }
        if (obj instanceof Number) {
            try {
                Object[] objArr = {Double.valueOf(((Number) obj).doubleValue())};
                Map map = AFa1hSDK.d;
                Object obj2 = map.get(-1740817925);
                if (obj2 == null) {
                    obj2 = ((Class) AFa1hSDK.getRevenue((ViewConfiguration.getScrollDefaultDelay() >> 16) + MBSupportMuteAdType.INTERSTITIAL_VIDEO, (char) View.MeasureSpec.getMode(0), ExpandableListView.getPackedPositionGroup(0L) + 36)).getMethod("AFAdRevenueData", Double.TYPE);
                    map.put(-1740817925, obj2);
                }
                ((Double) ((Method) obj2).invoke(null, objArr)).getClass();
            } catch (Throwable th) {
                Throwable cause = th.getCause();
                if (cause != null) {
                    throw cause;
                }
                throw th;
            }
        }
        LinkedHashMap<String, Object> linkedHashMap = this.getMediationNetwork;
        if (str != null) {
            linkedHashMap.put(str, obj);
            return this;
        }
        throw new AFg1mSDK("Names must be non-null");
    }

    public final String toString() {
        try {
            AFg1dSDK aFg1dSDK = new AFg1dSDK();
            getCurrencyIso4217Code(aFg1dSDK);
            return aFg1dSDK.toString();
        } catch (AFg1mSDK unused) {
            return null;
        }
    }

    public AFg1gSDK(Map map) {
        this();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str != null) {
                this.getMediationNetwork.put(str, getMediationNetwork(entry.getValue()));
            } else {
                throw new NullPointerException("key == null");
            }
        }
    }

    private AFg1gSDK(Object obj) throws AFg1mSDK {
        try {
            Map map = AFa1hSDK.d;
            Object obj2 = map.get(1233250772);
            if (obj2 == null) {
                obj2 = ((Class) AFa1hSDK.getRevenue((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 359, (char) (17849 - (ViewConfiguration.getScrollBarSize() >> 8)), Color.argb(0, 0, 0, 0) + 36)).getDeclaredMethod("AFAdRevenueData", null);
                map.put(1233250772, obj2);
            }
            Object invoke = ((Method) obj2).invoke(obj, null);
            if (invoke instanceof AFg1gSDK) {
                this.getMediationNetwork = ((AFg1gSDK) invoke).getMediationNetwork;
                return;
            }
            Object[] objArr = {invoke, "AFJsonObject"};
            Object obj3 = map.get(-508700964);
            if (obj3 == null) {
                obj3 = ((Class) AFa1hSDK.getRevenue((ViewConfiguration.getKeyRepeatTimeout() >> 16) + MBSupportMuteAdType.INTERSTITIAL_VIDEO, (char) ((-1) - TextUtils.lastIndexOf("", '0', 0)), 36 - ExpandableListView.getPackedPositionType(0L))).getDeclaredMethod("getMonetizationNetwork", Object.class, String.class);
                map.put(-508700964, obj3);
            }
            throw ((Throwable) ((Method) obj3).invoke(null, objArr));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    public final void getCurrencyIso4217Code(AFg1dSDK aFg1dSDK) throws AFg1mSDK {
        aFg1dSDK.getMediationNetwork(AFg1dSDK.AFa1zSDK.EMPTY_OBJECT, "{");
        for (Map.Entry<String, Object> entry : this.getMediationNetwork.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                aFg1dSDK.getMonetizationNetwork();
                aFg1dSDK.AFAdRevenueData(key);
                aFg1dSDK.getCurrencyIso4217Code(entry.getValue());
            } else {
                throw new AFg1mSDK("Names must be non-null");
            }
        }
        aFg1dSDK.getMonetizationNetwork(AFg1dSDK.AFa1zSDK.EMPTY_OBJECT, AFg1dSDK.AFa1zSDK.NONEMPTY_OBJECT, "}");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private AFg1gSDK(java.lang.String r8) throws com.appsflyer.internal.AFg1mSDK {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L4c
            r2[r1] = r8     // Catch: java.lang.Throwable -> L4c
            java.util.Map r8 = com.appsflyer.internal.AFa1hSDK.d     // Catch: java.lang.Throwable -> L4c
            r3 = -1433104906(0xffffffffaa948df6, float:-2.6388586E-13)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r4 = r8.get(r4)     // Catch: java.lang.Throwable -> L4c
            if (r4 == 0) goto L16
            goto L42
        L16:
            int r4 = android.view.View.resolveSizeAndState(r1, r1, r1)     // Catch: java.lang.Throwable -> L4c
            int r4 = 359 - r4
            int r5 = android.graphics.Color.green(r1)     // Catch: java.lang.Throwable -> L4c
            int r5 = 17849 - r5
            char r5 = (char) r5     // Catch: java.lang.Throwable -> L4c
            int r6 = android.view.ViewConfiguration.getWindowTouchSlop()     // Catch: java.lang.Throwable -> L4c
            int r6 = r6 >> 8
            int r6 = 36 - r6
            java.lang.Object r4 = com.appsflyer.internal.AFa1hSDK.getRevenue(r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            java.lang.Class r4 = (java.lang.Class) r4     // Catch: java.lang.Throwable -> L4c
            java.lang.Class[] r0 = new java.lang.Class[r0]     // Catch: java.lang.Throwable -> L4c
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r0[r1] = r5     // Catch: java.lang.Throwable -> L4c
            java.lang.reflect.Constructor r4 = r4.getDeclaredConstructor(r0)     // Catch: java.lang.Throwable -> L4c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L4c
            r8.put(r0, r4)     // Catch: java.lang.Throwable -> L4c
        L42:
            java.lang.reflect.Constructor r4 = (java.lang.reflect.Constructor) r4     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r8 = r4.newInstance(r2)     // Catch: java.lang.Throwable -> L4c
            r7.<init>(r8)
            return
        L4c:
            r8 = move-exception
            java.lang.Throwable r0 = r8.getCause()
            if (r0 == 0) goto L54
            throw r0
        L54:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFg1gSDK.<init>(java.lang.String):void");
    }
}
