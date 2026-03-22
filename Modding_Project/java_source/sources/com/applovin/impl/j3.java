package com.applovin.impl;

import com.applovin.impl.h3;
import com.applovin.impl.i3;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class j3 {
    private static final HashMap b = new HashMap();
    private static final HashMap c = new HashMap();
    private static final HashMap d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3160a;

    public j3(com.applovin.impl.sdk.k kVar) {
        this.f3160a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l, Long l2) {
        return l;
    }

    private void b(h3 h3Var, i3 i3Var, h3.a aVar) {
        HashMap hashMap;
        if (!a(h3Var, i3Var, aVar)) {
            return;
        }
        String b2 = i3Var.b();
        HashMap a2 = a(i3Var.a());
        synchronized (a2) {
            try {
                if (a2.containsKey(b2)) {
                    hashMap = (HashMap) a2.get(b2);
                } else {
                    HashMap hashMap2 = new HashMap();
                    a2.put(b2, hashMap2);
                    hashMap = hashMap2;
                }
                hashMap.put(h3Var, aVar.a(hashMap.get(h3Var)));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(h3 h3Var, i3 i3Var) {
        b(h3Var, i3Var, new h3.a() { // from class: com.applovin.impl.Kkkkkkkk
            @Override // com.applovin.impl.h3.a
            public final Object a(Object obj) {
                Long a2;
                a2 = j3.a((Long) obj);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long a(Long l) {
        return Long.valueOf(l != null ? 1 + l.longValue() : 1L);
    }

    public void a(h3 h3Var, i3 i3Var, final Long l) {
        b(h3Var, i3Var, new h3.a() { // from class: com.applovin.impl.Kkkkkkkkk
            @Override // com.applovin.impl.h3.a
            public final Object a(Object obj) {
                Long a2;
                a2 = j3.a(l, (Long) obj);
                return a2;
            }
        });
    }

    public Map a(h3 h3Var, i3.a aVar) {
        HashMap a2 = a(aVar);
        HashMap hashMap = new HashMap();
        synchronized (a2) {
            try {
                for (String str : a2.keySet()) {
                    hashMap.put(str, ((HashMap) a2.get(str)).get(h3Var));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }

    private HashMap a(i3.a aVar) {
        if (aVar == i3.a.AD_UNIT_ID) {
            return b;
        }
        if (aVar == i3.a.AD_FORMAT) {
            return c;
        }
        return d;
    }

    private boolean a(h3 h3Var, i3 i3Var, h3.a aVar) {
        if (h3Var == null) {
            this.f3160a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3160a.O().b("MediationStatsManager", "Failed to update stat, no stat provided");
            }
            return false;
        } else if (i3Var == null) {
            this.f3160a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3160a.O().b("MediationStatsManager", "Failed to update stat, no dimension key provided");
            }
            return false;
        } else if (aVar == null) {
            this.f3160a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3160a.O().b("MediationStatsManager", "Failed to update stat, no stat updater provided");
            }
            return false;
        } else {
            return true;
        }
    }
}
