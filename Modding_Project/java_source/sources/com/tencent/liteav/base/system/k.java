package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class k implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final k f10235a = new k();

    private k() {
    }

    public static Callable a() {
        return f10235a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.HARDWARE;
        return str;
    }
}
