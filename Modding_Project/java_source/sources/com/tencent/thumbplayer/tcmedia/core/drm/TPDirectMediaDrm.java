package com.tencent.thumbplayer.tcmedia.core.drm;

import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.UnsupportedSchemeException;
import android.os.Build;
import android.os.Handler;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog;
import com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
/* loaded from: classes6.dex */
public class TPDirectMediaDrm implements ITPMediaDrm {
    private static final String TAG = "TPDirectMediaDrm";
    private MediaDrm mMediaDrm;
    private ITPMediaDrm.OnEventListener mOnEventListener;
    private ITPMediaDrm.OnExpirationUpdateListener mOnExpirationUpdateListener;
    private ITPMediaDrm.OnKeyStatusChangeListener mOnKeyStatusChangeListener;
    private boolean mReleased;

    public TPDirectMediaDrm(UUID uuid) {
        this.mReleased = false;
        try {
            this.mMediaDrm = new MediaDrm(uuid);
        } catch (UnsupportedSchemeException e) {
            throw e;
        } catch (Throwable th) {
            this.mReleased = true;
            TPNativeLog.printLog(4, TAG, "new MediaDrm failed, e:".concat(String.valueOf(th)));
        }
        TPNativeLog.printLog(2, TAG, "TPDirectMediaDrm constructor");
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void close() {
        if (this.mReleased) {
            return;
        }
        this.mMediaDrm.setOnEventListener(null);
        this.mOnEventListener = null;
        int i = Build.VERSION.SDK_INT;
        this.mMediaDrm.setOnExpirationUpdateListener((MediaDrm.OnExpirationUpdateListener) null, (Handler) null);
        this.mOnExpirationUpdateListener = null;
        this.mMediaDrm.setOnKeyStatusChangeListener((MediaDrm.OnKeyStatusChangeListener) null, (Handler) null);
        this.mOnKeyStatusChangeListener = null;
        if (i >= 28) {
            this.mMediaDrm.release();
        } else {
            this.mMediaDrm.release();
        }
        this.mMediaDrm = null;
        this.mReleased = true;
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void closeSession(byte[] bArr) {
        if (this.mReleased) {
            return;
        }
        this.mMediaDrm.closeSession(bArr);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized MediaDrm.KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i, HashMap<String, String> hashMap) {
        try {
            if (!this.mReleased) {
                try {
                } catch (MediaDrmException e) {
                    throw e;
                } catch (Throwable th) {
                    TPNativeLog.printLog(4, TAG, th.toString());
                    close();
                    throw new TPMediaDrmFatalException(th.getMessage());
                }
            } else {
                throw new TPMediaDrmFatalException("released");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mMediaDrm.getKeyRequest(bArr, bArr2, str, i, hashMap);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized String getPropertyString(String str) {
        if (this.mReleased) {
            return "";
        }
        return this.mMediaDrm.getPropertyString(str);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized MediaDrm.ProvisionRequest getProvisionRequest() {
        try {
            if (!this.mReleased) {
            } else {
                throw new TPMediaDrmFatalException("released");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mMediaDrm.getProvisionRequest();
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized byte[] openSession() {
        try {
            if (!this.mReleased) {
                try {
                } catch (MediaDrmException e) {
                    throw e;
                }
            } else {
                throw new TPMediaDrmFatalException("released");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mMediaDrm.openSession();
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        try {
            if (!this.mReleased) {
                try {
                } catch (MediaDrmException e) {
                    throw e;
                }
            } else {
                throw new TPMediaDrmFatalException("released");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mMediaDrm.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void provideProvisionResponse(byte[] bArr) {
        if (this.mReleased) {
            return;
        }
        try {
            this.mMediaDrm.provideProvisionResponse(bArr);
        } catch (MediaDrmException e) {
            throw e;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized HashMap<String, String> queryKeyStatus(byte[] bArr) {
        if (this.mReleased) {
            return new HashMap<>();
        }
        return this.mMediaDrm.queryKeyStatus(bArr);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void removeKeys(byte[] bArr) {
        if (this.mReleased) {
            return;
        }
        this.mMediaDrm.removeKeys(bArr);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void restoreKeys(byte[] bArr, byte[] bArr2) {
        if (this.mReleased) {
            return;
        }
        this.mMediaDrm.restoreKeys(bArr, bArr2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void setOnExpirationUpdateListener(ITPMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener, Handler handler) {
        if (this.mReleased) {
            return;
        }
        this.mOnExpirationUpdateListener = onExpirationUpdateListener;
        this.mMediaDrm.setOnExpirationUpdateListener(new MediaDrm.OnExpirationUpdateListener() { // from class: com.tencent.thumbplayer.tcmedia.core.drm.TPDirectMediaDrm.2
            @Override // android.media.MediaDrm.OnExpirationUpdateListener
            public void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j) {
                ITPMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener2 = TPDirectMediaDrm.this.mOnExpirationUpdateListener;
                if (onExpirationUpdateListener2 != null) {
                    onExpirationUpdateListener2.onExpirationUpdate(TPDirectMediaDrm.this, bArr, j);
                }
            }
        }, handler);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void setOnKeyStatusChangeListener(ITPMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener, Handler handler) {
        if (this.mReleased) {
            return;
        }
        this.mOnKeyStatusChangeListener = onKeyStatusChangeListener;
        this.mMediaDrm.setOnKeyStatusChangeListener(new MediaDrm.OnKeyStatusChangeListener() { // from class: com.tencent.thumbplayer.tcmedia.core.drm.TPDirectMediaDrm.1
            @Override // android.media.MediaDrm.OnKeyStatusChangeListener
            public void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List<MediaDrm.KeyStatus> list, boolean z) {
                ITPMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener2 = TPDirectMediaDrm.this.mOnKeyStatusChangeListener;
                if (onKeyStatusChangeListener2 != null) {
                    onKeyStatusChangeListener2.onKeyStatusChange(TPDirectMediaDrm.this, bArr, list, z);
                }
            }
        }, handler);
    }

    @Override // com.tencent.thumbplayer.tcmedia.core.drm.ITPMediaDrm
    public synchronized void setPropertyString(String str, String str2) {
        if (this.mReleased) {
            return;
        }
        this.mMediaDrm.setPropertyString(str, str2);
    }
}
