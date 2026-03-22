package com.changdu.component.webviewcache;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CDWebResourceResponse {

    /* renamed from: a  reason: collision with root package name */
    public int f5380a;
    public String b;
    public Map c;
    public byte[] f;
    public boolean d = true;
    public boolean e = false;
    public boolean g = false;

    public boolean getIsFromDiskCache() {
        return this.g;
    }

    public byte[] getOriginBytes() {
        return this.f;
    }

    public String getReasonPhrase() {
        return this.b;
    }

    public int getResponseCode() {
        return this.f5380a;
    }

    public Map<String, String> getResponseHeaders() {
        return this.c;
    }

    public boolean isCacheByOurselves() {
        return this.e;
    }

    public boolean isCacheable() {
        int i = this.f5380a;
        if (i != 200 && i != 203 && i != 204 && i != 206) {
            return false;
        }
        return true;
    }

    public boolean isModified() {
        return this.d;
    }

    public void setCacheByOurselves(boolean z) {
        this.e = z;
    }

    public void setIsFromDiskCache(boolean z) {
        this.g = z;
    }

    public void setModified(boolean z) {
        this.d = z;
    }

    public void setOriginBytes(byte[] bArr) {
        this.f = bArr;
    }

    public void setReasonPhrase(String str) {
        this.b = str;
    }

    public void setResponseCode(int i) {
        this.f5380a = i;
    }

    public void setResponseHeaders(Map<String, String> map) {
        this.c = map;
    }
}
