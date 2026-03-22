package com.google.android.engage.shopping.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface ShoppingOrderType {
    public static final int TYPE_IN_STORE_PICKUP = 1;
    public static final int TYPE_MULTI_DAY_DELIVERY = 3;
    public static final int TYPE_SAME_DAY_DELIVERY = 2;
    public static final int TYPE_UNKNOWN = 0;
}
