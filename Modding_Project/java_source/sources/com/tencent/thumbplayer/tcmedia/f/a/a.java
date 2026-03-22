package com.tencent.thumbplayer.tcmedia.f.a;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.api.TPTimeRange;
import com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester;
import com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequesterListener;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaFeatureData;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaFeature;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeRichMediaFeatureData;
import com.tencent.thumbplayer.tcmedia.core.richmedia.TPNativeTimeRange;
import com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequester;
import com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener;
import com.tencent.thumbplayer.tcmedia.core.richmedia.async.TPNativeRichMediaAsyncRequester;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class a implements ITPRichMediaAsyncRequester {

    /* renamed from: a  reason: collision with root package name */
    private final ITPNativeRichMediaAsyncRequester f10606a;

    /* renamed from: com.tencent.thumbplayer.tcmedia.f.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0227a implements ITPNativeRichMediaAsyncRequesterListener {
        private final ITPRichMediaAsyncRequesterListener b;

        public C0227a(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener) {
            this.b = iTPRichMediaAsyncRequesterListener;
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onFeatureDataRequestFailure(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i, int i2, int i3) {
            this.b.onFeatureDataRequestFailure(a.this, i, i2, i3);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onFeatureDataRequestSuccess(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i, int i2, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData) {
            this.b.onFeatureDataRequestSuccess(a.this, i, i2, new TPRichMediaFeatureData(tPNativeRichMediaFeatureData));
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onRequesterError(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester, int i) {
            this.b.onRequesterError(a.this, i);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.richmedia.async.ITPNativeRichMediaAsyncRequesterListener
        public void onRequesterPrepared(ITPNativeRichMediaAsyncRequester iTPNativeRichMediaAsyncRequester) {
            this.b.onRequesterPrepared(a.this);
        }
    }

    public a(Context context) {
        this.f10606a = new TPNativeRichMediaAsyncRequester(context);
    }

    private TPRichMediaFeature[] a(TPNativeRichMediaFeature[] tPNativeRichMediaFeatureArr) {
        if (tPNativeRichMediaFeatureArr == null || tPNativeRichMediaFeatureArr.length == 0) {
            return new TPRichMediaFeature[0];
        }
        TPRichMediaFeature[] tPRichMediaFeatureArr = new TPRichMediaFeature[tPNativeRichMediaFeatureArr.length];
        for (int i = 0; i < tPNativeRichMediaFeatureArr.length; i++) {
            tPRichMediaFeatureArr[i] = new TPRichMediaFeature(tPNativeRichMediaFeatureArr[i]);
        }
        return tPRichMediaFeatureArr;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public void cancelRequest(int i) {
        this.f10606a.cancelRequest(i);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public TPRichMediaFeature[] getFeatures() {
        return a(this.f10606a.getFeatures());
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public void prepareAsync() {
        this.f10606a.prepareAsync();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public void release() {
        this.f10606a.release();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMs(int i, long j) {
        return this.f10606a.requestFeatureDataAsyncAtTimeMs(i, j);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeMsArray(int i, long[] jArr) {
        return this.f10606a.requestFeatureDataAsyncAtTimeMsArray(i, jArr);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRange(int i, TPTimeRange tPTimeRange) {
        if (tPTimeRange == null) {
            TPLogUtil.w("TPRichMediaAsyncRequester", "requestFeatureDataAsyncAtTimeRange, timeRange == null");
            return -1;
        }
        return this.f10606a.requestFeatureDataAsyncAtTimeRange(i, new TPNativeTimeRange(tPTimeRange.getStartTimeMs(), tPTimeRange.getEndTimeMs()));
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public int requestFeatureDataAsyncAtTimeRanges(int i, TPTimeRange[] tPTimeRangeArr) {
        TPNativeTimeRange[] a2 = a(tPTimeRangeArr);
        if (a2.length == 0) {
            TPLogUtil.w("TPRichMediaAsyncRequester", "requestFeatureDataAsyncAtTimeRanges, toNativeTimeRanges return empty array");
            return -1;
        }
        return this.f10606a.requestFeatureDataAsyncAtTimeRanges(i, a2);
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public void setRequesterListener(ITPRichMediaAsyncRequesterListener iTPRichMediaAsyncRequesterListener) {
        this.f10606a.setRequesterListener(new C0227a(iTPRichMediaAsyncRequesterListener));
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.richmedia.ITPRichMediaAsyncRequester
    public void setRichMediaSource(String str) {
        this.f10606a.setRichMediaSource(str);
    }

    private TPNativeTimeRange[] a(TPTimeRange[] tPTimeRangeArr) {
        if (tPTimeRangeArr == null || tPTimeRangeArr.length == 0) {
            return new TPNativeTimeRange[0];
        }
        TPNativeTimeRange[] tPNativeTimeRangeArr = new TPNativeTimeRange[tPTimeRangeArr.length];
        for (int i = 0; i < tPTimeRangeArr.length; i++) {
            TPTimeRange tPTimeRange = tPTimeRangeArr[i];
            if (tPTimeRange == null) {
                return new TPNativeTimeRange[0];
            }
            tPNativeTimeRangeArr[i] = new TPNativeTimeRange(tPTimeRange.getStartTimeMs(), tPTimeRange.getEndTimeMs());
        }
        return tPNativeTimeRangeArr;
    }
}
