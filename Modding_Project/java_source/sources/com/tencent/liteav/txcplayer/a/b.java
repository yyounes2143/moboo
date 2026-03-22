package com.tencent.liteav.txcplayer.a;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {
    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            int codecCount = MediaCodecList.getCodecCount();
            for (int i = 0; i < codecCount; i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    for (String str2 : codecInfoAt.getSupportedTypes()) {
                        if (str2.equalsIgnoreCase(str)) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        } catch (Throwable th) {
            LiteavLog.e("MediaCodecUtils", "isMimeTypeSupported exception: " + th.getMessage());
        }
        return false;
    }
}
