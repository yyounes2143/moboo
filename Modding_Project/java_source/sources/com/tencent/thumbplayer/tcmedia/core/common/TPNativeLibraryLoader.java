package com.tencent.thumbplayer.tcmedia.core.common;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes6.dex */
public class TPNativeLibraryLoader {
    private static final String DEFAULT_LIB_PLAYER_CORE_VERSION = "2.32.0.525.min";
    private static final String MAIN_PLAYER_CORE_VERSION = "2.32.0";
    private static boolean mIsLibLoaded = false;
    private static Object mIsLibLoadedLock = new Object();
    private static final boolean mIsNeedLoadThirdPartiesAndFFmpeg = true;
    private static final String mLibIjkPrefix = "ijkhlscache-master";
    private static ITPNativeLibraryExternalLoader mLibLoader = null;
    private static final boolean mLibNameHasArchSuffix = false;
    private static final String mLibPlayerCorePrefix = "tpcore-master";
    private static final String mLibThirdPartiesPrefix = "tpthirdparties-master";
    private static final int mPlayerCoreSupportMinAndroidAPILevel = 14;

    private static native String _getPlayerCoreVersion();

    public static String getLibVersion() {
        return getPlayerCoreVersion();
    }

    public static String getPlayerCoreVersion() {
        try {
            return _getPlayerCoreVersion();
        } catch (Throwable unused) {
            TPNativeLog.printLog(2, "getPlayerCoreVersion: *.so is not loaded yet, return the hard-coded version number:2.32.0.525.min");
            return DEFAULT_LIB_PLAYER_CORE_VERSION;
        }
    }

    public static boolean isLibLoaded() {
        return mIsLibLoaded;
    }

    public static boolean isLibLoadedAndTryToLoad() {
        boolean z;
        try {
            loadLibIfNeeded(null);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, "TPNativeLibraryLoader isLibLoaded error:" + th.getMessage());
        }
        synchronized (mIsLibLoadedLock) {
            z = mIsLibLoaded;
        }
        return z;
    }

    private static boolean isMatchJavaAndPlayerCore(String str, String str2) {
        TPNativeLog.printLog(2, "javaVersion:" + str + ", coreVersion:" + str2);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String[] split = str.split("\\.");
            String[] split2 = str2.split("\\.");
            if (split.length >= 3 && split2.length >= 3) {
                for (int i = 0; i < 3; i++) {
                    if (!split[i].matches(split2[i])) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    private static boolean loadLib(Context context) {
        boolean loadLibDefault;
        boolean loadLibDefault2;
        TPNativeLog.printLog(2, "loadLib cpu arch:" + TPSystemInfo.getCpuArchitecture());
        if (TPSystemInfo.getApiLevel() < 14) {
            TPNativeLog.printLog(3, "so load failed, current api level " + TPSystemInfo.getApiLevel() + " is less than 14");
            return false;
        } else if (TPSystemInfo.getCpuArchitecture() == 3 || TPSystemInfo.getCpuArchitecture() == 4 || TPSystemInfo.getCpuArchitecture() == 0) {
            return false;
        } else {
            String concat = mLibThirdPartiesPrefix.concat("");
            ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader = mLibLoader;
            if (iTPNativeLibraryExternalLoader != null) {
                loadLibDefault = iTPNativeLibraryExternalLoader.loadLib(concat, DEFAULT_LIB_PLAYER_CORE_VERSION);
            } else {
                loadLibDefault = loadLibDefault(concat, context);
            }
            if (!loadLibDefault) {
                TPNativeLog.printLog(4, "Failed to load ".concat(String.valueOf(concat)));
                return false;
            }
            String concat2 = mLibPlayerCorePrefix.concat("");
            ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader2 = mLibLoader;
            if (iTPNativeLibraryExternalLoader2 != null) {
                loadLibDefault2 = iTPNativeLibraryExternalLoader2.loadLib(concat2, DEFAULT_LIB_PLAYER_CORE_VERSION);
            } else {
                loadLibDefault2 = loadLibDefault(concat2, context);
            }
            if (loadLibDefault2) {
                String playerCoreVersion = getPlayerCoreVersion();
                boolean isMatchJavaAndPlayerCore = isMatchJavaAndPlayerCore(MAIN_PLAYER_CORE_VERSION, playerCoreVersion);
                if (!isMatchJavaAndPlayerCore) {
                    TPNativeLog.printLog(4, "nativePlayerCoreVer(" + playerCoreVersion + ") doesn't match javaPlayerCoreVer:(2.32.0)");
                }
                loadLibDefault2 = isMatchJavaAndPlayerCore;
            }
            String concat3 = mLibIjkPrefix.concat("");
            ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader3 = mLibLoader;
            if (iTPNativeLibraryExternalLoader3 != null) {
                iTPNativeLibraryExternalLoader3.loadLib(concat3, DEFAULT_LIB_PLAYER_CORE_VERSION);
            } else {
                loadLibDefault(concat3, context);
            }
            if (loadLibDefault2) {
                TPNativeLog.printLog(2, "Native libs loaded successfully");
                return loadLibDefault2;
            }
            TPNativeLog.printLog(4, "Failed to load native libs");
            return loadLibDefault2;
        }
    }

    private static boolean loadLibDefault(String str, Context context) {
        boolean z = false;
        try {
            TPNativeLog.printLog(2, "loadLibDefault loading ".concat(String.valueOf(str)));
            System.loadLibrary(str);
            z = true;
            TPNativeLog.printLog(2, "loadLibDefault " + str + " loaded successfully");
        } catch (Throwable th) {
            TPNativeLog.printLog(4, "loadLibDefault failed to load " + str + "," + th.getMessage());
        }
        if (!z && context != null && TPSystemInfo.getCpuArchitecture() >= 6) {
            try {
                TPNativeLog.printLog(2, "loadLibDefault try to load " + str + " from APK");
                z = TPLoadLibFromApk.load(str, TPNativeLibraryLoader.class.getClassLoader(), context);
                if (z) {
                    TPNativeLog.printLog(2, "loadLibDefault loaded " + str + " from APK successfully");
                } else {
                    TPNativeLog.printLog(4, "loadLibDefault loaded " + str + " from APK failed");
                }
            } catch (Throwable th2) {
                TPNativeLog.printLog(4, "loadLibDefault loaded " + str + " from APK failed," + th2.getMessage());
            }
        }
        return z;
    }

    public static void loadLibIfNeeded(Context context) {
        String str;
        synchronized (mIsLibLoadedLock) {
            try {
                if (!mIsLibLoaded) {
                    boolean loadLib = loadLib(context);
                    mIsLibLoaded = loadLib;
                    if (loadLib) {
                        str = "TPNativeLibraryLoader load lib successfully";
                    } else {
                        str = "TPNativeLibraryLoader load lib failed";
                    }
                    TPNativeLog.printLog(2, str);
                }
                if (!mIsLibLoaded) {
                    throw new UnsupportedOperationException("Failed to load native library");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setLibLoader(ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader) {
        mLibLoader = iTPNativeLibraryExternalLoader;
    }
}
