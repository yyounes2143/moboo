package com.google.android.engage.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface DeleteReason {
    public static final int DELETE_REASON_ACCOUNT_DELETION = 2;
    public static final int DELETE_REASON_ACCOUNT_PROFILE_DELETION = 5;
    public static final int DELETE_REASON_LOSS_OF_CONSENT = 1;
    public static final int DELETE_REASON_OTHER = 4;
    public static final int DELETE_REASON_UNSPECIFIED = 0;
    public static final int DELETE_REASON_USER_LOG_OUT = 3;
}
