package com.tencent.rtmp;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.common.VodPlayerControl;
import com.tencent.liteav.txcplayer.common.b;
import com.tencent.liteav.txcplayer.common.c;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXPlayerGlobalSetting {
    private static final String TAG = "TXPlayerGlobalSetting";
    private static DrmProvisionEnv sDrmProvisionEnv = DrmProvisionEnv.DRM_PROVISION_ENV_COM;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum DrmProvisionEnv {
        DRM_PROVISION_ENV_COM,
        DRM_PROVISION_ENV_CN
    }

    public static String getCacheFolderPath() {
        return b.a();
    }

    public static DrmProvisionEnv getDrmProvisionEnv() {
        return sDrmProvisionEnv;
    }

    public static int getMaxCacheSize() {
        return Math.max(b.b(), 0);
    }

    public static Object getOptions(int i) {
        if (i == 1000) {
            if (c.a(LicenseChecker.a.PLAYER_PROJECTION)) {
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }
        return null;
    }

    public static void setCacheFolderPath(String str) {
        LiteavLog.i(TAG, "setCacheFolderPath: ".concat(String.valueOf(str)));
        b.a(str);
        com.tencent.liteav.txcvodplayer.c.a.a().b();
    }

    public static void setDrmProvisionEnv(DrmProvisionEnv drmProvisionEnv) {
        LiteavLog.i(TAG, "setDrmProvisionEnv: ".concat(String.valueOf(drmProvisionEnv)));
        sDrmProvisionEnv = drmProvisionEnv;
    }

    public static void setLicenseFlexibleValid(boolean z) {
        LiteavLog.i(TAG, "setLicenseFlexibleValid: ".concat(String.valueOf(z)));
        LiteavLog.i("VodLicenseCheck", "setLicenseFlexibleValid isOpen=".concat(String.valueOf(z)));
        VodPlayerControl.nativeSetLicenseFlexibleValid(z);
    }

    public static void setMaxCacheSize(int i) {
        LiteavLog.i(TAG, "setMaxCacheSize(MB): ".concat(String.valueOf(i)));
        b.a(i);
    }

    public static void setPlayCGIHosts(List<String> list) {
        LiteavLog.i(TAG, "setPlayCGIHosts: ".concat(String.valueOf(list)));
        b.a(list);
    }
}
