package com.iab.omid.library.unity3d.adsession;

import com.iab.omid.library.unity3d.utils.c;
import com.iab.omid.library.unity3d.utils.g;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class AdSessionConfiguration {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImpressionType f8391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CreativeType f8392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Owner f8395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionConfiguration(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z) {
        this.f8392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = creativeType;
        this.f8391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = impressionType;
        this.f8395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner;
        if (owner2 == null) {
            this.f8394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Owner.NONE;
        } else {
            this.f8394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = owner2;
        }
        this.f8393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
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
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionOwner", this.f8395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "mediaEventsOwner", this.f8394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "creativeType", this.f8392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "impressionType", this.f8391Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f8393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        return jSONObject;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Owner.NATIVE == this.f8395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }
}
