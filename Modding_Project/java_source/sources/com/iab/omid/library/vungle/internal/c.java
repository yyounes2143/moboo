package com.iab.omid.library.vungle.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static c f8595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.vungle.adsession.a> f8597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.vungle.adsession.a> f8596Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    public static c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8595Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8596Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            return true;
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8596Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        this.f8596Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public Collection<com.iab.omid.library.vungle.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        this.f8597Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
    }

    public Collection<com.iab.omid.library.vungle.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8596Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
