package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class m implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final m f10237a = new m();

    private m() {
    }

    public static Callable a() {
        return f10237a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Integer valueOf;
        valueOf = Integer.valueOf(Build.VERSION.SDK_INT);
        return valueOf;
    }
}
