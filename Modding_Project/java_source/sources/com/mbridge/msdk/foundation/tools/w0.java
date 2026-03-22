package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.content.SharedPreferences;
import com.mbridge.msdk.foundation.tools.FastKV;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class w0 {

    /* renamed from: a  reason: collision with root package name */
    static FastKV f9118a;

    public static Object a(Context context, String str, Object obj) {
        String str2;
        if (context != null) {
            if (obj != null) {
                str2 = obj.getClass().getSimpleName();
            } else {
                str2 = "";
            }
            if (com.mbridge.msdk.foundation.controller.d.a().e() && f9118a == null) {
                try {
                    f9118a = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "share_date").build();
                } catch (Exception unused) {
                    f9118a = null;
                }
            }
            if (f9118a != null) {
                try {
                    if ("String".equals(str2)) {
                        return f9118a.getString(str, (String) obj);
                    }
                    if ("Integer".equals(str2)) {
                        return Integer.valueOf(f9118a.getInt(str, ((Integer) obj).intValue()));
                    }
                    if ("Boolean".equals(str2)) {
                        return Boolean.valueOf(f9118a.getBoolean(str, ((Boolean) obj).booleanValue()));
                    }
                    if ("Float".equals(str2)) {
                        return Float.valueOf(f9118a.getFloat(str, ((Float) obj).floatValue()));
                    }
                    if ("Long".equals(str2)) {
                        return Long.valueOf(f9118a.getLong(str, ((Long) obj).longValue()));
                    }
                } catch (Exception unused2) {
                }
            } else {
                SharedPreferences sharedPreferences = context.getSharedPreferences("share_date", 0);
                if ("String".equals(str2)) {
                    return sharedPreferences.getString(str, (String) obj);
                }
                if ("Integer".equals(str2)) {
                    return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
                }
                if ("Boolean".equals(str2)) {
                    return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
                }
                if ("Float".equals(str2)) {
                    return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
                }
                if ("Long".equals(str2)) {
                    return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
                }
            }
        }
        return obj;
    }

    public static void b(Context context, String str, Object obj) {
        String simpleName = obj.getClass().getSimpleName();
        if (context != null) {
            if (com.mbridge.msdk.foundation.controller.d.a().e() && f9118a == null) {
                try {
                    f9118a = new FastKV.Builder(com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "share_date").build();
                } catch (Exception unused) {
                    f9118a = null;
                }
            }
            if (f9118a != null) {
                try {
                    if ("String".equals(simpleName)) {
                        f9118a.putString(str, (String) obj);
                    } else if ("Integer".equals(simpleName)) {
                        f9118a.putInt(str, ((Integer) obj).intValue());
                    } else if ("Boolean".equals(simpleName)) {
                        f9118a.putBoolean(str, ((Boolean) obj).booleanValue());
                    } else if ("Float".equals(simpleName)) {
                        f9118a.putFloat(str, ((Float) obj).floatValue());
                    } else if ("Long".equals(simpleName)) {
                        f9118a.putLong(str, ((Long) obj).longValue());
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            }
            SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences("share_date", 0).edit();
            if ("String".equals(simpleName)) {
                edit.putString(str, (String) obj);
            } else if ("Integer".equals(simpleName)) {
                edit.putInt(str, ((Integer) obj).intValue());
            } else if ("Boolean".equals(simpleName)) {
                edit.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if ("Float".equals(simpleName)) {
                edit.putFloat(str, ((Float) obj).floatValue());
            } else if ("Long".equals(simpleName)) {
                edit.putLong(str, ((Long) obj).longValue());
            }
            edit.apply();
        }
    }
}
