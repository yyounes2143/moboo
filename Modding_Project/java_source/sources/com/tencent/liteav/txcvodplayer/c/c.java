package com.tencent.liteav.txcvodplayer.c;

import com.tencent.liteav.txcvodplayer.b.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f10339a;
    private final int b;
    private final String c;
    private final c.b d;

    private c(a aVar, int i, String str, c.b bVar) {
        this.f10339a = aVar;
        this.b = i;
        this.c = str;
        this.d = bVar;
    }

    public static Runnable a(a aVar, int i, String str, c.b bVar) {
        return new c(aVar, i, str, bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f10339a, this.b, this.c, this.d);
    }
}
