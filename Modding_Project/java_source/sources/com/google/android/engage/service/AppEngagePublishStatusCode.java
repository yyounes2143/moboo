package com.google.android.engage.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface AppEngagePublishStatusCode {
    public static final int NOT_PUBLISHED_CLIENT_ERROR = 7;
    public static final int NOT_PUBLISHED_FEATURE_DISABLED_BY_CLIENT = 9;
    public static final int NOT_PUBLISHED_INELIGIBLE_LOCATION = 3;
    public static final int NOT_PUBLISHED_NO_ELIGIBLE_CONTENT = 6;
    public static final int NOT_PUBLISHED_OTHER = 4;
    public static final int NOT_PUBLISHED_REQUIRES_SIGN_IN = 1;
    public static final int NOT_PUBLISHED_REQUIRES_SUBSCRIPTION = 2;
    public static final int NOT_PUBLISHED_REQUIRES_USER_PERMISSION = 5;
    public static final int NOT_PUBLISHED_SERVICE_ERROR = 8;
    public static final int PUBLISHED = 0;
}
