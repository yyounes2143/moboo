package com.unity3d.ads.core.extensions;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.TimeMark;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"elapsedMillis", "", "Lkotlin/time/TimeMark;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class TimeExtensionsKt {
    public static final double elapsedMillis(@NotNull TimeMark timeMark) {
        return Duration.m1798toDoubleimpl(timeMark.mo1752elapsedNowUwyO8pc(), DurationUnit.MILLISECONDS);
    }
}
