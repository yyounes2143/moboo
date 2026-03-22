package com.tencent.trtc.hardwareearmonitor.vivo;

import android.media.AudioManager;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
/* compiled from: Proguard */
@JNINamespace("liteav::extensions")
/* loaded from: classes6.dex */
public class HardwareEarMonitorVivo {
    private AudioManager mAudioManager = (AudioManager) ContextUtils.getApplicationContext().getSystemService("audio");
    private long mNativeHardwareEarMonitorHandle;

    public HardwareEarMonitorVivo(long j) {
        this.mNativeHardwareEarMonitorHandle = j;
    }

    public static HardwareEarMonitorVivo create(long j) {
        return new HardwareEarMonitorVivo(j);
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
