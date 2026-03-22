package com.changdu.component.core.googleadid;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f5301a;
    public final /* synthetic */ b b;

    public a(b bVar, String str) {
        this.b = bVar;
        this.f5301a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.b.c;
        Object obj = this.f5301a;
        d dVar = (d) cVar;
        dVar.getClass();
        dVar.f5303a.onGoogleAdIdRead((String) obj);
    }
}
