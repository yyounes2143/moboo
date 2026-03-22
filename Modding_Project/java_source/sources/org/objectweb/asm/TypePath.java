package org.objectweb.asm;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class TypePath {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f14097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f14097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f14096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + (i * 2) + 2];
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f14097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f14096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + (i * 2) + 1];
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f14096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww];
    }

    public String toString() {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        StringBuilder sb = new StringBuilder(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * 2);
        for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2; i++) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 1) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 2) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 3) {
                            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
                            sb.append(';');
                        } else {
                            throw new AssertionError();
                        }
                    } else {
                        sb.append('*');
                    }
                } else {
                    sb.append('.');
                }
            } else {
                sb.append(AbstractJsonLexerKt.BEGIN_LIST);
            }
        }
        return sb.toString();
    }
}
