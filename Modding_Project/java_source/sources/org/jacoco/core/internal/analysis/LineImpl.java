package org.jacoco.core.internal.analysis;

import org.jacoco.core.analysis.ICounter;
import org.jacoco.core.analysis.ILine;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class LineImpl implements ILine {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final LineImpl f13514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final LineImpl[][][][] f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LineImpl[9][][];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Fix extends LineImpl {
        public Fix(int i, int i2, int i3, int i4) {
            super(CounterImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2), CounterImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, i4));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Var extends LineImpl {
    }

    static {
        for (int i = 0; i <= 8; i++) {
            f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = new LineImpl[9][];
            for (int i2 = 0; i2 <= 8; i2++) {
                f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i][i2] = new LineImpl[5];
                for (int i3 = 0; i3 <= 4; i3++) {
                    f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i][i2][i3] = new LineImpl[5];
                    for (int i4 = 0; i4 <= 4; i4++) {
                        f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i][i2][i3][i4] = new Fix(i, i2, i3, i4);
                    }
                }
            }
        }
        f13514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[0][0][0][0];
    }

    @Override // org.jacoco.core.analysis.ILine
    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.jacoco.core.analysis.ILine
    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ILine) {
            ILine iLine = (ILine) obj;
            if (this.f13517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(iLine.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && this.f13516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(iLine.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f13517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 23) ^ this.f13516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public LineImpl(CounterImpl counterImpl, CounterImpl counterImpl2) {
        this.f13517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = counterImpl;
        this.f13516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = counterImpl2;
    }
}
