package com.iab.omid.library.vungle.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.vungle.internal.d;
import com.iab.omid.library.vungle.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.vungle.devicevolume.c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static i f8613Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public c f8614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.devicevolume.d f8615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.vungle.devicevolume.b f8616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.vungle.devicevolume.e f8617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.0f;

    public i(com.iab.omid.library.vungle.devicevolume.e eVar, com.iab.omid.library.vungle.devicevolume.b bVar) {
        this.f8617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
        this.f8616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bVar;
    }

    public static i Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f8613Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f8613Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new i(new com.iab.omid.library.vungle.devicevolume.e(), new com.iab.omid.library.vungle.devicevolume.b());
        }
        return f8613Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        this.f8615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        this.f8615Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Handler(), context, this.f8616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this);
    }

    public final c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f8614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return this.f8614Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.vungle.devicevolume.c
    public void a(float f) {
        this.f8618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
        for (com.iab.omid.library.vungle.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f);
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        } else {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        }
    }
}
