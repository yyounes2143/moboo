package com.sensorsdata.analytics.android.sdk.core.eventbus;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class Subscription<T> {
    String eventTag;

    public abstract void notify(T t);
}
