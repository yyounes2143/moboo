package com.iab.omid.library.mmadbridge.adsession;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.mmadbridge.internal.c;
import com.iab.omid.library.mmadbridge.internal.e;
import com.iab.omid.library.mmadbridge.internal.f;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.publisher.AdSessionStatePublisher;
import com.iab.omid.library.mmadbridge.publisher.b;
import com.iab.omid.library.mmadbridge.utils.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a extends AdSession {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PossibleObstructionListener f8258Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8259Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8260Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8261Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdSessionStatePublisher f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.weakreference.a f8265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final f f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionConfiguration f8267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContext f8268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    public void Wwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwww().Wwwwwwwwwww();
        this.f8259Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public void Wwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwww().Wwwwwwwwwwwww();
        this.f8260Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public boolean Wwwwwwwwwwww() {
        return this.f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwww() {
        return this.f8267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public boolean Wwwwwwwwwwwwww() {
        return this.f8267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public AdSessionStatePublisher Wwwwwwwwwwwwwww() {
        return this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwww() {
        return this.f8261Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwww() {
        return this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwwwwwwwww() {
        if (this.f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwww() {
        if (this.f8258Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            return true;
        }
        return false;
    }

    public List<e> Wwwwwwwwwwwwwwwwwwww() {
        return this.f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public View Wwwwwwwwwwwwwwwwwwwww() {
        return this.f8265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(View view) {
        this.f8265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.weakreference.a(view);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8259Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull JSONObject jSONObject) {
        Wwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(jSONObject);
        this.f8259Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(List<com.iab.omid.library.mmadbridge.weakreference.a> list) {
        if (Wwwwwwwwwwwwwwwwwww()) {
            ArrayList arrayList = new ArrayList();
            for (com.iab.omid.library.mmadbridge.weakreference.a aVar : list) {
                View view = aVar.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f8258Wwwwwwwwwwwwwwwwwwwwwwww.onPossibleObstructionsDetected(this.f8261Wwwwwwwwwwwwwwwwwwwwwwwwwww, arrayList);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        Collection<a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            for (a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (aVar != this && aVar.Wwwwwwwwwwwwwwwwwwwww() == view) {
                    aVar.f8265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f8260Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Impression event can only be sent once");
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.internal.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, this.f8268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, "AdView is null");
            if (Wwwwwwwwwwwwwwwwwwwww() == view) {
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwww(view);
            Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwww(view);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        Wwwwwwwwwwwwwww().Wwwwwwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f8258Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.iab.omid.library.mmadbridge.adsession.AdSession
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        if (this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, friendlyObstructionPurpose, str);
    }

    public a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f8266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new f();
        this.f8263Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8262Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionConfiguration;
        this.f8268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContext;
        this.f8261Wwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        Wwwwwwwwwwwwwwwwwwwwww(null);
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == AdSessionContextType.HTML || adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == AdSessionContextType.JAVASCRIPT) ? new com.iab.omid.library.mmadbridge.publisher.a(str, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwww()) : new b(str, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        this.f8264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration);
    }
}
