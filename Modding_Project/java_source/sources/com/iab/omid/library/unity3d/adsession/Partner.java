package com.iab.omid.library.unity3d.adsession;

import com.iab.omid.library.unity3d.utils.g;
/* loaded from: classes5.dex */
public class Partner {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8404Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8405Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Partner(String str, String str2) {
        this.f8405Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8404Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    public static Partner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "Name is null or empty");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, "Version is null or empty");
        return new Partner(str, str2);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8404Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8405Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
