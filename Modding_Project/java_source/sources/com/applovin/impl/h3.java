package com.applovin.impl;

import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h3 {
    private static final Set b = new HashSet();
    public static final h3 c = a("ar");
    public static final h3 d = a("ttdasi_ms");

    /* renamed from: a  reason: collision with root package name */
    private String f3142a;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        Object a(Object obj);
    }

    private h3(String str) {
        this.f3142a = str;
    }

    public boolean a(Object obj) {
        return obj instanceof h3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h3)) {
            return false;
        }
        h3 h3Var = (h3) obj;
        if (!h3Var.a(this)) {
            return false;
        }
        String a2 = a();
        String a3 = h3Var.a();
        if (a2 != null ? a2.equals(a3) : a3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String a2 = a();
        if (a2 == null) {
            hashCode = 43;
        } else {
            hashCode = a2.hashCode();
        }
        return hashCode + 59;
    }

    public String toString() {
        return this.f3142a;
    }

    public String a() {
        return this.f3142a;
    }

    private static h3 a(String str) {
        Set set = b;
        if (!set.contains(str)) {
            set.add(str);
            return new h3(str);
        }
        throw new IllegalArgumentException("Key has already been used: " + str);
    }
}
