package com.tencent.thumbplayer.tcmedia.api.resourceloader;
/* loaded from: classes6.dex */
public interface ITPAssetResourceLoadingDataRequest {
    long getCurrentOffset();

    long getRequestedLength();

    long getRequestedOffset();

    void notifyDataReady(long j, long j2);

    void respondWithData(byte[] bArr);
}
