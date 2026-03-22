package com.iab.omid.library.unity3d.adsession;

import android.view.View;
import com.iab.omid.library.unity3d.internal.c;
import com.iab.omid.library.unity3d.internal.e;
import com.iab.omid.library.unity3d.internal.h;
import com.iab.omid.library.unity3d.publisher.AdSessionStatePublisher;
import com.iab.omid.library.unity3d.publisher.b;
import com.iab.omid.library.unity3d.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8409Wwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PossibleObstructionListener f8410Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8411Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8412Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8413Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdSessionStatePublisher f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.weakreference.a f8417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionConfiguration f8419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContext f8420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<e> f8418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8415Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        AdSessionStatePublisher aVar;
        this.f8419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionConfiguration;
        this.f8420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContext;
        String uuid = UUID.randomUUID().toString();
        this.f8413Wwwwwwwwwwwwwwwwwwwwwwwwwww = uuid;
        Wwwwwwwwwwwwwwwwwwwwwwww(null);
        if (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != AdSessionContextType.HTML && adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != AdSessionContextType.JAVASCRIPT) {
            aVar = new b(uuid, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            aVar = new com.iab.omid.library.unity3d.publisher.a(uuid, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwww());
        }
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration);
    }

    public void Wwwwwwwwwwwwww() {
        if (this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public void Wwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwww();
        this.f8411Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        this.f8412Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public boolean Wwwwwwwwwwwwwwwww() {
        return this.f8415Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwww() {
        return this.f8419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public AdSessionStatePublisher Wwwwwwwwwwwwwwwwwww() {
        return this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwww() {
        return this.f8413Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwww() {
        return this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8415Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8410Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(View view) {
        this.f8417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.weakreference.a(view);
    }

    public List<e> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        Collection<a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            for (a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (aVar != this && aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwww() == view) {
                    aVar.f8417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                }
            }
        }
    }

    public View Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8411Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<com.iab.omid.library.unity3d.weakreference.a> list) {
        if (Wwwwwwwwwwwwwwwwwwwwwww()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.unity3d.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f8410Wwwwwwwwwwwwwwwwwwwwwwww.onPossibleObstructionsDetected(this.f8413Wwwwwwwwwwwwwwwwwwwwwwwwwww, arrayList);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8412Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Impression event can only be sent once");
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8415Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8415Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.internal.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f8420Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, "AdView is null");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww() == view) {
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwww(view);
            Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwww(view);
        }
    }

    @Override // com.iab.omid.library.unity3d.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        Wwwwwwwwwwwwww();
        this.f8414Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww();
        this.f8416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8410Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }
}
