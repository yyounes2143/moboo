package com.iab.omid.library.mmadbridge.adsession;

import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.g;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AdSessionConfiguration {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImpressionType f8223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CreativeType f8224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        this.f8224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = creativeType;
        this.f8223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = impressionType;
        this.f8227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner;
        if (owner2 == null) {
            this.f8226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Owner.NONE;
        } else {
            this.f8226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner2;
        }
        this.f8225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public static AdSessionConfiguration Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, "CreativeType is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(impressionType, "ImpressionType is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(owner, "Impression owner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(owner, creativeType, impressionType);
        return new AdSessionConfiguration(creativeType, impressionType, owner, owner2, z);
    }

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionOwner", this.f8227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "mediaEventsOwner", this.f8226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "creativeType", this.f8224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionType", this.f8223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f8225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        return jSONObject;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Owner.NATIVE == this.f8226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Owner.NATIVE == this.f8227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }
}
