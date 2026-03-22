package com.tencent.thumbplayer.tcmedia.core.drm;

import android.media.MediaDrmException;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
import com.tencent.thumbplayer.tcmedia.core.drm.reuse.TPReuseMediaDrm;
import java.util.UUID;
/* loaded from: classes6.dex */
public final class TPMediaDrmPool {
    private static final String TAG = "TPMediaDrmManager";
    private static final TPMediaDrmPool sInstance = new TPMediaDrmPool();
    private boolean mIsMediaDrmReuse = false;

    private TPMediaDrmPool() {
    }

    public static TPMediaDrmPool getInstance() {
        return sInstance;
    }

    public final ITPMediaDrm createTPDirectMediaDrm(UUID uuid) {
        return new TPDirectMediaDrm(uuid);
    }

    public final ITPMediaDrm createTPMediaDrm(UUID uuid) {
        if (this.mIsMediaDrmReuse) {
            try {
                return new TPReuseMediaDrm(uuid);
            } catch (MediaDrmException | TPMediaDrmFatalException e) {
                TPNativeLog.printLog(4, TAG, "reset error:".concat(String.valueOf(e)));
            }
        }
        return new TPDirectMediaDrm(uuid);
    }

    public final void preload() {
        TPReuseMediaDrm.preloadAsync();
    }

    public final void setMediaDrmReuseEnable(boolean z) {
        this.mIsMediaDrmReuse = z;
        if (z) {
            preload();
        }
    }
}
