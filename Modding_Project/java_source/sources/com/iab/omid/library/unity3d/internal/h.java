package com.iab.omid.library.unity3d.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.unity3d.internal.d;
import com.iab.omid.library.unity3d.walking.TreeWalker;
/* loaded from: classes5.dex */
public class h implements d.a, com.iab.omid.library.unity3d.devicevolume.c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static h f8457Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public c f8458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.devicevolume.d f8459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.unity3d.devicevolume.b f8460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.unity3d.devicevolume.e f8461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.0f;

    public h(com.iab.omid.library.unity3d.devicevolume.e eVar, com.iab.omid.library.unity3d.devicevolume.b bVar) {
        this.f8461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
        this.f8460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bVar;
    }

    public static h Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f8457Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f8457Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new h(new com.iab.omid.library.unity3d.devicevolume.e(), new com.iab.omid.library.unity3d.devicevolume.b());
        }
        return f8457Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        this.f8459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        this.f8459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Handler(), context, this.f8460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this);
    }

    public final c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f8458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return this.f8458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.unity3d.devicevolume.c
    public void a(float f) {
        this.f8462Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
        for (com.iab.omid.library.unity3d.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f);
        }
    }

    @Override // com.iab.omid.library.unity3d.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        } else {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        }
    }
}
