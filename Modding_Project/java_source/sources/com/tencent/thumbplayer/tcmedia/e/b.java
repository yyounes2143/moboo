package com.tencent.thumbplayer.tcmedia.e;

import android.text.TextUtils;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f10605a;
    private String b;
    private String c;
    private String d;
    private String e;

    public b(b bVar, String str) {
        this.f10605a = "";
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "TPLogger";
        a(bVar, str);
    }

    private void b() {
        this.e = this.f10605a;
        if (!TextUtils.isEmpty(this.b)) {
            this.e += "_C" + this.b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            this.e += "_T" + this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            this.e += "_" + this.d;
        }
    }

    public String a() {
        return this.e;
    }

    public String toString() {
        return "TPLoggerContext{prefix='" + this.f10605a + "', classId='" + this.b + "', taskId='" + this.c + "', model='" + this.d + "', tag='" + this.e + '\'' + AbstractJsonLexerKt.END_OBJ;
    }

    public b(String str) {
        this(str, "", "", "");
    }

    public void a(b bVar, String str) {
        String str2;
        if (bVar != null) {
            this.f10605a = bVar.f10605a;
            this.b = bVar.b;
            str2 = bVar.c;
        } else {
            str2 = "";
            this.f10605a = "";
            this.b = "";
        }
        this.c = str2;
        this.d = str;
        b();
    }

    public b(String str, String str2, String str3, String str4) {
        this.e = "TPLogger";
        this.f10605a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        b();
    }

    public void a(String str) {
        this.c = str;
        b();
    }
}
