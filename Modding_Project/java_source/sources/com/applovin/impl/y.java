package com.applovin.impl;

import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private final Map f3815a;
    private final List b;

    public y(Map map, List list) {
        this.f3815a = map;
        this.b = list;
    }

    public boolean a(Object obj) {
        return obj instanceof y;
    }

    public List b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (!yVar.a(this)) {
            return false;
        }
        Map a2 = a();
        Map a3 = yVar.a();
        if (a2 != null ? !a2.equals(a3) : a3 != null) {
            return false;
        }
        List b = b();
        List b2 = yVar.b();
        if (b != null ? b.equals(b2) : b2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        Map a2 = a();
        int i = 43;
        if (a2 == null) {
            hashCode = 43;
        } else {
            hashCode = a2.hashCode();
        }
        List b = b();
        int i2 = (hashCode + 59) * 59;
        if (b != null) {
            i = b.hashCode();
        }
        return i2 + i;
    }

    public String toString() {
        return "AppAdsTxt(domainEntries=" + a() + ", invalidEntries=" + b() + ")";
    }

    public Map a() {
        return this.f3815a;
    }
}
