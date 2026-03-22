package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class j implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final j f10234a = new j();

    private j() {
    }

    public static Callable a() {
        return f10234a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.MANUFACTURER;
        return str;
    }
}
