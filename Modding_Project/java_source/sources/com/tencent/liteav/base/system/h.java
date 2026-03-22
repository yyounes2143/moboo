package com.tencent.liteav.base.system;

import android.os.Build;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class h implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private static final h f10232a = new h();

    private h() {
    }

    public static Callable a() {
        return f10232a;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        str = Build.MODEL;
        return str;
    }
}
