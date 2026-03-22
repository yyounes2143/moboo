package com.tencent.thumbplayer.tcmedia.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f10542a;
    private int b;
    private ParcelFileDescriptor c;
    private AssetFileDescriptor d;
    private Map<String, String> e = new HashMap();
    private ITPMediaAsset f;
    private com.tencent.thumbplayer.tcmedia.adapter.a.e g;

    public String a() {
        return this.f10542a;
    }

    public Map<String, String> b() {
        return this.e;
    }

    public ParcelFileDescriptor c() {
        return this.c;
    }

    public AssetFileDescriptor d() {
        return this.d;
    }

    public ITPMediaAsset e() {
        return this.f;
    }

    public com.tencent.thumbplayer.tcmedia.adapter.a.e f() {
        return this.g;
    }

    public int g() {
        return this.b;
    }

    public boolean h() {
        if (TextUtils.isEmpty(this.f10542a) && this.c == null && this.d == null && this.f == null && this.g == null) {
            return false;
        }
        return true;
    }

    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f10542a = null;
        this.b = 4;
        this.e.clear();
        this.c = null;
        this.d = assetFileDescriptor;
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f10542a = null;
        this.b = 1;
        this.e.clear();
        this.c = parcelFileDescriptor;
        this.d = null;
    }

    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar) {
        this.f10542a = null;
        this.b = 3;
        this.c = null;
        this.d = null;
        this.g = eVar;
    }

    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f10542a = null;
        this.b = 2;
        this.e.clear();
        this.c = null;
        this.d = null;
        this.f = iTPMediaAsset;
    }

    public void a(String str) {
        this.f10542a = str;
        this.b = 0;
        this.c = null;
        this.d = null;
    }

    public void a(Map<String, String> map) {
        this.e.clear();
        Map<String, String> map2 = this.e;
        if (map == null) {
            map = new HashMap<>(0);
        }
        map2.putAll(map);
    }
}
