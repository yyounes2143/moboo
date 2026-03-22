package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class n implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final n f10238a = new n();

    private n() {
    }

    public static Callable a() {
        return f10238a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.BOARD;
        return str;
    }
}
