package com.changdu.mobovideo.localpush;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0084\u0001\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u001e\u001a\u0004\b\"\u0010 R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001e\u001a\u0004\b#\u0010 R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b$\u0010\u001e\u001a\u0004\b%\u0010 R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b&\u0010\u001e\u001a\u0004\b&\u0010 R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b'\u0010\u001e\u001a\u0004\b$\u0010 R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b%\u0010\u001e\u001a\u0004\b'\u0010 R\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b#\u0010(\u001a\u0004\b)\u0010\u0019R\u0017\u0010\f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b*\u0010(\u001a\u0004\b+\u0010\u0019R\u0017\u0010\r\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\"\u0010(\u001a\u0004\b*\u0010\u0019R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushState;", "", "", "lastActualPushAtMs", "queueTailAtMs", "nextSignInCandidateAtMs", "lastSignInPushAtMs", "lastRecallPushAtMs", "lastPromotionPushAtMs", "lastRecallTriggerAtMs", "", "signInContentIndex", "recallContentIndex", "promotionContentIndex", "", "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;", "recentPromotionSeries", "<init>", "(JJJJJJJIIILjava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJJJJJJIIILjava/util/List;)Lcom/changdu/mobovideo/localpush/LocalPushState;", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushState {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<PromotionSeriesRecord> f5510Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5511Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5512Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public LocalPushState() {
        this(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0, 0, 0, null, 2047, null);
    }

    public static /* synthetic */ LocalPushState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LocalPushState localPushState, long j, long j2, long j3, long j4, long j5, long j6, long j7, int i, int i2, int i3, List list, int i4, Object obj) {
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        int i5;
        int i6;
        int i7;
        List<PromotionSeriesRecord> list2;
        if ((i4 & 1) != 0) {
            j8 = localPushState.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j8 = j;
        }
        if ((i4 & 2) != 0) {
            j9 = localPushState.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j9 = j2;
        }
        if ((i4 & 4) != 0) {
            j10 = localPushState.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j10 = j3;
        }
        if ((i4 & 8) != 0) {
            j11 = localPushState.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j11 = j4;
        }
        if ((i4 & 16) != 0) {
            j12 = localPushState.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j12 = j5;
        }
        if ((i4 & 32) != 0) {
            j13 = localPushState.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j13 = j6;
        }
        if ((i4 & 64) != 0) {
            j14 = localPushState.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            j14 = j7;
        }
        long j15 = j8;
        if ((i4 & 128) != 0) {
            i5 = localPushState.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i5 = i;
        }
        if ((i4 & 256) != 0) {
            i6 = localPushState.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i6 = i2;
        }
        int i8 = i5;
        if ((i4 & 512) != 0) {
            i7 = localPushState.f5511Wwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i7 = i3;
        }
        if ((i4 & 1024) != 0) {
            list2 = localPushState.f5510Wwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            list2 = list;
        }
        return localPushState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j15, j9, j10, j11, j12, j13, j14, i8, i6, i7, list2);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<PromotionSeriesRecord> Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5510Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5511Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final LocalPushState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2, long j3, long j4, long j5, long j6, long j7, int i, int i2, int i3, @NotNull List<PromotionSeriesRecord> list) {
        return new LocalPushState(j, j2, j3, j4, j5, j6, j7, i, i2, i3, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalPushState)) {
            return false;
        }
        LocalPushState localPushState = (LocalPushState) obj;
        if (this.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww && this.f5511Wwwwwwwwwwwwwwwwwwwwwwwww == localPushState.f5511Wwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f5510Wwwwwwwwwwwwwwwwwwwwwwww, localPushState.f5510Wwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5511Wwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5510Wwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        long j = this.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = this.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j3 = this.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j4 = this.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j5 = this.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j6 = this.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j7 = this.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = this.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = this.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = this.f5511Wwwwwwwwwwwwwwwwwwwwwwwww;
        List<PromotionSeriesRecord> list = this.f5510Wwwwwwwwwwwwwwwwwwwwwwww;
        return "LocalPushState(lastActualPushAtMs=" + j + ", queueTailAtMs=" + j2 + ", nextSignInCandidateAtMs=" + j3 + ", lastSignInPushAtMs=" + j4 + ", lastRecallPushAtMs=" + j5 + ", lastPromotionPushAtMs=" + j6 + ", lastRecallTriggerAtMs=" + j7 + ", signInContentIndex=" + i + ", recallContentIndex=" + i2 + ", promotionContentIndex=" + i3 + ", recentPromotionSeries=" + list + ")";
    }

    public LocalPushState(long j, long j2, long j3, long j4, long j5, long j6, long j7, int i, int i2, int i3, @NotNull List<PromotionSeriesRecord> list) {
        this.f5520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f5519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
        this.f5518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j3;
        this.f5517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j4;
        this.f5516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j5;
        this.f5515Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = j6;
        this.f5514Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j7;
        this.f5513Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5512Wwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5511Wwwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f5510Wwwwwwwwwwwwwwwwwwwwwwww = list;
    }

    public /* synthetic */ LocalPushState(long j, long j2, long j3, long j4, long j5, long j6, long j7, int i, int i2, int i3, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0L : j, (i4 & 2) != 0 ? 0L : j2, (i4 & 4) != 0 ? 0L : j3, (i4 & 8) != 0 ? 0L : j4, (i4 & 16) != 0 ? 0L : j5, (i4 & 32) != 0 ? 0L : j6, (i4 & 64) == 0 ? j7 : 0L, (i4 & 128) != 0 ? 0 : i, (i4 & 256) != 0 ? 0 : i2, (i4 & 512) == 0 ? i3 : 0, (i4 & 1024) != 0 ? CollectionsKt.emptyList() : list);
    }
}
