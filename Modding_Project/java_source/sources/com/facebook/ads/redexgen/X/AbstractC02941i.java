package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.1i  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC02941i<K, V> extends BD<K, V> implements Serializable {
    public static byte[] A02 = null;
    public static String[] A03 = {"8r4g5TVHuPTTEnOtjBSYLe2NoPZev3PL", "ZANRIcgacCs2MrGdQFs4BnSQ4f0OwMHM", "INAFHP4NB26l7mhFzzAYwDEUO08LdW1T", "w9HTcMerj5Ucor1CBa36675WVQ4LimP", "S0p05mXNQ0J7ss", "bhB1flpiQfpMN0", "TPylgZWOdIZWygeLq1OgLn1DVzZt4taa", "Gp6xvn2xjKoLwUaOKBIxtDMJneYJVeH8"};
    public static final long serialVersionUID = 2447537837011683357L;
    public transient int A00;
    public transient Map<K, Collection<V>> A01;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A02 = new byte[]{56, 19, 1, 86, 53, Ascii.EM, Ascii.SUB, Ascii.SUB, 19, Ascii.NAK, 2, Ascii.US, Ascii.EM, Ascii.CAN, 86, 0, Ascii.US, Ascii.EM, Ascii.SUB, Ascii.ETB, 2, 19, Ascii.DC2, 86, 2, Ascii.RS, 19, 86, 53, Ascii.EM, Ascii.SUB, Ascii.SUB, 19, Ascii.NAK, 2, Ascii.US, Ascii.EM, Ascii.CAN, 86, 5, 6, 19, Ascii.NAK};
    }

    public abstract Collection<V> A0D();

    public abstract Collection<V> A0F(@ParametricNullness K key, Collection<V> collection);

    public abstract <E> Collection<E> A0G(Collection<E> collection);

    static {
        A08();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public AbstractC02941i(Map<K, Collection<V>> map) {
        AbstractC1726jA.A0C(map.isEmpty());
        this.A01 = map;
    }

    public static /* synthetic */ int A00(AbstractC02941i abstractC02941i) {
        int i = abstractC02941i.A00;
        abstractC02941i.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A01(AbstractC02941i abstractC02941i) {
        int i = abstractC02941i.A00;
        abstractC02941i.A00 = i - 1;
        return i;
    }

    public static /* synthetic */ int A02(AbstractC02941i abstractC02941i, int i) {
        int i2 = abstractC02941i.A00 + i;
        abstractC02941i.A00 = i2;
        return i2;
    }

    public static /* synthetic */ int A03(AbstractC02941i abstractC02941i, int i) {
        int i2 = abstractC02941i.A00 - i;
        abstractC02941i.A00 = i2;
        return i2;
    }

    public static <E> Iterator<E> A05(Collection<E> collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public void A0A(@CheckForNull Object key) {
        Collection<V> collection = (Collection) AbstractC2009nz.A06(this.A01, key);
        if (collection != null) {
            int count = collection.size();
            collection.clear();
            this.A00 -= count;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.BD
    public final Collection<V> A0B() {
        return new C1797kK(this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.BD
    public Iterator<V> A0C() {
        return new BH(this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public Collection<V> A0E(@ParametricNullness K key) {
        return A0D();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kH != com.google.common.collect.AbstractMapBasedMultimap<K, V>$WrappedCollection */
    /* JADX WARN: Incorrect inner types in method signature: (TK;Ljava/util/List<TV;>;Lcom/facebook/ads/redexgen/X/1i<TK;TV;>.WrappedCollection;)Ljava/util/List<TV;>; */
    public final List A0H(@ParametricNullness Object key, @CheckForNull List list, C1794kH ancestor) {
        if (list instanceof RandomAccess) {
            return new C02961k(this, key, list, ancestor);
        }
        return new BE(this, key, list, ancestor);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public Map<K, Collection<V>> A0I() {
        return this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public final Map<K, Collection<V>> A0J() {
        if (this.A01 instanceof NavigableMap) {
            return new C0Y(this, (NavigableMap) this.A01);
        }
        boolean z = this.A01 instanceof SortedMap;
        if (A03[2].charAt(31) != 'o') {
            A03[3] = "NCYt1eTwLWbpcysHbDqNMrCxO6pYN55";
            if (z) {
                return new C02951j(this, (SortedMap) this.A01);
            }
            return new BG(this, this.A01);
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public final Set<K> A0K() {
        if (this.A01 instanceof NavigableMap) {
            return new C0I(this, (NavigableMap) this.A01);
        }
        if (this.A01 instanceof SortedMap) {
            return new C0X(this, (SortedMap) this.A01);
        }
        return new C02971l(this, this.A01);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    public final void A0L(Map<K, Collection<V>> map) {
        this.A01 = map;
        this.A00 = 0;
        for (Collection<V> collection : map.values()) {
            AbstractC1726jA.A0C(!collection.isEmpty());
            this.A00 += collection.size();
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2024oE
    public boolean AGU(@ParametricNullness K key, @ParametricNullness V value) {
        Collection<V> collection = this.A01.get(key);
        if (collection == null) {
            Collection<V> A0E = A0E(key);
            if (A0E.add(value)) {
                this.A00++;
                this.A01.put(key, A0E);
                return true;
            }
            throw new AssertionError(A04(0, 43, 58));
        } else if (collection.add(value)) {
            int i = this.A00 + 1;
            if (A03[2].charAt(31) != 'o') {
                String[] strArr = A03;
                strArr[4] = "qdqPg3EJJL9zSp";
                strArr[5] = "JvkYzNNxKsGyOY";
                this.A00 = i;
                return true;
            }
            throw new RuntimeException();
        } else {
            return false;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2024oE
    public void clear() {
        for (Collection<V> collection : this.A01.values()) {
            collection.clear();
        }
        this.A01.clear();
        this.A00 = 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2024oE
    public int size() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1i != com.google.common.collect.AbstractMapBasedMultimap<K, V> */
    @Override // com.facebook.ads.redexgen.X.BD, com.facebook.ads.redexgen.X.InterfaceC2024oE
    public Collection<V> values() {
        return super.values();
    }
}
