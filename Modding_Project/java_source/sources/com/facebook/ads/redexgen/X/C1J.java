package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.1J  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1J<E> extends AbstractC0516Al<E> {
    public final transient E A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    public C1J(E element) {
        this.A00 = (E) AbstractC1726jA.A04(element);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1923ma
    public final int A0I(Object[] dst, int offset) {
        dst[offset] = this.A00;
        return offset + 1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0516Al, com.facebook.ads.redexgen.X.AbstractC1923ma
    public final AbstractC0517Am<E> A0J() {
        return AbstractC0517Am.A04(this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1923ma
    public final boolean A0K() {
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: A0N */
    public final AbstractC2096pg<E> iterator() {
        return AbstractC1970nL.A03(this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // com.facebook.ads.redexgen.X.AbstractC1923ma, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object target) {
        return this.A00.equals(target);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // com.facebook.ads.redexgen.X.AbstractC0516Al, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.A00.hashCode();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1J != com.google.common.collect.SingletonImmutableSet<E> */
    @Override // java.util.AbstractCollection
    public final String toString() {
        return AbstractJsonLexerKt.BEGIN_LIST + this.A00.toString() + AbstractJsonLexerKt.END_LIST;
    }
}
