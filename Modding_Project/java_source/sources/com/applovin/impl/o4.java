package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import com.applovin.impl.r5;
import j$.util.Objects;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class o4 {
    private static com.applovin.impl.sdk.k b;
    private static SharedPreferences c;

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f3454a;

    public o4(com.applovin.impl.sdk.k kVar) {
        this.f3454a = com.applovin.impl.sdk.k.o().getSharedPreferences("com.applovin.sdk.preferences." + kVar.i0(), 0);
        b = kVar;
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        a(str, obj, (SharedPreferences) null, editor);
    }

    public void b(n4 n4Var, Object obj) {
        b(n4Var, obj, this.f3454a);
    }

    public void a(String str, Object obj, SharedPreferences sharedPreferences) {
        a(str, obj, sharedPreferences, (SharedPreferences.Editor) null);
    }

    public void b(n4 n4Var, Object obj, SharedPreferences sharedPreferences) {
        a(n4Var.a(), obj, sharedPreferences);
    }

    public static void a(String str, Object obj, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        boolean z = editor != null;
        if (!z) {
            editor = sharedPreferences.edit();
        }
        if (obj != null) {
            if (obj instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                editor.putFloat(str, ((Float) obj).floatValue());
            } else if (obj instanceof Integer) {
                editor.putInt(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                editor.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                editor.putLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
            } else if (obj instanceof String) {
                editor.putString(str, (String) obj);
            } else if (obj instanceof Set) {
                editor.putStringSet(str, (Set) obj);
            } else {
                com.applovin.impl.sdk.o.h("SharedPreferencesManager", "Unable to put default value of invalid type: " + obj);
                return;
            }
        } else {
            editor.remove(str);
        }
        if (z) {
            return;
        }
        a(editor);
    }

    public static void b(n4 n4Var, Object obj, Context context) {
        a(n4Var.a(), obj, a(context), (SharedPreferences.Editor) null);
    }

    public void b(n4 n4Var) {
        a(this.f3454a.edit().remove(n4Var.a()));
    }

    public Object a(n4 n4Var, Object obj) {
        return a(n4Var, obj, this.f3454a);
    }

    public Object a(n4 n4Var, Object obj, SharedPreferences sharedPreferences) {
        return a(n4Var.a(), obj, n4Var.b(), sharedPreferences);
    }

    public static Object a(n4 n4Var, Object obj, Context context) {
        return a(n4Var.a(), obj, n4Var.b(), a(context));
    }

    public static Object a(n4 n4Var, Object obj, SharedPreferences sharedPreferences, boolean z) {
        return a(n4Var.a(), obj, n4Var.b(), sharedPreferences, z);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return a(str, obj, cls, sharedPreferences, true);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences, boolean z) {
        Object stringSet;
        long longValue;
        int intValue;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (sharedPreferences.contains(str)) {
                if (Boolean.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
                    } else {
                        stringSet = Boolean.valueOf(sharedPreferences.getBoolean(str, false));
                    }
                } else if (Float.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
                    } else {
                        stringSet = Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
                    }
                } else if (Integer.class.equals(cls)) {
                    if (obj != null) {
                        if (obj.getClass().equals(Long.class)) {
                            intValue = ((Long) obj).intValue();
                        } else {
                            intValue = ((Integer) obj).intValue();
                        }
                        stringSet = Integer.valueOf(sharedPreferences.getInt(str, intValue));
                    } else {
                        stringSet = Integer.valueOf(sharedPreferences.getInt(str, 0));
                    }
                } else if (Long.class.equals(cls)) {
                    if (obj != null) {
                        if (obj.getClass().equals(Integer.class)) {
                            longValue = ((Integer) obj).longValue();
                        } else {
                            longValue = ((Long) obj).longValue();
                        }
                        stringSet = Long.valueOf(sharedPreferences.getLong(str, longValue));
                    } else {
                        stringSet = Long.valueOf(sharedPreferences.getLong(str, 0L));
                    }
                } else if (Double.class.equals(cls)) {
                    if (obj != null) {
                        stringSet = Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()))));
                    } else {
                        stringSet = Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, 0L)));
                    }
                } else if (String.class.equals(cls)) {
                    stringSet = sharedPreferences.getString(str, (String) obj);
                } else {
                    stringSet = Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) obj) : obj;
                }
                return stringSet != null ? cls.cast(stringSet) : obj;
            }
            return obj;
        } catch (Throwable th) {
            if (z) {
                try {
                    com.applovin.impl.sdk.o.c("SharedPreferencesManager", "Error getting value for key: " + str, th);
                } finally {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
            return obj;
        }
    }

    public Object a(n4 n4Var) {
        Object a2 = a(n4Var, null);
        b(n4Var);
        return a2;
    }

    public void a(SharedPreferences sharedPreferences) {
        a(sharedPreferences.edit().clear());
    }

    public static void a(final SharedPreferences.Editor editor) {
        try {
            if (z6.h()) {
                com.applovin.impl.sdk.k kVar = b;
                if (kVar != null && kVar.q0() != null) {
                    r5 q0 = b.q0();
                    com.applovin.impl.sdk.k kVar2 = b;
                    Objects.requireNonNull(editor);
                    q0.a((w4) new f6(kVar2, true, "commitSharedPreferencesChanges", new Runnable() { // from class: com.applovin.impl.O00000
                        @Override // java.lang.Runnable
                        public final void run() {
                            editor.commit();
                        }
                    }), r5.b.OTHER);
                    return;
                }
                editor.apply();
                return;
            }
            editor.commit();
        } catch (Throwable th) {
            com.applovin.impl.sdk.o.c("SharedPreferencesManager", "Unable to apply changes", th);
            try {
                b.E().a("SharedPreferencesManager", "persistChanges", th);
            } catch (Throwable unused) {
            }
        }
    }

    private static SharedPreferences a(Context context) {
        if (c == null) {
            c = context.getSharedPreferences("com.applovin.sdk.shared", 0);
        }
        return c;
    }
}
