package com.bumptech.glide.load.engine.bitmap_recycle;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class GroupedLinkedMap<K extends Poolable, V> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LinkedEntry<K, V> f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedEntry<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<K, LinkedEntry<K, V>> f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class LinkedEntry<K, V> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LinkedEntry<K, V> f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LinkedEntry<K, V> f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<V> f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final K f4460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public LinkedEntry() {
            this(null);
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            List<V> list = this.f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Nullable
        public V Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                return this.f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1);
            }
            return null;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(V v) {
            if (this.f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            }
            this.f4459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(v);
        }

        public LinkedEntry(K k) {
            this.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
            this.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
            this.f4460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = k;
        }
    }

    public static <K, V> void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LinkedEntry<K, V> linkedEntry) {
        linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry;
        linkedEntry.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry;
    }

    public static <K, V> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LinkedEntry<K, V> linkedEntry) {
        LinkedEntry<K, V> linkedEntry2 = linkedEntry.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        linkedEntry2.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry2;
    }

    @Nullable
    public V Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (LinkedEntry linkedEntry = this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww; !linkedEntry.equals(this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww); linkedEntry = linkedEntry.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            V v = (V) linkedEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (v != null) {
                return v;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
            this.f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(linkedEntry.f4460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            ((Poolable) linkedEntry.f4460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(K k, V v) {
        LinkedEntry<K, V> linkedEntry = this.f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(k);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry<>(k);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
            this.f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(k, linkedEntry);
        } else {
            k.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        linkedEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(v);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LinkedEntry<K, V> linkedEntry) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
        LinkedEntry<K, V> linkedEntry2 = this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        linkedEntry.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry2.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LinkedEntry<K, V> linkedEntry) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
        LinkedEntry<K, V> linkedEntry2 = this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        linkedEntry.f4457Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry2;
        linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = linkedEntry2.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
    }

    @Nullable
    public V Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(K k) {
        LinkedEntry<K, V> linkedEntry = this.f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(k);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry<>(k);
            this.f4455Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(k, linkedEntry);
        } else {
            k.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(linkedEntry);
        return linkedEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        LinkedEntry linkedEntry = this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        boolean z = false;
        while (!linkedEntry.equals(this.f4456Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            sb.append(AbstractJsonLexerKt.BEGIN_OBJ);
            sb.append(linkedEntry.f4460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            sb.append(AbstractJsonLexerKt.COLON);
            sb.append(linkedEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            sb.append("}, ");
            linkedEntry = linkedEntry.f4458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            z = true;
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
