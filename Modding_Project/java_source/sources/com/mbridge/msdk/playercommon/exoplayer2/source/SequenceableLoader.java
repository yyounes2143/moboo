package com.mbridge.msdk.playercommon.exoplayer2.source;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface SequenceableLoader {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface Callback<T extends SequenceableLoader> {
        void onContinueLoadingRequested(T t);
    }

    boolean continueLoading(long j);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    void reevaluateBuffer(long j);
}
