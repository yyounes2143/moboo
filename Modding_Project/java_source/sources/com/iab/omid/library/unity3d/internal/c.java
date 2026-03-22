package com.iab.omid.library.unity3d.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static c f8441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.unity3d.adsession.a> f8443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<com.iab.omid.library.unity3d.adsession.a> f8442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    public static c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8441Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            return true;
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        this.f8442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(aVar);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public Collection<com.iab.omid.library.unity3d.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar) {
        this.f8443Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(aVar);
    }

    public Collection<com.iab.omid.library.unity3d.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableCollection(this.f8442Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
