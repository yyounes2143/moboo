package com.applovin.impl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final String f3822a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final int f;
    private final boolean g;

    public z(String str, int i) {
        this.e = str;
        this.f = i;
        String[] split = str.split(",");
        boolean z = split.length == 3 || split.length == 4;
        this.g = z;
        if (z) {
            this.f3822a = a(split[0]);
            this.b = a(split[1]);
            this.c = a(split[2]);
            this.d = split.length == 4 ? a(split[3]) : "";
            return;
        }
        this.f3822a = "";
        this.b = "";
        this.c = "";
        this.d = "";
    }

    public boolean a(Object obj) {
        return obj instanceof z;
    }

    public String b() {
        return this.f3822a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (!zVar.a(this)) {
            return false;
        }
        String b = b();
        String b2 = zVar.b();
        if (b != null ? !b.equals(b2) : b2 != null) {
            return false;
        }
        String c = c();
        String c2 = zVar.c();
        if (c != null ? !c.equals(c2) : c2 != null) {
            return false;
        }
        String e = e();
        String e2 = zVar.e();
        if (e != null ? !e.equals(e2) : e2 != null) {
            return false;
        }
        String a2 = a();
        String a3 = zVar.a();
        if (a2 != null ? a2.equals(a3) : a3 == null) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f;
    }

    public boolean g() {
        return this.f3822a.equals("applovin.com");
    }

    public boolean h() {
        return this.g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String b = b();
        int i = 43;
        if (b == null) {
            hashCode = 43;
        } else {
            hashCode = b.hashCode();
        }
        String c = c();
        int i2 = (hashCode + 59) * 59;
        if (c == null) {
            hashCode2 = 43;
        } else {
            hashCode2 = c.hashCode();
        }
        int i3 = i2 + hashCode2;
        String e = e();
        int i4 = i3 * 59;
        if (e == null) {
            hashCode3 = 43;
        } else {
            hashCode3 = e.hashCode();
        }
        int i5 = i4 + hashCode3;
        String a2 = a();
        int i6 = i5 * 59;
        if (a2 != null) {
            i = a2.hashCode();
        }
        return i6 + i;
    }

    public String toString() {
        return "AppAdsTxtEntry(domainName=" + b() + ", publisherId=" + c() + ", relationship=" + e() + ", certificateAuthorityId=" + a() + ", rawValue=" + d() + ", rowNumber=" + f() + ", valid=" + h() + ")";
    }

    public String a() {
        return this.d;
    }

    private String a(String str) {
        return str.replace((char) 173, ' ').trim();
    }

    public z(String str) {
        this(str, -1);
    }
}
