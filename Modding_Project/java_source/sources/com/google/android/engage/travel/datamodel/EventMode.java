package com.google.android.engage.travel.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface EventMode {
    public static final int TYPE_HYBRID = 3;
    public static final int TYPE_IN_PERSON = 2;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIRTUAL = 1;
}
