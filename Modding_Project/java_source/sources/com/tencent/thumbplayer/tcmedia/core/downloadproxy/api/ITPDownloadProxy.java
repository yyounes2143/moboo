package com.tencent.thumbplayer.tcmedia.core.downloadproxy.api;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyMsg;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ITPDownloadProxy {
    boolean checkResourceExist(String str, String str2, long j);

    int checkResourceStatus(String str, String str2, int i);

    @Deprecated
    int clearCache(String str, String str2, int i);

    int clearCache(String str, String str2, int i, long j);

    int deinit();

    int deleteOfflineLicenseKeySetId(String str, String str2, String str3);

    String getClipPlayUrl(int i, int i2, int i3);

    String getNativeInfo(int i);

    byte[] getOfflineLicenseKeySetId(String str, String str2, String str3);

    TPDLProxyMsg.TPPDTInfo[] getPDTInfos(int i);

    String getPlayErrorCodeStr(int i);

    String getPlayUrl(int i, int i2);

    float getResourceDownloadProgress(String str, String str2, long j);

    long getResourceSize(String str, String str2);

    int init(Context context, TPDLProxyInitParam tPDLProxyInitParam);

    int pauseDownload(int i);

    void pushEvent(int i);

    @Deprecated
    int removeStorageCache(String str);

    int removeStorageCache(String str, long j);

    int resumeDownload(int i);

    boolean setClipInfo(int i, int i2, String str, TPDownloadParam tPDownloadParam);

    void setLogListener(ITPDLProxyLogListener iTPDLProxyLogListener);

    void setMaxStorageSizeMB(long j);

    void setPlayState(int i, int i2);

    void setUserData(String str, Object obj);

    int startClipOfflineDownload(String str, int i, ITPOfflineDownloadListener iTPOfflineDownloadListener);

    int startClipPlay(String str, int i, ITPPlayListener iTPPlayListener);

    int startClipPreload(String str, int i, ITPPreLoadListener iTPPreLoadListener);

    int startOfflineDownload(String str, TPDownloadParam tPDownloadParam, ITPOfflineDownloadListener iTPOfflineDownloadListener);

    int startPlay(String str, TPDownloadParam tPDownloadParam, ITPPlayListener iTPPlayListener);

    int startPreload(String str, TPDownloadParam tPDownloadParam, ITPPreLoadListener iTPPreLoadListener);

    void startTask(int i);

    void stopOfflineDownload(int i);

    void stopPlay(int i);

    void stopPreload(int i);

    void switchToResolution(int i, int i2, int i3);

    void updateStoragePath(String str);

    void updateTaskInfo(int i, String str, Object obj);
}
