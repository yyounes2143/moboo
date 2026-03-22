package com.tencent.liteav.base.util;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SoLoader {
    private static final String TAG = "SoLoader";
    private static ExternalSoLoader mExternalSoLoader = null;
    private static boolean mHasLoaded = false;
    private static String mLibraryPath = "";
    private static final Object mLoadLock = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ExternalSoLoader {
        boolean loadLibrary(String[] strArr);
    }

    public static String getLibraryPath() {
        return mLibraryPath;
    }

    public static boolean loadAllLibraries() {
        boolean z;
        synchronized (mLoadLock) {
            try {
                if (!mHasLoaded) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("txsoundtouch");
                    arrayList.add("txffmpeg");
                    arrayList.add("liteavsdk");
                    if (mExternalSoLoader != null) {
                        mHasLoaded = loadLibraryByExternal((String[]) arrayList.toArray(new String[arrayList.size()]));
                    } else if (!TextUtils.isEmpty(mLibraryPath)) {
                        mHasLoaded = loadLibraryInCustomerPath((String[]) arrayList.toArray(new String[arrayList.size()]));
                    } else {
                        mHasLoaded = loadLibraryDefault((String[]) arrayList.toArray(new String[arrayList.size()]));
                    }
                }
                z = mHasLoaded;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static boolean loadLibrary(String str) {
        try {
            synchronized (mLoadLock) {
                ExternalSoLoader externalSoLoader = mExternalSoLoader;
                if (externalSoLoader != null) {
                    return externalSoLoader.loadLibrary(new String[]{str});
                } else if (!TextUtils.isEmpty(mLibraryPath)) {
                    return loadLibrary(mLibraryPath, str);
                } else {
                    System.loadLibrary(str);
                    return true;
                }
            }
        } catch (Throwable th) {
            th.toString();
            return false;
        }
    }

    private static boolean loadLibraryByExternal(String[] strArr) {
        ExternalSoLoader externalSoLoader = mExternalSoLoader;
        if (externalSoLoader != null && strArr != null && strArr.length != 0) {
            try {
                boolean loadLibrary = externalSoLoader.loadLibrary(strArr);
                Arrays.toString(strArr);
                return loadLibrary;
            } catch (Throwable th) {
                Arrays.toString(strArr);
                th.toString();
            }
        }
        return false;
    }

    private static boolean loadLibraryDefault(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            try {
                for (String str : strArr) {
                    System.loadLibrary(str);
                }
                return true;
            } catch (Throwable th) {
                Arrays.toString(strArr);
                th.toString();
            }
        }
        return false;
    }

    private static boolean loadLibraryInCustomerPath(String[] strArr) {
        if (strArr == null || strArr.length == 0 || TextUtils.isEmpty(mLibraryPath)) {
            return false;
        }
        boolean z = false;
        for (String str : strArr) {
            z = loadLibrary(mLibraryPath, str);
            if (!z) {
                break;
            }
        }
        return z;
    }

    public static void setExternalSoLoader(ExternalSoLoader externalSoLoader) {
        synchronized (mLoadLock) {
            mExternalSoLoader = externalSoLoader;
        }
    }

    public static void setLibraryPath(String str) {
        "setLibraryPath ".concat(String.valueOf(str));
        mLibraryPath = str;
    }

    private static boolean loadLibrary(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            System.load(str + "/lib" + str2 + ".so");
            return true;
        } catch (Throwable th) {
            th.toString();
            return false;
        }
    }
}
