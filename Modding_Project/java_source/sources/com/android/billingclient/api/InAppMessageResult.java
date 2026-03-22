package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class InAppMessageResult {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface InAppMessageResponseCode {
    }

    public InAppMessageResult(int i, @Nullable String str) {
        this.f2330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f2329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }
}
