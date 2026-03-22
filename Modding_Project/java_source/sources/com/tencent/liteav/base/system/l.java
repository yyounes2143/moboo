package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class l implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final l f10236a = new l();

    private l() {
    }

    public static Callable a() {
        return f10236a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.VERSION.RELEASE;
        return str;
    }
}
