package com.appsflyer.internal;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class AFh1jSDK extends AFh1mSDK {
    private final boolean copy;
    private final boolean equals;

    public AFh1jSDK() {
        this(null, null, null);
    }

    public AFh1jSDK(@Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2) {
        super(str, null, Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false));
        this.copy = bool != null ? bool.booleanValue() : true;
        this.equals = true;
    }
}
