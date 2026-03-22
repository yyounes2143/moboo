package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import androidx.media3.common.C;
import com.mbridge.msdk.foundation.same.broadcast.NetWorkChangeReceiver;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f9097a;
    private com.mbridge.msdk.setting.j b;
    private long c;
    private final BroadcastReceiver d;
    IntentFilter e;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final e0 f9098a = new e0();
    }

    public static e0 a() {
        return b.f9098a;
    }

    public String b() {
        long j;
        try {
            if (this.f9097a == null) {
                this.f9097a = new JSONObject();
            }
            if (this.f9097a.length() < 2) {
                try {
                    this.f9097a.put("KEY_INFO", (String) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", ""));
                } catch (Exception e) {
                    o0.b("NetAddressManager", e.getMessage());
                }
                try {
                    this.f9097a.put("KEY_TIME", ((Long) c.a(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", 0L)).longValue());
                } catch (Exception e2) {
                    o0.b("NetAddressManager", e2.getMessage());
                }
            }
            String optString = this.f9097a.optString("KEY_INFO");
            if (TextUtils.isEmpty(optString)) {
                return "";
            }
            com.mbridge.msdk.setting.g b2 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
            if (b2 != null) {
                j = b2.R();
            } else {
                j = 3600;
            }
            if (System.currentTimeMillis() - this.f9097a.optLong("KEY_TIME") > j * 1000) {
                return "";
            }
            return optString;
        } catch (Exception e3) {
            o0.b("NetAddressManager", e3.getMessage());
            return "";
        }
    }

    public void c() {
        Context d;
        try {
            if (com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b()).S() == 1 && (d = com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                IntentFilter intentFilter = new IntentFilter();
                this.e = intentFilter;
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                d.registerReceiver(this.d, this.e);
            }
        } catch (Exception e) {
            o0.b("NetAddressManager", e.getMessage());
        }
    }

    public void d() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.c > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            if (this.b == null) {
                this.b = new com.mbridge.msdk.setting.j();
            }
            this.b.c(com.mbridge.msdk.foundation.controller.c.m().d(), com.mbridge.msdk.foundation.controller.c.m().b(), com.mbridge.msdk.foundation.controller.c.m().c());
            this.c = currentTimeMillis;
        }
    }

    public void e() {
        Context d = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d != null) {
            try {
                d.unregisterReceiver(this.d);
            } catch (Exception e) {
                o0.b("NetAddressManager", e.getMessage());
            }
        }
    }

    private e0() {
        this.f9097a = new JSONObject();
        this.d = new NetWorkChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        this.e = intentFilter;
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }

    public void a(String str) {
        if (this.f9097a == null) {
            this.f9097a = new JSONObject();
        }
        try {
            if (!this.f9097a.optString("KEY_INFO", "").equals(str)) {
                this.f9097a.put("KEY_INFO", str);
                c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_INFO", str);
            }
        } catch (Exception e) {
            o0.b("NetAddressManager", e.getMessage());
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            this.f9097a.put("KEY_TIME", currentTimeMillis);
            c.b(com.mbridge.msdk.foundation.controller.c.m().d(), "KEY_TIME", Long.valueOf(currentTimeMillis));
        } catch (Exception e2) {
            o0.b("NetAddressManager", e2.getMessage());
        }
    }
}
