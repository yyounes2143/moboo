package com.appsflyer.internal;

import com.android.billingclient.BuildConfig;
import java.lang.reflect.Field;
import kotlin.Result;
import kotlin.ResultKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFj1hSDK implements AFj1iSDK {
    @Override // com.appsflyer.internal.AFj1iSDK
    @NotNull
    public final String getMediationNetwork() {
        Object m438constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            Field declaredField = BuildConfig.class.getDeclaredField("Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
            declaredField.setAccessible(true);
            m438constructorimpl = Result.m438constructorimpl((String) declaredField.get(null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m444isFailureimpl(m438constructorimpl)) {
            m438constructorimpl = "";
        }
        return (String) m438constructorimpl;
    }
}
