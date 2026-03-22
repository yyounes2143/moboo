package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class g implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final g f10231a = new g();

    private g() {
    }

    public static Callable a() {
        return f10231a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] strArr;
        strArr = Build.SUPPORTED_ABIS;
        return strArr;
    }
}
