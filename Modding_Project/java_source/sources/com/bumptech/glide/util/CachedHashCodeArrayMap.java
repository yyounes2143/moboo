package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class CachedHashCodeArrayMap<K, V> extends ArrayMap<K, V> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5185Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public int hashCode() {
        if (this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = super.hashCode();
        }
        return this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k, V v) {
        this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        return (V) super.put(k, v);
    }

    @Override // androidx.collection.SimpleArrayMap
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i) {
        this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        return (V) super.removeAt(i);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i, V v) {
        this.f5185Wwwwwwwwwwwwwwwwwwwwwwwww = 0;
        return (V) super.setValueAt(i, v);
    }
}
