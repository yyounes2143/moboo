package com.iab.omid.library.vungle.adsession;

import com.iab.omid.library.vungle.utils.c;
import com.iab.omid.library.vungle.utils.g;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AdSessionConfiguration {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImpressionType f8529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CreativeType f8530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        this.f8530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = creativeType;
        this.f8529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = impressionType;
        this.f8533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner;
        if (owner2 == null) {
            this.f8532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Owner.NONE;
        } else {
            this.f8532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner2;
        }
        this.f8531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public static AdSessionConfiguration Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, "CreativeType is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(impressionType, "ImpressionType is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(owner, "Impression owner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(owner, creativeType, impressionType);
        return new AdSessionConfiguration(creativeType, impressionType, owner, owner2, z);
    }

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionOwner", this.f8533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "mediaEventsOwner", this.f8532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "creativeType", this.f8530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionType", this.f8529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f8531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        return jSONObject;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Owner.NATIVE == this.f8533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }
}
