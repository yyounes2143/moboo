package com.google.android.engage.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface AppEngageErrorCode {
    public static final int NO_ERROR = 0;
    public static final int SERVICE_CALL_EXECUTION_FAILURE = 3;
    public static final int SERVICE_CALL_INTERNAL = 6;
    public static final int SERVICE_CALL_INVALID_ARGUMENT = 5;
    public static final int SERVICE_CALL_PERMISSION_DENIED = 4;
    public static final int SERVICE_CALL_RESOURCE_EXHAUSTED = 7;
    public static final int SERVICE_NOT_AVAILABLE = 2;
    public static final int SERVICE_NOT_FOUND = 1;
}
