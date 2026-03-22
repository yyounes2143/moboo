package com.google.android.engage.video.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface WatchNextType {
    public static final int TYPE_CONTINUE = 1;
    public static final int TYPE_NEW = 3;
    public static final int TYPE_NEXT = 2;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_WATCHLIST = 4;
}
