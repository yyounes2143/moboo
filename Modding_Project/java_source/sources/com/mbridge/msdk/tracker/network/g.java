package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f9677a;
    private final String b;

    public g(String str, String str2) {
        this.f9677a = str;
        this.b = str2;
    }

    public final String a() {
        return this.f9677a;
    }

    public final String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g.class == obj.getClass()) {
            g gVar = (g) obj;
            if (TextUtils.equals(this.f9677a, gVar.f9677a) && TextUtils.equals(this.b, gVar.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f9677a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f9677a + ",value=" + this.b + "]";
    }
}
