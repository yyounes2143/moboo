package com.google.android.engage.travel.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface TransportationType {
    public static final int TYPE_BUS = 3;
    public static final int TYPE_FERRY = 4;
    public static final int TYPE_FLIGHT = 1;
    public static final int TYPE_TRAIN = 2;
    public static final int TYPE_UNKNOWN = 0;
}
