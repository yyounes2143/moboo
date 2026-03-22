package org.jacoco.core.internal.analysis;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jacoco.core.analysis.ICounter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class CounterImpl implements ICounter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CounterImpl f13507Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CounterImpl f13508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CounterImpl f13509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CounterImpl[][] f13510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CounterImpl[31];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: org.jacoco.core.internal.analysis.CounterImpl$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[ICounter.CounterValue.values().length];
            f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[ICounter.CounterValue.TOTALCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICounter.CounterValue.MISSEDCOUNT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICounter.CounterValue.COVEREDCOUNT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICounter.CounterValue.MISSEDRATIO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICounter.CounterValue.COVEREDRATIO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Fix extends CounterImpl {
        public Fix(int i, int i2) {
            super(i, i2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Var extends CounterImpl {
        public Var(int i, int i2) {
            super(i, i2);
        }
    }

    static {
        for (int i = 0; i <= 30; i++) {
            f13510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = new CounterImpl[31];
            for (int i2 = 0; i2 <= 30; i2++) {
                f13510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i][i2] = new Fix(i, i2);
            }
        }
        CounterImpl[][] counterImplArr = f13510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        CounterImpl[] counterImplArr2 = counterImplArr[0];
        f13509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = counterImplArr2[0];
        f13508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = counterImplArr[1][0];
        f13507Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = counterImplArr2[1];
    }

    public CounterImpl(int i, int i2) {
        this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
    }

    public static CounterImpl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        if (i <= 30 && i2 <= 30) {
            return f13510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i][i2];
        }
        return new Var(i, i2);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public double Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return i / (i + this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return i / (this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + i);
    }

    @Override // org.jacoco.core.analysis.ICounter
    public double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ICounter.CounterValue counterValue) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int i = AnonymousClass1.f13513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[counterValue.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        throw new AssertionError(counterValue);
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // org.jacoco.core.analysis.ICounter
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.jacoco.core.analysis.ICounter
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ICounter) {
            ICounter iCounter = (ICounter) obj;
            if (this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == iCounter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == iCounter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f13512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ^ (this.f13511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 17);
    }

    public String toString() {
        return "Counter[" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + '/' + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + AbstractJsonLexerKt.END_LIST;
    }
}
