package com.tencent.liteav.base.system;

import com.tencent.liteav.base.util.j;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class c implements j.a {

    /* renamed from: a  reason: collision with root package name */
    private static final c f10227a = new c();

    private c() {
    }

    public static j.a a() {
        return f10227a;
    }

    @Override // com.tencent.liteav.base.util.j.a
    public final void a(boolean z) {
        LiteavSystemInfo.onAppBackgroundStateChanged(z);
    }
}
