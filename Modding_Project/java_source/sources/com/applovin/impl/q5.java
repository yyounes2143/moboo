package com.applovin.impl;

import android.app.Activity;
import androidx.exifinterface.media.ExifInterface;
import com.applovin.impl.r5;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class q5 extends w4 {
    private final com.applovin.impl.sdk.k g;

    public q5(com.applovin.impl.sdk.k kVar) {
        super("TaskInitializeSdk", kVar, true);
        this.g = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.g.S().a(this.g.e().b());
    }

    private void f() {
        if (this.g.S().c()) {
            return;
        }
        Activity u0 = this.g.u0();
        if (u0 != null) {
            this.g.S().a(u0);
            return;
        }
        m1 E = this.g.E();
        y1 y1Var = y1.i0;
        E.a(y1Var, this.b + ":maybeInitializeAdapters()");
        this.g.q0().a(new f6(this.g, true, "initializeAdapters", new Runnable() { // from class: com.applovin.impl.QQOOOOO
            @Override // java.lang.Runnable
            public final void run() {
                q5.this.e();
            }
        }), r5.b.CORE, TimeUnit.SECONDS.toMillis(1L));
    }

    private void g() {
        String str;
        String str2;
        String str3;
        boolean c = this.g.o0().c();
        Map n = this.g.B().n();
        Map K = this.g.B().K();
        if (c) {
            str = this.g.B().f().a();
        } else {
            str = "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        }
        if (c) {
            str2 = n.get("idfv") + " (use this for test devices)";
        } else {
            str2 = "<Enable verbose logging to see the App Set ID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>";
        }
        n2 n2Var = new n2();
        n2Var.a().a("=====AppLovin SDK=====");
        n2Var.a("===SDK Versions===").a("Version", AppLovinSdk.VERSION).a("Plugin Version", this.g.a(l4.B3)).a("Ad Review Version", i.b()).a("OM SDK Version", this.g.d0().c());
        n2Var.a("===Device Info===").a("OS", z6.d()).a("GAID", str).a("App Set ID", str2).a(ExifInterface.TAG_MODEL, n.get("model")).a("Locale", n.get("locale")).a("Emulator", n.get("sim")).a("Tablet", n.get("is_tablet"));
        n2Var.a("===App Info===").a("Application ID", K.get(CampaignEx.JSON_KEY_PACKAGE_NAME)).a("Target SDK", K.get("target_sdk"));
        n2Var.a("===SDK Settings===").a("SDK Key", this.g.i0()).a("Mediation Provider", this.g.V()).a("TG", y6.a(this.g)).a("MD", this.g.a(l4.t)).a("Test Mode On", Boolean.valueOf(this.g.s0().c())).a("Verbose Logging On", Boolean.valueOf(c));
        n2Var.a("===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies.").a(l0.a(a()));
        n2Var.a("===MAX Terms and Privcay Policy Flow===");
        p0 y = this.g.y();
        boolean j = y.j();
        n2Var.a("Enabled", Boolean.valueOf(j));
        if (j) {
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.g.w().getConsentFlowUserGeography();
            AppLovinSdkConfiguration.ConsentFlowUserGeography d = y.d();
            AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography2 = AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
            String str4 = "Other";
            if (consentFlowUserGeography == consentFlowUserGeography2) {
                str3 = "GDPR";
            } else if (consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                str3 = "Other";
            } else {
                str3 = "Unknown";
            }
            n2Var.a("Consent Flow Geography", str3);
            if (z6.c(this.g)) {
                if (d == consentFlowUserGeography2) {
                    str4 = "GDPR";
                } else if (consentFlowUserGeography != AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER) {
                    str4 = "None";
                }
                n2Var.a("Debug User Geography", str4);
            }
        }
        n2Var.a("Privacy Policy URI", y.f()).a("Terms of Service URI", y.h());
        n2Var.a("===CMP (CONSENT MANAGEMENT PLATFORM)===").a(this.g.r0().i());
        n2Var.a();
        com.applovin.impl.sdk.o.g("AppLovinSdk", n2Var.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0180, code lost:
        if (r12.g.B0() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0209, code lost:
        if (r12.g.B0() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x020b, code lost:
        r2 = "succeeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x020c, code lost:
        r10.append(r2);
        r10.append(" in ");
        r10.append(java.lang.System.currentTimeMillis() - r6);
        r10.append("ms");
        r8.a(r9, r10.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0224, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.q5.run():void");
    }
}
