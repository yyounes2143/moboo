package com.tencent.liteav.txcvodplayer.c;

import com.tencent.liteav.txcvodplayer.b.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f10338a;
    private final int b;
    private final String c;
    private final String d;
    private final c.b e;

    private b(a aVar, int i, String str, String str2, c.b bVar) {
        this.f10338a = aVar;
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = bVar;
    }

    public static Runnable a(a aVar, int i, String str, String str2, c.b bVar) {
        return new b(aVar, i, str, str2, bVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f10338a, this.b, this.c, this.d, this.e);
    }
}
