package com.applovin.impl;

import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m2 implements Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final String f3193a;
    private final String b;
    private final boolean c;
    private final v2 d;

    public m2(String str, String str2, boolean z, v2 v2Var) {
        this.f3193a = str;
        this.b = str2;
        this.c = z;
        this.d = v2Var;
    }

    public String a() {
        return this.b;
    }

    public List b() {
        List l = this.d.l();
        if (l != null && !l.isEmpty()) {
            return l;
        }
        return Collections.singletonList(this.f3193a);
    }

    public String c() {
        return this.f3193a;
    }

    public v2 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            m2 m2Var = (m2) obj;
            String str = this.f3193a;
            if (str == null ? m2Var.f3193a != null : !str.equals(m2Var.f3193a)) {
                return false;
            }
            String str2 = this.b;
            if (str2 == null ? m2Var.b != null : !str2.equals(m2Var.b)) {
                return false;
            }
            if (this.c == m2Var.c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i;
        String str = this.f3193a;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = i * 31;
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((i3 + i2) * 31) + (this.c ? 1 : 0);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(m2 m2Var) {
        return this.b.compareToIgnoreCase(m2Var.b);
    }
}
