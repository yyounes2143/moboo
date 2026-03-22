package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b8 {
    public static final b8 f = new b8();

    /* renamed from: a  reason: collision with root package name */
    private final b8 f3083a;
    private final String b;
    private final Map c;
    protected String d;
    protected final List e;

    public b8(String str, Map map, b8 b8Var) {
        this.f3083a = b8Var;
        this.b = str;
        this.c = Collections.unmodifiableMap(map);
        this.e = new ArrayList();
    }

    public Map a() {
        return this.c;
    }

    public List b() {
        return Collections.unmodifiableList(this.e);
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.d;
    }

    public String toString() {
        return "XmlNode{elementName='" + this.b + "', text='" + this.d + "', attributes=" + this.c + AbstractJsonLexerKt.END_OBJ;
    }

    public List a(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList(this.e.size());
            for (b8 b8Var : this.e) {
                if (str.equalsIgnoreCase(b8Var.c())) {
                    arrayList.add(b8Var);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public b8 b(String str) {
        if (str != null) {
            if (this.e.size() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this);
                while (!arrayList.isEmpty()) {
                    b8 b8Var = (b8) arrayList.get(0);
                    arrayList.remove(0);
                    if (str.equalsIgnoreCase(b8Var.c())) {
                        return b8Var;
                    }
                    arrayList.addAll(b8Var.b());
                }
                return null;
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public b8 c(String str) {
        if (str != null) {
            for (b8 b8Var : this.e) {
                if (str.equalsIgnoreCase(b8Var.c())) {
                    return b8Var;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    private b8() {
        this.f3083a = null;
        this.b = "";
        this.c = Collections.EMPTY_MAP;
        this.d = "";
        this.e = Collections.EMPTY_LIST;
    }
}
