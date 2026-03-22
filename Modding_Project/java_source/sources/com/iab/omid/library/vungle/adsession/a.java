package com.iab.omid.library.vungle.adsession;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.internal.c;
import com.iab.omid.library.vungle.internal.e;
import com.iab.omid.library.vungle.internal.f;
import com.iab.omid.library.vungle.internal.i;
import com.iab.omid.library.vungle.publisher.AdSessionStatePublisher;
import com.iab.omid.library.vungle.publisher.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PossibleObstructionListener f8564Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8565Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8566Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8567Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdSessionStatePublisher f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.weakreference.a f8571Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final f f8572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionConfiguration f8573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContext f8574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    public void Wwwwwwwwwwwww() {
        if (this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwww();
        this.f8565Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public void Wwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww();
        this.f8566Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public boolean Wwwwwwwwwwwwwwww() {
        return this.f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwww() {
        return this.f8573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public boolean Wwwwwwwwwwwwwwwwww() {
        return this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwwww() {
        if (this.f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwww() {
        if (this.f8564Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    public List<e> Wwwwwwwwwwwwwwwwwwwww() {
        return this.f8572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public View Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f8571Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public AdSessionStatePublisher Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8567Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        this.f8571Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.weakreference.a(view);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8565Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(List<com.iab.omid.library.vungle.weakreference.a> list) {
        if (Wwwwwwwwwwwwwwwwwwww()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.vungle.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f8564Wwwwwwwwwwwwwwwwwwwwwwww.onPossibleObstructionsDetected(this.f8567Wwwwwwwwwwwwwwwwwwwwwwwwwww, arrayList);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        Collection<a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            for (a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (aVar != this && aVar.Wwwwwwwwwwwwwwwwwwwwww() == view) {
                    aVar.f8571Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8566Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Impression event can only be sent once");
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            this.f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.internal.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f8574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        if (this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww || Wwwwwwwwwwwwwwwwwwwwww() == view) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwww(view);
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8571Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        Wwwwwwwwwwwww();
        this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww();
        this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8564Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.iab.omid.library.vungle.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, friendlyObstructionPurpose, str);
    }

    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f8572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new f();
        this.f8569Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8568Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionConfiguration;
        this.f8574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContext;
        this.f8567Wwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwwwwwwwwwwwww(null);
        this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == AdSessionContextType.HTML || adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.vungle.publisher.a(str, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwww()) : new b(str, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8570Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration);
    }
}
