package com.tencent.thumbplayer.tcmedia.core.downloadproxy.api;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ITPDownloadListener {
    void didReleaseMemory(String str);

    void onQuicQualityReportUpdate(String str);

    void willReleaseMemory(String str);
}
