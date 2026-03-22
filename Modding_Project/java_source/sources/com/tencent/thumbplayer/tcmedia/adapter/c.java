package com.tencent.thumbplayer.tcmedia.adapter;

import android.content.res.AssetFileDescriptor;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Object f10530a;
    private b g;
    private boolean h;
    private float i;
    private String j;
    private float k;
    private TPProgramInfo o;
    private int m = -1;
    private Map<String, d> b = new HashMap(0);
    private Map<String, a> c = new HashMap(0);
    private h f = new h();
    private Map<Integer, TPOptionalParam> e = new HashMap(0);
    private Map<Integer, TPTrackInfo> l = new HashMap(0);
    private ArrayList<TPTrackInfo> n = new ArrayList<>();
    private ArrayList<C0221c> d = new ArrayList<>();

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f10531a;
        public String b;
        public List<TPOptionalParam> c;
        public Map<String, String> d;
    }

    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f10532a;
        public long b;
        public long c;
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0221c {

        /* renamed from: a  reason: collision with root package name */
        public int f10533a;
        public long b;
        public TPTrackInfo c;
    }

    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f10534a;
        public String b;
        public String c;
        public Map<String, String> d;
    }

    public TPTrackInfo a(int i) {
        return this.l.get(Integer.valueOf(i));
    }

    public TPOptionalParam b(int i) {
        return this.e.get(Integer.valueOf(i));
    }

    public ArrayList<C0221c> c() {
        return this.d;
    }

    public Object d() {
        return this.f10530a;
    }

    public h e() {
        return this.f;
    }

    public boolean f() {
        h hVar = this.f;
        if (hVar != null && hVar.h()) {
            return true;
        }
        return false;
    }

    public boolean g() {
        return this.h;
    }

    public float h() {
        return this.i;
    }

    public String i() {
        return this.j;
    }

    public float j() {
        return this.k;
    }

    public b k() {
        return this.g;
    }

    public TPProgramInfo l() {
        return this.o;
    }

    public List<d> m() {
        ArrayList arrayList = new ArrayList(this.b.size());
        for (Map.Entry<String, d> entry : this.b.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<a> n() {
        ArrayList arrayList = new ArrayList(this.c.size());
        for (Map.Entry<String, a> entry : this.c.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public List<TPOptionalParam> o() {
        ArrayList arrayList = new ArrayList(this.e.size());
        for (Map.Entry<Integer, TPOptionalParam> entry : this.e.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    public boolean p() {
        if (e() == null || e().g() != 2) {
            return false;
        }
        return true;
    }

    public void a() {
        this.b.clear();
        this.c.clear();
        this.h = false;
        this.i = 1.0f;
        this.j = "";
        this.k = 1.0f;
        this.l.clear();
        this.f10530a = null;
        this.e.clear();
        this.f = new h();
        this.g = null;
        this.o = null;
        this.m = -1;
        this.n.clear();
        this.d.clear();
    }

    public ArrayList<TPTrackInfo> b() {
        return this.n;
    }

    public void a(float f) {
        this.i = f;
    }

    public void b(float f) {
        this.k = f;
    }

    public void a(int i, long j, TPTrackInfo tPTrackInfo) {
        this.l.put(Integer.valueOf(tPTrackInfo.getTrackType()), tPTrackInfo);
        if (i < 0 || i >= this.n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i + " is invalid, trackInfoList size:" + this.n.size());
            return;
        }
        C0221c c0221c = new C0221c();
        c0221c.f10533a = i;
        c0221c.b = j;
        ArrayList<TPTrackInfo> arrayList = this.n;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            TPTrackInfo tPTrackInfo2 = arrayList.get(i2);
            i2++;
            TPTrackInfo tPTrackInfo3 = tPTrackInfo2;
            if (tPTrackInfo3.trackType == tPTrackInfo.trackType) {
                if ((TextUtils.isEmpty(tPTrackInfo3.name) && TextUtils.isEmpty(tPTrackInfo.name)) || tPTrackInfo3.name.equals(tPTrackInfo.name)) {
                    tPTrackInfo3.isSelected = true;
                    c0221c.c = tPTrackInfo3;
                } else {
                    tPTrackInfo3.isSelected = false;
                }
            }
        }
        this.d.add(c0221c);
    }

    public void b(int i, long j, TPTrackInfo tPTrackInfo) {
        this.l.remove(Integer.valueOf(tPTrackInfo.getTrackType()));
        if (i < 0 || i >= this.n.size()) {
            TPLogUtil.w("TPPlaybackParams", "track Index:" + i + " is invalid, trackInfoList size:" + this.n.size());
            return;
        }
        ArrayList<TPTrackInfo> arrayList = this.n;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            TPTrackInfo tPTrackInfo2 = arrayList.get(i3);
            i3++;
            TPTrackInfo tPTrackInfo3 = tPTrackInfo2;
            if (tPTrackInfo3.trackType == tPTrackInfo.trackType && ((TextUtils.isEmpty(tPTrackInfo3.name) && TextUtils.isEmpty(tPTrackInfo.name)) || tPTrackInfo3.name.equals(tPTrackInfo.name))) {
                tPTrackInfo3.isSelected = false;
                break;
            }
        }
        ArrayList<C0221c> arrayList2 = this.d;
        int size2 = arrayList2.size();
        while (i2 < size2) {
            C0221c c0221c = arrayList2.get(i2);
            i2++;
            C0221c c0221c2 = c0221c;
            TPTrackInfo tPTrackInfo4 = c0221c2.c;
            if (tPTrackInfo4 != null && tPTrackInfo4.equals(tPTrackInfo)) {
                this.d.remove(c0221c2);
                return;
            }
        }
    }

    public void a(AssetFileDescriptor assetFileDescriptor) {
        this.f.a(assetFileDescriptor);
    }

    public void b(String str) {
        this.f.a(str);
    }

    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        this.f.a(parcelFileDescriptor);
    }

    public void b(boolean z) {
        if (this.g == null) {
            this.g = new b();
        }
        b bVar = this.g;
        bVar.f10532a = z;
        bVar.b = 0L;
        bVar.c = -1L;
    }

    public void a(Surface surface) {
        this.f10530a = surface;
    }

    public void a(SurfaceHolder surfaceHolder) {
        this.f10530a = surfaceHolder;
    }

    public void a(com.tencent.thumbplayer.tcmedia.adapter.a.e eVar, Map<String, String> map) {
        this.f.a(eVar);
        this.f.a(map);
    }

    public void a(TPOptionalParam tPOptionalParam) {
        if (tPOptionalParam != null) {
            this.e.put(Integer.valueOf(tPOptionalParam.getKey()), tPOptionalParam);
        }
    }

    public void a(TPProgramInfo tPProgramInfo) {
        this.o = tPProgramInfo;
    }

    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f.a(iTPMediaAsset);
    }

    public void a(String str) {
        this.j = str;
    }

    private void a(String str, String str2) {
        this.m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 2;
        tPTrackInfo.name = str2;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.n.add(tPTrackInfo);
    }

    private void a(String str, String str2, String str3) {
        this.m++;
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.trackType = 3;
        tPTrackInfo.name = str3;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        this.n.add(tPTrackInfo);
    }

    public void a(String str, Map<String, String> map) {
        this.f.a(str);
        this.f.a(map);
    }

    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            return;
        }
        d dVar = new d();
        dVar.f10534a = str;
        dVar.d = map;
        dVar.b = str2;
        dVar.c = str3;
        this.b.put(str, dVar);
        a(str, str2, str3);
    }

    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a aVar = new a();
        aVar.f10531a = str;
        aVar.d = map;
        aVar.b = str2;
        aVar.c = list;
        this.c.put(str, aVar);
        a(str, str2);
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(boolean z, long j, long j2) {
        if (this.g == null) {
            this.g = new b();
        }
        b bVar = this.g;
        bVar.f10532a = z;
        bVar.b = j;
        bVar.c = j2;
    }
}
