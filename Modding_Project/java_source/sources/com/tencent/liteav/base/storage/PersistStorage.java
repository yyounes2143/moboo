package com.tencent.liteav.base.storage;

import android.content.SharedPreferences;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
@JNINamespace("liteav")
/* loaded from: classes6.dex */
public class PersistStorage {
    public static final String GLOBAL_DOMAIN = "com.liteav.storage.global";
    private static final String LITEAV_PERSIST_STORAGE_SP_NAME = "com.liteav.persist.storage";
    private String mDomain;
    private final SharedPreferences.Editor mEditor;
    private final SharedPreferences mSharedPreferences;

    public PersistStorage(String str) {
        this(str, false);
    }

    private String[] filterSet(Set<String> set, String str) {
        if (str != null && !str.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (String str2 : set) {
                if (str2.startsWith(str)) {
                    arrayList.add(str2.substring(str.length()));
                }
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            return strArr;
        }
        return (String[]) set.toArray(new String[set.size()]);
    }

    private void initializeDomain(String str, boolean z) {
        if (!z) {
            if (str != null && !str.isEmpty()) {
                this.mDomain = str + "|";
                return;
            }
            this.mDomain = "null|";
            return;
        }
        this.mDomain = "";
    }

    public static int integerToBase(Integer num) {
        return num.intValue();
    }

    public static long longToBase(Long l) {
        return l.longValue();
    }

    public void clear(String str) {
        SharedPreferences.Editor editor = this.mEditor;
        editor.remove(this.mDomain + str);
    }

    public void commit() {
        this.mEditor.apply();
    }

    public String[] getAllKeys() {
        Map<String, ?> all = this.mSharedPreferences.getAll();
        if (all != null && !all.isEmpty()) {
            return filterSet(all.keySet(), this.mDomain);
        }
        return new String[0];
    }

    public Integer getInt(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (!sharedPreferences.contains(this.mDomain + str)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences2 = this.mSharedPreferences;
            return Integer.valueOf(sharedPreferences2.getInt(this.mDomain + str, -1));
        } catch (Throwable unused) {
            return null;
        }
    }

    public Long getLong(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (!sharedPreferences.contains(this.mDomain + str)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences2 = this.mSharedPreferences;
            return Long.valueOf(sharedPreferences2.getLong(this.mDomain + str, -1L));
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getString(String str) {
        SharedPreferences sharedPreferences = this.mSharedPreferences;
        if (!sharedPreferences.contains(this.mDomain + str)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences2 = this.mSharedPreferences;
            return sharedPreferences2.getString(this.mDomain + str, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void put(String str, int i) {
        SharedPreferences.Editor editor = this.mEditor;
        editor.putInt(this.mDomain + str, i);
    }

    public PersistStorage(String str, boolean z) {
        initializeDomain(str, z);
        SharedPreferences sharedPreferences = ContextUtils.getApplicationContext().getSharedPreferences(z ? str : LITEAV_PERSIST_STORAGE_SP_NAME, 0);
        this.mSharedPreferences = sharedPreferences;
        this.mEditor = sharedPreferences.edit();
    }

    public void put(String str, long j) {
        SharedPreferences.Editor editor = this.mEditor;
        editor.putLong(this.mDomain + str, j);
    }

    public void put(String str, String str2) {
        SharedPreferences.Editor editor = this.mEditor;
        editor.putString(this.mDomain + str, str2);
    }
}
