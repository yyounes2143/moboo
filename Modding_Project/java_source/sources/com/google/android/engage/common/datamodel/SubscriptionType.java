package com.google.android.engage.common.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface SubscriptionType {
    public static final int SUBSCRIPTION_TYPE_ACTIVE = 1;
    public static final int SUBSCRIPTION_TYPE_ACTIVE_TRIAL = 2;
    public static final int SUBSCRIPTION_TYPE_INACTIVE = 3;
    public static final int SUBSCRIPTION_TYPE_UNSPECIFIED = 0;
}
