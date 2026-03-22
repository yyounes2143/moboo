package com.tencent.thumbplayer.tcmedia.core.common;
/* loaded from: classes6.dex */
public final class TPDrm {
    private static final String TAG = "TPDrm";
    private static boolean mIsLibLoaded;

    static {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            mIsLibLoaded = true;
        } catch (UnsupportedOperationException e) {
            TPNativeLog.printLog(4, e.getMessage());
            mIsLibLoaded = false;
        }
    }

    public static int[] getDRMCapabilities() {
        if (isLibLoaded()) {
            int[] native_getDRMCapabilities = native_getDRMCapabilities();
            if (native_getDRMCapabilities == null) {
                return new int[0];
            }
            return native_getDRMCapabilities;
        }
        throw new TPNativeLibraryException("Failed to load native library.");
    }

    private static boolean isLibLoaded() {
        return mIsLibLoaded;
    }

    public static native int[] native_getDRMCapabilities();
}
