package com.tencent.thumbplayer.tcmedia.core.downloadproxy.api;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ITPPreLoadListener {
    void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str);

    void onPrepareError(int i, int i2, String str);

    void onPrepareOK();
}
