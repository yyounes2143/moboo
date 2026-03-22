package com.tencent.thumbplayer.tcmedia.core.richmedia.async;

import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaFeatureData;
/* loaded from: classes6.dex */
public interface ITPNativeRichMediaAsyncRequesterListener {
    void onFeatureDataRequestFailure(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i, int i2, int i3);

    void onFeatureDataRequestSuccess(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i, int i2, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData);

    void onRequesterError(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i);

    void onRequesterPrepared(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester);
}
