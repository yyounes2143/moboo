package com.changdu.mobovideo.localpush;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b!\b\u0086\b\u0018\u00002\u00020\u0001Bå\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0007\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b#\u0010$J\u001a\u0010'\u001a\u00020&2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b'\u0010(R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\"R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b0\u0010-\u001a\u0004\b1\u0010/R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u0010$R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b5\u0010-\u001a\u0004\b6\u0010/R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b7\u0010-\u001a\u0004\b8\u0010/R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b9\u0010-\u001a\u0004\b:\u0010/R\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b;\u0010-\u001a\u0004\b<\u0010/R\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b.\u0010-\u001a\u0004\b=\u0010/R\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b>\u00103\u001a\u0004\b;\u0010$R\u0017\u0010\u000f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b?\u00103\u001a\u0004\b)\u0010$R\u0017\u0010\u0010\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b<\u00103\u001a\u0004\b9\u0010$R\u0017\u0010\u0011\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b=\u00103\u001a\u0004\b7\u0010$R\u0017\u0010\u0012\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b@\u00103\u001a\u0004\b5\u0010$R\u0017\u0010\u0013\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bA\u00103\u001a\u0004\b2\u0010$R\u0017\u0010\u0014\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bB\u00103\u001a\u0004\b0\u0010$R\u0017\u0010\u0015\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bC\u00103\u001a\u0004\b,\u0010$R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b:\u0010*\u001a\u0004\bD\u0010\"R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b8\u0010*\u001a\u0004\b@\u0010\"R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bD\u0010*\u001a\u0004\bC\u0010\"R\u0017\u0010\u0019\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bE\u00103\u001a\u0004\bE\u0010$R\u0017\u0010\u001a\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\bF\u00103\u001a\u0004\bA\u0010$R\u0017\u0010\u001b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b1\u00103\u001a\u0004\b>\u0010$R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b6\u0010*\u001a\u0004\bF\u0010\"R\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b4\u0010*\u001a\u0004\bB\u0010\"R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b+\u0010*\u001a\u0004\b?\u0010\"¨\u0006G"}, d2 = {"Lcom/changdu/mobovideo/localpush/LocalPushConfig;", "", "", "userZoneId", "", "frequencyGapSeconds", "signInCountDownSeconds", "", "signInTriggerSecondOfDay", "signInIntervalSeconds", "recallTriggerAtMs", "recallIntervalSeconds", "promotionDelaySeconds", "promotionIntervalSeconds", "dndStartSecondOfDay", "dndEndSecondOfDay", "dndSignInStartSecondOfDay", "dndSignInEndSecondOfDay", "dndRecallStartSecondOfDay", "dndRecallEndSecondOfDay", "dndPromotionStartSecondOfDay", "dndPromotionEndSecondOfDay", "signInCollapsedRightImageUrl", "recallCollapsedRightImageUrl", "recallExpandedBgImageUrl", "signInContentRule", "recallContentRule", "promotionContentRule", "signInContentsJson", "recallContentsJson", "promotionContentsJson", "<init>", "(Ljava/lang/String;JJIJJJJJIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalPushConfig {
    @Nullable

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public final String f5471Wwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final String f5472Wwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final String f5473Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final int f5474Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final int f5475Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5476Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5477Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5478Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5479Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5480Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5481Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5482Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5483Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5484Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5485Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5486Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5487Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5488Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public LocalPushConfig(@Nullable String str, long j, long j2, int i, long j3, long j4, long j5, long j6, long j7, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i10, int i11, int i12, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
        this.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j3;
        this.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = j4;
        this.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j5;
        this.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww = j6;
        this.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww = j7;
        this.f5487Wwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5486Wwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f5485Wwwwwwwwwwwwwwwwwwwwwww = i4;
        this.f5484Wwwwwwwwwwwwwwwwwwwwww = i5;
        this.f5483Wwwwwwwwwwwwwwwwwwwww = i6;
        this.f5482Wwwwwwwwwwwwwwwwwwww = i7;
        this.f5481Wwwwwwwwwwwwwwwwwww = i8;
        this.f5480Wwwwwwwwwwwwwwwwww = i9;
        this.f5479Wwwwwwwwwwwwwwwww = str2;
        this.f5478Wwwwwwwwwwwwwwww = str3;
        this.f5477Wwwwwwwwwwwwwww = str4;
        this.f5476Wwwwwwwwwwwwww = i10;
        this.f5475Wwwwwwwwwwwww = i11;
        this.f5474Wwwwwwwwwwww = i12;
        this.f5473Wwwwwwwwwww = str5;
        this.f5472Wwwwwwwwww = str6;
        this.f5471Wwwwwwwww = str7;
    }

    @Nullable
    public final String Wwwwwwwww() {
        return this.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwww() {
        return this.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwww() {
        return this.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwww() {
        return this.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwww() {
        return this.f5473Wwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwww() {
        return this.f5476Wwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwww() {
        return this.f5479Wwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwww() {
        return this.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwww() {
        return this.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwww() {
        return this.f5477Wwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwww() {
        return this.f5472Wwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwww() {
        return this.f5475Wwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwww() {
        return this.f5478Wwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5471Wwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5474Wwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5487Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5485Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5484Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5483Wwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5482Wwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5481Wwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5480Wwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5486Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalPushConfig)) {
            return false;
        }
        LocalPushConfig localPushConfig = (LocalPushConfig) obj;
        if (Intrinsics.areEqual(this.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, localPushConfig.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww && this.f5487Wwwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5487Wwwwwwwwwwwwwwwwwwwwwwwww && this.f5486Wwwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5486Wwwwwwwwwwwwwwwwwwwwwwww && this.f5485Wwwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5485Wwwwwwwwwwwwwwwwwwwwwww && this.f5484Wwwwwwwwwwwwwwwwwwwwww == localPushConfig.f5484Wwwwwwwwwwwwwwwwwwwwww && this.f5483Wwwwwwwwwwwwwwwwwwwww == localPushConfig.f5483Wwwwwwwwwwwwwwwwwwwww && this.f5482Wwwwwwwwwwwwwwwwwwww == localPushConfig.f5482Wwwwwwwwwwwwwwwwwwww && this.f5481Wwwwwwwwwwwwwwwwwww == localPushConfig.f5481Wwwwwwwwwwwwwwwwwww && this.f5480Wwwwwwwwwwwwwwwwww == localPushConfig.f5480Wwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f5479Wwwwwwwwwwwwwwwww, localPushConfig.f5479Wwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5478Wwwwwwwwwwwwwwww, localPushConfig.f5478Wwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f5477Wwwwwwwwwwwwwww, localPushConfig.f5477Wwwwwwwwwwwwwww) && this.f5476Wwwwwwwwwwwwww == localPushConfig.f5476Wwwwwwwwwwwwww && this.f5475Wwwwwwwwwwwww == localPushConfig.f5475Wwwwwwwwwwwww && this.f5474Wwwwwwwwwwww == localPushConfig.f5474Wwwwwwwwwwww && Intrinsics.areEqual(this.f5473Wwwwwwwwwww, localPushConfig.f5473Wwwwwwwwwww) && Intrinsics.areEqual(this.f5472Wwwwwwwwww, localPushConfig.f5472Wwwwwwwwww) && Intrinsics.areEqual(this.f5471Wwwwwwwww, localPushConfig.f5471Wwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        String str = this.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((((((((((((((((((((((((((((((((hashCode * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f5487Wwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5486Wwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5485Wwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5484Wwwwwwwwwwwwwwwwwwwwww) * 31) + this.f5483Wwwwwwwwwwwwwwwwwwwww) * 31) + this.f5482Wwwwwwwwwwwwwwwwwwww) * 31) + this.f5481Wwwwwwwwwwwwwwwwwww) * 31) + this.f5480Wwwwwwwwwwwwwwwwww) * 31;
        String str2 = this.f5479Wwwwwwwwwwwwwwwww;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + hashCode2) * 31;
        String str3 = this.f5478Wwwwwwwwwwwwwwww;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i3 = (i2 + hashCode3) * 31;
        String str4 = this.f5477Wwwwwwwwwwwwwww;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i4 = (((((((i3 + hashCode4) * 31) + this.f5476Wwwwwwwwwwwwww) * 31) + this.f5475Wwwwwwwwwwwww) * 31) + this.f5474Wwwwwwwwwwww) * 31;
        String str5 = this.f5473Wwwwwwwwwww;
        if (str5 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str5.hashCode();
        }
        int i5 = (i4 + hashCode5) * 31;
        String str6 = this.f5472Wwwwwwwwww;
        if (str6 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str6.hashCode();
        }
        int i6 = (i5 + hashCode6) * 31;
        String str7 = this.f5471Wwwwwwwww;
        if (str7 != null) {
            i = str7.hashCode();
        }
        return i6 + i;
    }

    @NotNull
    public String toString() {
        String str = this.f5496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j = this.f5495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = this.f5494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = this.f5493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j3 = this.f5492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j4 = this.f5491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j5 = this.f5490Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j6 = this.f5489Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j7 = this.f5488Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = this.f5487Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = this.f5486Wwwwwwwwwwwwwwwwwwwwwwww;
        int i4 = this.f5485Wwwwwwwwwwwwwwwwwwwwwww;
        int i5 = this.f5484Wwwwwwwwwwwwwwwwwwwwww;
        int i6 = this.f5483Wwwwwwwwwwwwwwwwwwwww;
        int i7 = this.f5482Wwwwwwwwwwwwwwwwwwww;
        int i8 = this.f5481Wwwwwwwwwwwwwwwwwww;
        int i9 = this.f5480Wwwwwwwwwwwwwwwwww;
        String str2 = this.f5479Wwwwwwwwwwwwwwwww;
        String str3 = this.f5478Wwwwwwwwwwwwwwww;
        String str4 = this.f5477Wwwwwwwwwwwwwww;
        int i10 = this.f5476Wwwwwwwwwwwwww;
        int i11 = this.f5475Wwwwwwwwwwwww;
        int i12 = this.f5474Wwwwwwwwwwww;
        String str5 = this.f5473Wwwwwwwwwww;
        String str6 = this.f5472Wwwwwwwwww;
        String str7 = this.f5471Wwwwwwwww;
        return "LocalPushConfig(userZoneId=" + str + ", frequencyGapSeconds=" + j + ", signInCountDownSeconds=" + j2 + ", signInTriggerSecondOfDay=" + i + ", signInIntervalSeconds=" + j3 + ", recallTriggerAtMs=" + j4 + ", recallIntervalSeconds=" + j5 + ", promotionDelaySeconds=" + j6 + ", promotionIntervalSeconds=" + j7 + ", dndStartSecondOfDay=" + i2 + ", dndEndSecondOfDay=" + i3 + ", dndSignInStartSecondOfDay=" + i4 + ", dndSignInEndSecondOfDay=" + i5 + ", dndRecallStartSecondOfDay=" + i6 + ", dndRecallEndSecondOfDay=" + i7 + ", dndPromotionStartSecondOfDay=" + i8 + ", dndPromotionEndSecondOfDay=" + i9 + ", signInCollapsedRightImageUrl=" + str2 + ", recallCollapsedRightImageUrl=" + str3 + ", recallExpandedBgImageUrl=" + str4 + ", signInContentRule=" + i10 + ", recallContentRule=" + i11 + ", promotionContentRule=" + i12 + ", signInContentsJson=" + str5 + ", recallContentsJson=" + str6 + ", promotionContentsJson=" + str7 + ")";
    }
}
