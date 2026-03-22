package com.applovin.impl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class l1 {

    /* renamed from: a  reason: collision with root package name */
    private final long f3176a;
    private final Object b;
    private String c;
    private String d;

    public l1(Object obj, long j) {
        String str;
        this.b = obj;
        this.f3176a = j;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) obj;
            if (bVar.getAdZone().d() != null) {
                str = bVar.getAdZone().d().getLabel();
            } else {
                str = null;
            }
            this.c = str;
            this.d = "AppLovin";
        } else if (obj instanceof q2) {
            q2 q2Var = (q2) obj;
            this.c = q2Var.getFormat().getLabel();
            this.d = q2Var.getNetworkName();
        }
    }

    public Object a() {
        return this.b;
    }

    public long b() {
        return this.f3176a;
    }

    public String c() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        return "Unknown";
    }

    public String d() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        return "Unknown";
    }
}
