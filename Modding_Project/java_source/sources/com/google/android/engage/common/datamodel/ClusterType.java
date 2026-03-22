package com.google.android.engage.common.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface ClusterType {
    public static final int TYPE_CONTINUATION = 3;
    public static final int TYPE_CONTINUE_SEARCH = 13;
    public static final int TYPE_ENGAGEMENT = 8;
    public static final int TYPE_FEATURED = 2;
    public static final int TYPE_FOOD_REORDER = 5;
    public static final int TYPE_FOOD_SHOPPING_CART = 6;
    public static final int TYPE_FOOD_SHOPPING_LIST = 7;
    public static final int TYPE_RECOMMENDATION = 1;
    public static final int TYPE_RESERVATION = 14;
    public static final int TYPE_SHOPPING_CART = 4;
    public static final int TYPE_SHOPPING_LIST = 9;
    public static final int TYPE_SHOPPING_ORDER_TRACKING = 11;
    public static final int TYPE_SHOPPING_REORDER = 10;
    public static final int TYPE_SUBSCRIPTION = 12;
    public static final int TYPE_UNKNOWN = 0;
}
