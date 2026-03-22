package com.iab.omid.library.mmadbridge.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static c f8294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.mmadbridge.adsession.a> f8296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.mmadbridge.adsession.a> f8295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    public static c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            return true;
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        this.f8295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public Collection<com.iab.omid.library.mmadbridge.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        this.f8296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
    }

    public Collection<com.iab.omid.library.mmadbridge.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8295Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
