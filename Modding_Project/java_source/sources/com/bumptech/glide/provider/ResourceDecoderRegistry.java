package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResourceDecoderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, List<Entry<?, ?>>> f5007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Entry<T, R> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceDecoder<T, R> f5009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<R> f5010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<T> f5011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NonNull Class<T> cls, @NonNull Class<R> cls2, ResourceDecoder<T, R> resourceDecoder) {
            this.f5011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f5010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
            this.f5009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceDecoder;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            if (this.f5011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f5010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<String> list) {
        try {
            ArrayList arrayList = new ArrayList(this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            for (String str : list) {
                this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str2 = (String) obj;
                if (!list.contains(str2)) {
                    this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            List<Entry<?, ?>> list = this.f5007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
            if (list != null) {
                for (Entry<?, ?> entry : list) {
                    if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2) && !arrayList.contains(entry.f5010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                        arrayList.add(entry.f5010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public final synchronized List<Entry<?, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
        List<Entry<?, ?>> list;
        try {
            if (!this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str)) {
                this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
            }
            list = this.f5007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
            if (list == null) {
                list = new ArrayList<>();
                this.f5007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }

    @NonNull
    public synchronized <T, R> List<ResourceDecoder<T, R>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f5008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            List<Entry<?, ?>> list = this.f5007Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
            if (list != null) {
                for (Entry<?, ?> entry : list) {
                    if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2)) {
                        arrayList.add(entry.f5009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).add(new Entry<>(cls, cls2, resourceDecoder));
    }
}
