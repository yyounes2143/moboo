package com.bumptech.glide.load.resource.transcode;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class TranscoderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Entry<?, ?>> f4923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Entry<Z, R> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceTranscoder<Z, R> f4924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<R> f4925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<Z> f4926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
            this.f4926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f4925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
            this.f4924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceTranscoder;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            if (this.f4926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f4925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
    }

    public synchronized <Z, R> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
        this.f4923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new Entry<>(cls, cls2, resourceTranscoder));
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (Entry<?, ?> entry : this.f4923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2) && !arrayList.contains(entry.f4925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                arrayList.add(entry.f4925Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <Z, R> ResourceTranscoder<Z, R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return UnitTranscoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        for (Entry<?, ?> entry : this.f4923Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2)) {
                return (ResourceTranscoder<Z, R>) entry.f4924Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }
}
