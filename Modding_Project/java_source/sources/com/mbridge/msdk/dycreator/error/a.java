package com.mbridge.msdk.dycreator.error;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f8908a;
    private String b;

    public a(b bVar) {
        if (bVar != null) {
            this.f8908a = bVar.b();
            this.b = bVar.c();
        }
    }

    public String toString() {
        return "DyError{errorCode=" + this.f8908a + AbstractJsonLexerKt.END_OBJ;
    }

    public a(int i, String str) {
        this.f8908a = i;
        this.b = str;
    }
}
