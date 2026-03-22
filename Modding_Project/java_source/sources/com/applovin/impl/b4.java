package com.applovin.impl;

import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class b4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3081a;
    private Map b;

    private b4(String str, Map map) {
        this.f3081a = str;
        this.b = map;
    }

    public static b4 a(String str) {
        return a(str, null);
    }

    public String b() {
        return this.f3081a;
    }

    public String toString() {
        return "PendingReward{result='" + this.f3081a + "'params='" + this.b + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public static b4 a(String str, Map map) {
        return new b4(str, map);
    }

    public Map a() {
        return this.b;
    }
}
