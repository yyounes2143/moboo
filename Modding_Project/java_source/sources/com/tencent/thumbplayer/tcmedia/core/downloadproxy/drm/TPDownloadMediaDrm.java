package com.tencent.thumbplayer.tcmedia.core.downloadproxy.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPDLProxyLog;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TPDownloadMediaDrm {
    private static final String FILE_NAME = "TPDownloadMediaDrm";
    private static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    public static final String PROPERTY_LICENSE_DURATION_REMAINING = "LicenseDurationRemaining";
    public static final String PROPERTY_PLAYBACK_DURATION_REMAINING = "PlaybackDurationRemaining";
    private MediaDrm mMediaDrm;
    private OnEventListener mOnEventListener;
    private OnExpirationUpdateListener mOnExpirationUpdateListener;
    private OnKeyStatusChangeListener mOnKeyStatusChangeListener;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class DownloadDrmSession {
        byte[] mSessionId;
        int mStatus;

        public DownloadDrmSession(int i, byte[] bArr) {
            this.mStatus = i;
            this.mSessionId = bArr;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class KeyRequest {
        byte[] mData;
        int mRequestType;
        int mStatus;

        public KeyRequest(int i, byte[] bArr, int i2) {
            this.mRequestType = i;
            this.mData = bArr;
            this.mStatus = i2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnEventListener {
        void onEvent(TPDownloadMediaDrm tPDownloadMediaDrm, byte[] bArr, int i, int i2, byte[] bArr2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnExpirationUpdateListener {
        void onExpirationUpdate(TPDownloadMediaDrm tPDownloadMediaDrm, byte[] bArr, long j);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnKeyStatusChangeListener {
        void onKeyStatusChange(TPDownloadMediaDrm tPDownloadMediaDrm, byte[] bArr, List<MediaDrm.KeyStatus> list, boolean z);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class ProvisionRequest {
        byte[] mData;
        String mDefaultUrl;

        public ProvisionRequest(String str, byte[] bArr) {
            this.mDefaultUrl = str;
            this.mData = bArr;
        }
    }

    private TPDownloadMediaDrm(UUID uuid) throws UnsupportedSchemeException {
        this.mMediaDrm = new MediaDrm(uuid);
    }

    public static synchronized TPDownloadMediaDrm createDownloadMediaDrm(String str) {
        synchronized (TPDownloadMediaDrm.class) {
            TPDownloadMediaDrm tPDownloadMediaDrm = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                tPDownloadMediaDrm = new TPDownloadMediaDrm(UUID.fromString(str));
            } catch (Exception e) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "createDownloadMediaDrm exception : " + e.getMessage());
            }
            return tPDownloadMediaDrm;
        }
    }

    private long getLicenseDurationRemainingSec(byte[] bArr) {
        long j;
        long j2;
        try {
            HashMap<String, String> queryKeyStatus = this.mMediaDrm.queryKeyStatus(bArr);
            if (queryKeyStatus != null && queryKeyStatus.size() > 0) {
                String str = queryKeyStatus.get("LicenseDurationRemaining");
                if (!TextUtils.isEmpty(str)) {
                    j = Long.parseLong(str);
                } else {
                    j = 0;
                }
                String str2 = queryKeyStatus.get("PlaybackDurationRemaining");
                if (!TextUtils.isEmpty(str2)) {
                    j2 = Long.parseLong(str2);
                } else {
                    j2 = 0;
                }
                return Math.min(j, j2);
            }
        } catch (Throwable th) {
            TPDLProxyLog.w(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "queryKeyStatus failed, error:" + th.toString());
        }
        return 0L;
    }

    public static synchronized int getSdkIntVersion() {
        int i;
        synchronized (TPDownloadMediaDrm.class) {
            i = Build.VERSION.SDK_INT;
        }
        return i;
    }

    public static synchronized boolean isCryptoSchemeSupported(String str) {
        boolean isCryptoSchemeSupported;
        synchronized (TPDownloadMediaDrm.class) {
            isCryptoSchemeSupported = MediaDrm.isCryptoSchemeSupported(UUID.fromString(str));
        }
        return isCryptoSchemeSupported;
    }

    public void close() {
        MediaDrm mediaDrm = this.mMediaDrm;
        if (mediaDrm == null) {
            return;
        }
        mediaDrm.setOnEventListener(null);
        this.mOnEventListener = null;
        this.mMediaDrm.setOnExpirationUpdateListener((MediaDrm.OnExpirationUpdateListener) null, (Handler) null);
        this.mOnExpirationUpdateListener = null;
        this.mMediaDrm.setOnKeyStatusChangeListener((MediaDrm.OnKeyStatusChangeListener) null, (Handler) null);
        this.mOnKeyStatusChangeListener = null;
        this.mMediaDrm.release();
        this.mMediaDrm = null;
    }

    public void closeSession(byte[] bArr) {
        this.mMediaDrm.closeSession(bArr);
    }

    public KeyRequest getKeyRequest(byte[] bArr, byte[] bArr2, String str, int i) {
        try {
            MediaDrm.KeyRequest keyRequest = this.mMediaDrm.getKeyRequest(bArr, bArr2, str, i, null);
            return new KeyRequest(keyRequest.getRequestType(), keyRequest.getData(), 0);
        } catch (NotProvisionedException unused) {
            return new KeyRequest(-1, null, -1);
        }
    }

    public byte[] getPropertyByteArray(String str) {
        return this.mMediaDrm.getPropertyByteArray(str);
    }

    public String getPropertyString(String str) {
        return this.mMediaDrm.getPropertyString(str);
    }

    public ProvisionRequest getProvisionRequest() {
        try {
            MediaDrm.ProvisionRequest provisionRequest = this.mMediaDrm.getProvisionRequest();
            return new ProvisionRequest(provisionRequest.getDefaultUrl(), provisionRequest.getData());
        } catch (Exception unused) {
            return new ProvisionRequest("", new byte[0]);
        }
    }

    public DownloadDrmSession openSession() {
        int i;
        byte[] bArr = null;
        try {
            bArr = this.mMediaDrm.openSession();
            i = 0;
        } catch (NotProvisionedException unused) {
            i = -1;
        } catch (Exception unused2) {
            i = -2;
        }
        return new DownloadDrmSession(i, bArr);
    }

    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        try {
            return this.mMediaDrm.provideKeyResponse(bArr, bArr2);
        } catch (DeniedByServerException e) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "provideKeyResponse DeniedByServerException : " + e.getMessage());
            return new byte[]{-2};
        } catch (NotProvisionedException e2) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "provideKeyResponse NotProvisionedException : " + e2.getMessage());
            return new byte[]{-1};
        }
    }

    public int provideProvisionResponse(byte[] bArr) {
        try {
            this.mMediaDrm.provideProvisionResponse(bArr);
            return 0;
        } catch (DeniedByServerException unused) {
            return -1;
        }
    }

    public int removeKeys(byte[] bArr) {
        try {
            this.mMediaDrm.removeKeys(bArr);
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    public int restoreKeys(byte[] bArr, byte[] bArr2) {
        try {
            this.mMediaDrm.restoreKeys(bArr, bArr2);
            long licenseDurationRemainingSec = getLicenseDurationRemainingSec(bArr);
            if (licenseDurationRemainingSec > 60) {
                return 0;
            }
            TPDLProxyLog.w(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "Offline license has expired or will expire soon, Remaining seconds: ".concat(String.valueOf(licenseDurationRemainingSec)));
            this.mMediaDrm.removeKeys(bArr);
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public void setOnEventListener(OnEventListener onEventListener) {
        this.mMediaDrm.setOnEventListener(new MediaDrm.OnEventListener() { // from class: com.tencent.thumbplayer.tcmedia.core.downloadproxy.drm.TPDownloadMediaDrm.1
            @Override // android.media.MediaDrm.OnEventListener
            public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                if (TPDownloadMediaDrm.this.mOnEventListener != null) {
                    TPDownloadMediaDrm.this.mOnEventListener.onEvent(TPDownloadMediaDrm.this, bArr, i, i2, bArr2);
                }
            }
        });
    }

    public void setOnExpirationUpdateListener(OnExpirationUpdateListener onExpirationUpdateListener, Handler handler) {
        this.mOnExpirationUpdateListener = onExpirationUpdateListener;
        this.mMediaDrm.setOnExpirationUpdateListener(new MediaDrm.OnExpirationUpdateListener() { // from class: com.tencent.thumbplayer.tcmedia.core.downloadproxy.drm.TPDownloadMediaDrm.3
            @Override // android.media.MediaDrm.OnExpirationUpdateListener
            public void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j) {
                if (TPDownloadMediaDrm.this.mOnExpirationUpdateListener != null) {
                    TPDownloadMediaDrm.this.mOnExpirationUpdateListener.onExpirationUpdate(TPDownloadMediaDrm.this, bArr, j);
                }
            }
        }, handler);
    }

    public synchronized void setOnKeyStatusChangeListener(OnKeyStatusChangeListener onKeyStatusChangeListener, Handler handler) {
        this.mOnKeyStatusChangeListener = onKeyStatusChangeListener;
        this.mMediaDrm.setOnKeyStatusChangeListener(new MediaDrm.OnKeyStatusChangeListener() { // from class: com.tencent.thumbplayer.tcmedia.core.downloadproxy.drm.TPDownloadMediaDrm.2
            @Override // android.media.MediaDrm.OnKeyStatusChangeListener
            public void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List<MediaDrm.KeyStatus> list, boolean z) {
                if (TPDownloadMediaDrm.this.mOnKeyStatusChangeListener != null) {
                    TPDownloadMediaDrm.this.mOnKeyStatusChangeListener.onKeyStatusChange(TPDownloadMediaDrm.this, bArr, list, z);
                }
            }
        }, handler);
    }

    public void setPropertyByteArray(String str, byte[] bArr) {
        this.mMediaDrm.setPropertyByteArray(str, bArr);
    }

    public void setPropertyString(String str, String str2) {
        this.mMediaDrm.setPropertyString(str, str2);
    }
}
