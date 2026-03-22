package com.mbridge.msdk.click.entity;

import androidx.annotation.NonNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f8777a;
    public String b;
    public String c;
    public String d;
    public int e;
    public int f;
    public String g;
    public String h;

    public String a() {
        return "statusCode=" + this.f + ", location=" + this.f8777a + ", contentType=" + this.b + ", contentLength=" + this.e + ", contentEncoding=" + this.c + ", referer=" + this.d;
    }

    @NonNull
    public String toString() {
        return "ClickResponseHeader{location='" + this.f8777a + "', contentType='" + this.b + "', contentEncoding='" + this.c + "', referer='" + this.d + "', contentLength=" + this.e + ", statusCode=" + this.f + ", url='" + this.g + "', exception='" + this.h + '\'' + AbstractJsonLexerKt.END_OBJ;
    }
}
