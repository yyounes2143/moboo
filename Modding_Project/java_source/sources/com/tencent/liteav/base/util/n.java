package com.tencent.liteav.base.util;

import java.util.concurrent.ThreadFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class n implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f10256a;

    private n(String str) {
        this.f10256a = str;
    }

    public static ThreadFactory a(String str) {
        return new n(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f10256a);
    }
}
