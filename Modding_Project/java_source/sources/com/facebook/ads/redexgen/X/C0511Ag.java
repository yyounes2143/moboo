package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* renamed from: com.facebook.ads.redexgen.X.Ag  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0511Ag<K, V> extends AbstractC2089pV<Map.Entry<K, V>, K> {
    public C0511Ag(Iterator backingIterator) {
        super(backingIterator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2089pV
    @ParametricNullness
    /* renamed from: A00 */
    public final K A01(Map.Entry<K, V> entry) {
        return entry.getKey();
    }
}
