package com.tencent.liteav.txcvodplayer.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f10340a;
    private final String b;
    private final long c;

    private d(a aVar, String str, long j) {
        this.f10340a = aVar;
        this.b = str;
        this.c = j;
    }

    public static Runnable a(a aVar, String str, long j) {
        return new d(aVar, str, j);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f10340a, this.b, this.c);
    }
}
