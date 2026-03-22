package com.tencent.thumbplayer.tcmedia.api.richmedia;

import com.tencent.thumbplayer.tcmedia.api.TPTimeRange;
/* loaded from: classes6.dex */
public interface ITPRichMediaAsyncRequester {
    void cancelRequest(int i);

    TPRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    int requestFeatureDataAsyncAtTimeMs(int i, long j);

    int requestFeatureDataAsyncAtTimeMsArray(int i, long[] jArr);

    int requestFeatureDataAsyncAtTimeRange(int i, TPTimeRange tPTimeRange);

    int requestFeatureDataAsyncAtTimeRanges(int i, TPTimeRange[] tPTimeRangeArr);

    void setRequesterListener(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener);

    void setRichMediaSource(String str);
}
