package com.google.android.engage.common.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface RecommendationType {
    public static final int FROM_USER_WATCHLIST = 7;
    public static final int GENERIC = 9;
    public static final int NEW_ON_PARTNER = 3;
    public static final int POPULAR_ON_PARTNER = 2;
    public static final int RECOMMENDED_FOR_USER = 5;
    public static final int TOP_ON_PARTNER = 1;
    public static final int USER_LIKED_TITLE = 8;
    public static final int WATCHED_SIMILAR_TITLES = 4;
    public static final int WATCH_AGAIN = 6;
}
