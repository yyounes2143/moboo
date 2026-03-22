package com.google.android.engage.common.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface ContentAvailability {
    public static final int AVAILABILITY_AVAILABLE = 1;
    public static final int AVAILABILITY_FREE_WITH_SUBSCRIPTION = 2;
    public static final int AVAILABILITY_PAID_CONTENT = 3;
    public static final int AVAILABILITY_UNKNOWN = 0;
}
