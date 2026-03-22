package com.tencent.trtc.hardwareearmonitor.xiaomi;

import android.media.AudioManager;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
/* compiled from: Proguard */
@JNINamespace("liteav::extensions")
/* loaded from: classes6.dex */
public class HardwareEarMonitorXiaomi {
    private AudioManager mAudioManager = (AudioManager) ContextUtils.getApplicationContext().getSystemService("audio");
    private long mNativeHardwareEarMonitorHandle;

    public HardwareEarMonitorXiaomi(long j) {
        this.mNativeHardwareEarMonitorHandle = j;
    }

    public static HardwareEarMonitorXiaomi create(long j) {
        return new HardwareEarMonitorXiaomi(j);
    }

    public String getParameters(String str) {
        try {
            return this.mAudioManager.getParameters(str);
        } catch (Throwable unused) {
            return "";
        }
    }

    public boolean setAudioParams(String str) {
        try {
            this.mAudioManager.setParameters(str);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
