package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class q implements x {

    /* renamed from: a  reason: collision with root package name */
    private Context f7728a;

    private q() {
    }

    public final q a(Context context) {
        context.getClass();
        this.f7728a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.x
    public final s b() {
        com.google.android.play.integrity.internal.am.a(this.f7728a, Context.class);
        return new s(this.f7728a, null);
    }

    public /* synthetic */ q(p pVar) {
    }
}
