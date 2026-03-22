package com.changdu.mobovideo.localpush;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0011\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;", "", "", "seriesId", "pushedAtMs", "<init>", "(JJ)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PromotionSeriesRecord {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PromotionSeriesRecord(long j, long j2) {
        this.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PromotionSeriesRecord)) {
            return false;
        }
        PromotionSeriesRecord promotionSeriesRecord = (PromotionSeriesRecord) obj;
        if (this.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == promotionSeriesRecord.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == promotionSeriesRecord.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        long j = this.f5526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = this.f5525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return "PromotionSeriesRecord(seriesId=" + j + ", pushedAtMs=" + j2 + ")";
    }
}
