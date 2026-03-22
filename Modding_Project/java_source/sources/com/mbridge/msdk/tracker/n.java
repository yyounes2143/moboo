package com.mbridge.msdk.tracker;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import j$.util.concurrent.ConcurrentHashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class n implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f9668a = new ConcurrentHashMap<>();

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f9669a;

        public a(boolean z) {
            this.f9669a = z;
        }

        public boolean a() {
            return this.f9669a;
        }
    }

    @Override // com.mbridge.msdk.tracker.f
    public boolean a(e eVar) throws Exception {
        a aVar;
        if (eVar != null && !TextUtils.isEmpty(eVar.b())) {
            try {
                String b = eVar.b();
                if (this.f9668a.containsKey(b)) {
                    aVar = this.f9668a.get(b);
                } else {
                    a aVar2 = new a(com.mbridge.msdk.foundation.same.report.c.a(b));
                    this.f9668a.put(b, aVar2);
                    aVar = aVar2;
                }
                if (aVar != null) {
                    if (aVar.a()) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("TrackManager", "apply", e);
                }
            }
        }
        return false;
    }
}
