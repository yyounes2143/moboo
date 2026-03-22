package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class u implements av {

    /* renamed from: a  reason: collision with root package name */
    private Context f7730a;

    private u() {
    }

    public final u a(Context context) {
        context.getClass();
        this.f7730a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.av
    public final aw b() {
        com.google.android.play.integrity.internal.am.a(this.f7730a, Context.class);
        return new w(this.f7730a, null);
    }

    public /* synthetic */ u(t tVar) {
    }
}
