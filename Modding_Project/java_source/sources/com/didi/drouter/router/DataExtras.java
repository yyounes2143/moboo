package com.didi.drouter.router;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class DataExtras<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bundle f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, Object> f5712Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f5714Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;

    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putString(str, str2);
        return this.f5714Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString(str);
    }

    public <M extends Parcelable> M Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return (M) this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getParcelable(str);
    }

    public int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getIntArray(str);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getInt(str);
    }

    @NonNull
    public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5713Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
