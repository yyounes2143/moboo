package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.mmadbridge.internal.d;
import com.iab.omid.library.mmadbridge.walking.TreeWalker;
/* loaded from: classes5.dex */
public class i implements d.a, com.iab.omid.library.mmadbridge.devicevolume.c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static i f8312Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public c f8313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.devicevolume.d f8314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.mmadbridge.devicevolume.b f8315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.mmadbridge.devicevolume.e f8316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.0f;

    public i(com.iab.omid.library.mmadbridge.devicevolume.e eVar, com.iab.omid.library.mmadbridge.devicevolume.b bVar) {
        this.f8316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
        this.f8315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bVar;
    }

    public static i Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f8312Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            f8312Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new i(new com.iab.omid.library.mmadbridge.devicevolume.e(), new com.iab.omid.library.mmadbridge.devicevolume.b());
        }
        return f8312Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        b.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        this.f8314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        this.f8314Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8316Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Handler(), context, this.f8315Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this);
    }

    public final c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f8313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return this.f8313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.mmadbridge.devicevolume.c
    public void a(float f) {
        this.f8317Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        } else {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        }
    }
}
