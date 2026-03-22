package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class b {
    private static boolean h = true;
    private static boolean i = true;
    protected AuthorityInfoBean b;
    private e g;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<String> f8941a = new ArrayList<>();
    private int c = 3;
    private int d = 0;
    private int e = 0;
    private String f = "";

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f8942a;
        final /* synthetic */ OnCompletionListener b;

        public a(Context context, OnCompletionListener onCompletionListener) {
            this.f8942a = context;
            this.b = onCompletionListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f8942a);
            this.b.onCompletion();
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.foundation.controller.authoritycontroller.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0097b implements e.a {
        public C0097b() {
        }

        @Override // com.mbridge.msdk.foundation.controller.e.a
        public void a() {
            b.this.k();
        }
    }

    public b() {
        h();
    }

    public static void b(boolean z) {
        i = z;
    }

    public static boolean i() {
        return h;
    }

    public static boolean j() {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        int i2;
        boolean c = this.g.c();
        b(this.g.b());
        if (c) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        d(i2);
        this.b.authDeviceIdStatus(c ? 1 : 0);
    }

    public abstract int a(g gVar, String str);

    public int c() {
        return this.d;
    }

    public int d() {
        return this.e;
    }

    public int e() {
        return this.c;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        JSONArray jSONArray = new JSONArray();
        g c = h.b().c();
        for (int i2 = 0; i2 < this.f8941a.size(); i2++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyname", String.valueOf(this.f8941a.get(i2)));
                jSONObject.put("client_status", a(this.f8941a.get(i2)));
                jSONObject.put("server_status", a(c, this.f8941a.get(i2)));
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    public void h() {
        AuthorityInfoBean authorityInfoBean = new AuthorityInfoBean();
        this.b = authorityInfoBean;
        try {
            authorityInfoBean.authGenDataStatus(1);
            this.b.authDeviceIdStatus(1);
            this.b.authSerialIdStatus(1);
            this.b.authOtherDataStatus(1);
            this.f8941a.add(MBridgeConstans.AUTHORITY_GENERAL_DATA);
            this.f8941a.add(MBridgeConstans.AUTHORITY_DEVICE_ID);
            this.f8941a.add(MBridgeConstans.AUTHORITY_SERIAL_ID);
            this.f8941a.add(MBridgeConstans.AUTHORITY_OTHER);
        } catch (Exception e) {
            o0.b("SDKAuthorityController", e.getMessage());
        }
    }

    private void d(int i2) {
        this.c = i2 != 1 ? 2 : 1;
    }

    public boolean b() {
        int i2 = this.c;
        return i2 == 1 || i2 == 3;
    }

    public void c(int i2) {
        this.e = i2;
    }

    public static void a(boolean z) {
        h = z;
    }

    public void b(int i2) {
        this.d = i2;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f = str;
    }

    public AuthorityInfoBean a() {
        AuthorityInfoBean authorityInfoBean = this.b;
        if (authorityInfoBean != null) {
            return authorityInfoBean;
        }
        AuthorityInfoBean authorityInfoBean2 = new AuthorityInfoBean();
        authorityInfoBean2.a(1);
        return authorityInfoBean2;
    }

    public void a(int i2) {
        this.c = i2 != 1 ? 2 : 1;
        if (this.b != null) {
            d(i2);
        }
    }

    public void a(Context context, OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, onCompletionListener));
        } else {
            a(context);
        }
    }

    public int a(String str) {
        AuthorityInfoBean authorityInfoBean;
        try {
            if (TextUtils.isEmpty(str) || (authorityInfoBean = this.b) == null) {
                return 0;
            }
            return authorityInfoBean.getStatusByKey(str);
        } catch (Exception e) {
            o0.b("SDKAuthorityController", e.getMessage());
            return 0;
        }
    }

    public void a(String str, int i2) {
        if (TextUtils.isEmpty(str) || this.b == null) {
            return;
        }
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1262204598:
                if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
                    c = 0;
                    break;
                }
                break;
            case -1133763064:
                if (str.equals(MBridgeConstans.AUTHORITY_ALL_INFO)) {
                    c = 1;
                    break;
                }
                break;
            case -663505496:
                if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                    c = 2;
                    break;
                }
                break;
            case 1026848797:
                if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    c = 3;
                    break;
                }
                break;
            case 1564683028:
                if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.b.authSerialIdStatus(i2);
                return;
            case 1:
                this.b.a(i2);
                return;
            case 2:
                this.b.authDeviceIdStatus(i2);
                return;
            case 3:
                this.b.authGenDataStatus(i2);
                return;
            case 4:
                this.b.authOtherDataStatus(i2);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            if (this.g == null) {
                e eVar = new e(context);
                this.g = eVar;
                eVar.a(new C0097b());
            }
            k();
        } catch (Throwable th) {
            o0.b("SDKAuthorityController", th.getMessage());
        }
    }
}
