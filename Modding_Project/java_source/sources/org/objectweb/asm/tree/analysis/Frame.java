package org.objectweb.asm.tree.analysis;

import org.objectweb.asm.tree.analysis.Value;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class Frame<V extends Value> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f14165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f14166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public V[] f14167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public V Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f14167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[this.f14166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i];
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public V Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i < this.f14166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return this.f14167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
        }
        throw new IndexOutOfBoundsException("Trying to get an inexistant local variable " + i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(); i++) {
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
        }
        sb.append(' ');
        for (int i2 = 0; i2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(); i2++) {
            sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2).toString());
        }
        return sb.toString();
    }
}
