package com.applovin.impl;

import j$.util.Objects;
import java.util.Map;
import java.util.UUID;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class n1 {
    private final String b;
    private final Map c;

    /* renamed from: a  reason: collision with root package name */
    private final String f3443a = UUID.randomUUID().toString();
    private final long d = System.currentTimeMillis();

    public n1(String str, Map map) {
        this.b = str;
        this.c = map;
    }

    public long a() {
        return this.d;
    }

    public String b() {
        return this.f3443a;
    }

    public String c() {
        return this.b;
    }

    public Map d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        n1 n1Var = (n1) obj;
        if (this.d != n1Var.d || !Objects.equals(this.b, n1Var.b) || !Objects.equals(this.c, n1Var.c)) {
            return false;
        }
        return Objects.equals(this.f3443a, n1Var.f3443a);
    }

    public int hashCode() {
        int i;
        int i2;
        String str = this.b;
        int i3 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        Map map = this.c;
        if (map != null) {
            i2 = map.hashCode();
        } else {
            i2 = 0;
        }
        long j = this.d;
        int i5 = (((i4 + i2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        String str2 = this.f3443a;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return i5 + i3;
    }

    public String toString() {
        return "Event{name='" + this.b + "', id='" + this.f3443a + "', creationTimestampMillis=" + this.d + ", parameters=" + this.c + AbstractJsonLexerKt.END_OBJ;
    }
}
