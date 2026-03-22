package org.jacoco.core.analysis;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface ICoverageNode {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public enum CounterEntity {
        INSTRUCTION,
        BRANCH,
        LINE,
        COMPLEXITY,
        METHOD,
        CLASS
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public enum ElementType {
        METHOD,
        CLASS,
        SOURCEFILE,
        PACKAGE,
        BUNDLE,
        GROUP
    }

    ICounter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CounterEntity counterEntity);
}
