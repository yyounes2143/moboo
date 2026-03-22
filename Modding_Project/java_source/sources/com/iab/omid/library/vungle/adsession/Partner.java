package com.iab.omid.library.vungle.adsession;

import com.iab.omid.library.vungle.utils.g;
/* loaded from: classes5.dex */
public class Partner {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Partner(String str, String str2) {
        this.f8560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    public static Partner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "Name is null or empty");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, "Version is null or empty");
        return new Partner(str, str2);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8559Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8560Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
