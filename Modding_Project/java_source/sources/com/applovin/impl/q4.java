package com.applovin.impl;

import com.applovin.mediation.MaxError;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class q4 {

    /* renamed from: a  reason: collision with root package name */
    private final r4 f3512a;
    private final String b;
    private final String c;
    private final String d;
    private final MaxError e;
    private final long f;
    private final long g;
    private final boolean h;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(q4 q4Var);
    }

    private q4(r4 r4Var, com.applovin.impl.mediation.h hVar, String str, MaxError maxError, long j, long j2) {
        this(r4Var, str, maxError, j, j2, hVar != null ? hVar.i() : null, hVar != null ? hVar.b() : null, false);
    }

    public static q4 a(r4 r4Var, com.applovin.impl.mediation.h hVar, String str, long j, long j2) {
        if (r4Var != null) {
            if (hVar != null) {
                return new q4(r4Var, hVar, str, null, j, j2);
            }
            throw new IllegalArgumentException("No adapterWrapper specified");
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public long b() {
        return this.g;
    }

    public MaxError c() {
        return this.e;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.d;
    }

    public r4 f() {
        return this.f3512a;
    }

    public boolean g() {
        return this.h;
    }

    public String toString() {
        int i;
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("SignalCollectionResult{mSignalProviderSpec=");
        sb.append(this.f3512a);
        sb.append(", mSdkVersion='");
        sb.append(this.b);
        sb.append('\'');
        sb.append(", mAdapterVersion='");
        sb.append(this.c);
        sb.append('\'');
        sb.append(", mSignalDataLength='");
        String str2 = this.d;
        if (str2 != null) {
            i = str2.length();
        } else {
            i = 0;
        }
        sb.append(i);
        sb.append('\'');
        sb.append(", mErrorMessage=");
        MaxError maxError = this.e;
        if (maxError != null) {
            str = maxError.getMessage();
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }

    private q4(r4 r4Var, String str, MaxError maxError, long j, long j2, String str2, String str3, boolean z) {
        this.f3512a = r4Var;
        this.d = str;
        this.e = maxError;
        this.f = j;
        this.g = j2;
        this.b = str2;
        this.c = str3;
        this.h = z;
    }

    public static q4 a(r4 r4Var, MaxError maxError) {
        return a(r4Var, (com.applovin.impl.mediation.h) null, maxError, -1L, -1L);
    }

    public static q4 a(r4 r4Var, com.applovin.impl.mediation.h hVar, MaxError maxError, long j, long j2) {
        if (r4Var != null) {
            return new q4(r4Var, hVar, null, maxError, j, j2);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public static q4 a(q4 q4Var) {
        return new q4(q4Var.f(), q4Var.e(), q4Var.c(), q4Var.f, q4Var.g, q4Var.d(), q4Var.a(), true);
    }

    public String a() {
        return this.c;
    }
}
