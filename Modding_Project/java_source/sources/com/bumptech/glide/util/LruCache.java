package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class LruCache<T, Y> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<T, Entry<Y>> f5203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap(100, 0.75f, true);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Entry<Y> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Y f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(Y y, int i) {
            this.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = y;
            this.f5204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }
    }

    public LruCache(long j) {
        this.f5202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f5201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwww(long j) {
        while (this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww > j) {
            Iterator<Map.Entry<T, Entry<Y>>> it = this.f5203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet().iterator();
            Map.Entry<T, Entry<Y>> next = it.next();
            Entry<Y> value = next.getValue();
            this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww -= value.f5204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            T key = next.getKey();
            it.remove();
            Wwwwwwwwwwwwwwwwwwwwwwwww(key, value.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Nullable
    public synchronized Y Wwwwwwwwwwwwwwwwwwwwwww(@NonNull T t) {
        Entry<Y> remove = this.f5203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(t);
        if (remove == null) {
            return null;
        }
        this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww -= remove.f5204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return remove.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public synchronized Y Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, @Nullable Y y) {
        Entry<Y> entry;
        int Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(y);
        long j = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        Y y2 = null;
        if (j >= this.f5201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwww(t, y);
            return null;
        }
        if (y != null) {
            this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += j;
        }
        Map<T, Entry<Y>> map = this.f5203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (y == null) {
            entry = null;
        } else {
            entry = new Entry<>(y, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        Entry<Y> put = map.put(t, entry);
        if (put != null) {
            this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww -= put.f5204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (!put.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(y)) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(t, put.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (put != null) {
            y2 = put.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return y2;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Y y) {
        return 1;
    }

    @Nullable
    public synchronized Y Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t) {
        Y y;
        Entry<Y> entry = this.f5203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(t);
        if (entry != null) {
            y = entry.f5205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            y = null;
        }
        return y;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww(this.f5201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public synchronized long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww(0L);
    }

    public synchronized long getCurrentSize() {
        return this.f5200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, @Nullable Y y) {
    }
}
