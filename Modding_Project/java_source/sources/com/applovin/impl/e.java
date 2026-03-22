package com.applovin.impl;

import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f3114a;
    private final String b;
    private final Map c;
    private final boolean d;

    public e(String str, String str2) {
        this(str, str2, null, false);
    }

    public String a() {
        return this.b;
    }

    public Map b() {
        return this.c;
    }

    public String c() {
        return this.f3114a;
    }

    public boolean d() {
        return this.d;
    }

    public String toString() {
        return "AdEventPostback{url='" + this.f3114a + "', backupUrl='" + this.b + "', headers='" + this.c + "', shouldFireInWebView='" + this.d + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public e(String str, String str2, Map map, boolean z) {
        this.f3114a = str;
        this.b = str2;
        this.c = map;
        this.d = z;
    }
}
