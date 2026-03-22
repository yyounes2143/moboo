package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class w3 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3802a;
    private final Context b = com.applovin.impl.sdk.k.o();
    private String c;

    public w3(com.applovin.impl.sdk.k kVar) {
        this.f3802a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (this.c == null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b.getResources().openRawResource(R.raw.omsdk_v1_5_3)));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            sb.append(readLine);
                        } else {
                            this.c = sb.toString();
                            bufferedReader.close();
                            return;
                        }
                    }
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                this.f3802a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3802a.O().a("OpenMeasurementService", "Failed to retrieve resource omsdk_v1_5_3.js", th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        Omid.activate(this.b);
        this.f3802a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3802a.O();
            StringBuilder sb = new StringBuilder();
            sb.append("Init ");
            if (d()) {
                str = "succeeded";
            } else {
                str = "failed";
            }
            sb.append(str);
            sb.append(" and took ");
            sb.append(System.currentTimeMillis() - currentTimeMillis);
            sb.append("ms");
            O.a("OpenMeasurementService", sb.toString());
        }
        h();
    }

    private void h() {
        this.f3802a.q0().a((w4) new f6(this.f3802a, "OpenMeasurementService", new Runnable() { // from class: com.applovin.impl.Xxxxxxx
            @Override // java.lang.Runnable
            public final void run() {
                w3.this.f();
            }
        }), r5.b.OTHER);
    }

    public String a() {
        return this.c;
    }

    public Partner b() {
        return Partner.createPartner((String) this.f3802a.a(l4.f0), AppLovinSdk.VERSION);
    }

    public String c() {
        return Omid.getVersion();
    }

    public boolean d() {
        return Omid.isActive();
    }

    public boolean e() {
        String str = this.f3802a.n0().getExtraParameters().get("enable_omsdk_testing");
        if (StringUtils.isValidString(str)) {
            return Boolean.parseBoolean(str);
        }
        return false;
    }

    public void i() {
        if (((Boolean) this.f3802a.a(l4.e0)).booleanValue()) {
            this.f3802a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3802a.O();
                O.a("OpenMeasurementService", "Initializing Open Measurement SDK v" + c() + "...");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Xxxxxx
                @Override // java.lang.Runnable
                public final void run() {
                    w3.this.g();
                }
            });
        }
    }

    public String a(String str, Map map) {
        String str2;
        try {
            if (e()) {
                String a2 = x3.a(this.f3802a, map);
                if (StringUtils.isValidString(a2)) {
                    str2 = ScriptInjector.injectScriptContentIntoHtml(a2, str);
                    return ScriptInjector.injectScriptContentIntoHtml(this.c, str2);
                }
            }
            str2 = str;
            return ScriptInjector.injectScriptContentIntoHtml(this.c, str2);
        } catch (Throwable th) {
            this.f3802a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3802a.O().a("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th);
            }
            return str;
        }
    }
}
