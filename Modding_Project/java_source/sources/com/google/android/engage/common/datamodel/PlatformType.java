package com.google.android.engage.common.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface PlatformType {
    public static final int TYPE_ANDROID_MOBILE = 2;
    public static final int TYPE_ANDROID_TV = 1;
    public static final int TYPE_IOS = 3;
    public static final int TYPE_UNSPECIFIED = 0;
}
