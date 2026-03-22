package com.tencent.thumbplayer.tcmedia.core.drm;

import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
/* loaded from: classes6.dex */
public final class TPDrmInterruptCallbackProxy implements ITPDrmInterruptCallback {
    private long mNativeContext;

    private TPDrmInterruptCallbackProxy() {
    }

    private native boolean native_isInterrupted();

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPDrmInterruptCallback
    public final boolean isInterrupted() {
        try {
            return native_isInterrupted();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return false;
        }
    }
}
