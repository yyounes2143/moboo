package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.util.LiteavLog;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class j {
    private static final String TAG = "RefCounted";
    private static final com.tencent.liteav.base.a.a sThrottler = new com.tencent.liteav.base.a.a(TimeUnit.SECONDS.toMillis(1));
    private final g mRecycler;
    private String mStackTrace;
    private final AtomicInteger mRefCnt = new AtomicInteger(0);
    private long mLastUsedTimestamp = -1;

    public j(g gVar) {
        this.mRecycler = gVar;
    }

    public void finalize() throws Throwable {
        super.finalize();
        if (this.mRecycler != null && this.mRefCnt.get() != 0) {
            LiteavLog.e(sThrottler, TAG, "Object's reference count(%d) isn't zero when finalize.\n retainTrack:%s", Integer.valueOf(this.mRefCnt.get()), this.mStackTrace);
        }
    }

    public long getLastUsedTimestamp() {
        return this.mLastUsedTimestamp;
    }

    public void release() {
        g gVar;
        if (this.mRefCnt.decrementAndGet() == 0 && (gVar = this.mRecycler) != null) {
            gVar.a(this);
        }
    }

    public int retain() {
        this.mStackTrace = null;
        return this.mRefCnt.addAndGet(1);
    }

    public void updateLastUsedTimestamp(long j) {
        this.mLastUsedTimestamp = j;
    }
}
