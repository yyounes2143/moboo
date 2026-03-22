package com.tencent.thumbplayer.tcmedia.g.f;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes6.dex */
public final class b {
    public static final b e = new b(1920, 1920);
    public int b;
    public int c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f10639a = true;
    public a d = a.First;

    /* loaded from: classes6.dex */
    public enum a {
        First,
        SAME
    }

    public b(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public final String toString() {
        return "[initWidth:" + this.b + ", initHeight:" + this.c + ", reConfigByRealFormat:" + this.f10639a + AbstractJsonLexerKt.END_LIST;
    }
}
