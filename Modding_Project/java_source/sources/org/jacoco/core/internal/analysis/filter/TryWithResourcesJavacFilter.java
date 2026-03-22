package org.jacoco.core.internal.analysis.filter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class TryWithResourcesJavacFilter implements IFilter {

    /* compiled from: Proguard */
    /* renamed from: org.jacoco.core.internal.analysis.filter.TryWithResourcesJavacFilter$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f13526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[Matcher.JavacPattern.values().length];
            f13526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[Matcher.JavacPattern.METHOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Matcher.JavacPattern.FULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Matcher.JavacPattern.OPTIMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Matcher.JavacPattern.OMITTED_NULL_CHECK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Matcher extends AbstractMatcher {

        /* compiled from: Proguard */
        /* loaded from: classes7.dex */
        public enum JavacPattern {
            OPTIMAL,
            FULL,
            OMITTED_NULL_CHECK,
            METHOD
        }
    }
}
