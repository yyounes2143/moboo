package com.bumptech.glide.load.model;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GlideUrl implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4615Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile byte[] f4616Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public URL f4617Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f4618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f4619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final URL f4620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GlideUrl(URL url) {
        this(url, Headers.f4622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public URL Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws MalformedURLException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final URL Wwwwwwwwwwwwwwwwwwwwwwwwwwww() throws MalformedURLException {
        if (this.f4617Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f4617Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new URL(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return this.f4617Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (TextUtils.isEmpty(this.f4618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            String str = this.f4619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).toString();
            }
            this.f4618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f4618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4616Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f4616Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return this.f4616Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = this.f4619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str;
        }
        return ((URL) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)).toString();
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof GlideUrl) {
            GlideUrl glideUrl = (GlideUrl) obj;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals(glideUrl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && this.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(glideUrl.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        if (this.f4615Wwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
            int hashCode = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode();
            this.f4615Wwwwwwwwwwwwwwwwwwwwwwwwwww = hashCode;
            this.f4615Wwwwwwwwwwwwwwwwwwwwwwwwwww = (hashCode * 31) + this.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }
        return this.f4615Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public GlideUrl(String str) {
        this(str, Headers.f4622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public GlideUrl(URL url, Headers headers) {
        this.f4620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (URL) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url);
        this.f4619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Headers) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers);
    }

    public GlideUrl(String str, Headers headers) {
        this.f4620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        this.f4621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Headers) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers);
    }
}
