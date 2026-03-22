package org.jacoco.core.analysis;

import org.jacoco.core.analysis.ICoverageNode;
import org.jacoco.core.internal.analysis.CounterImpl;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CoverageNodeImpl implements ICoverageNode {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13489Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13490Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CounterImpl f13494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ICoverageNode.ElementType f13496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: org.jacoco.core.analysis.CoverageNodeImpl$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[ICoverageNode.CounterEntity.values().length];
            f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[ICoverageNode.CounterEntity.INSTRUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICoverageNode.CounterEntity.BRANCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICoverageNode.CounterEntity.LINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICoverageNode.CounterEntity.COMPLEXITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICoverageNode.CounterEntity.METHOD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[ICoverageNode.CounterEntity.CLASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13490Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13491Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13489Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.jacoco.core.analysis.ICoverageNode
    public ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ICoverageNode.CounterEntity counterEntity) {
        switch (AnonymousClass1.f13497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[counterEntity.ordinal()]) {
            case 1:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            case 2:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            case 3:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            case 4:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            case 5:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            case 6:
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            default:
                throw new AssertionError(counterEntity);
        }
    }

    public String toString() {
        return this.f13495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " [" + this.f13496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "]";
    }
}
