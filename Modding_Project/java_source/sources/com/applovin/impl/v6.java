package com.applovin.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.j2;
import com.applovin.impl.k2;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class v6 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f3789a;
    private k2 b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        public a(Context context) {
            super(context);
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return d.values().length;
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            return i == d.SETTINGS.ordinal() ? v6.this.c() : v6.this.a();
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            if (i == d.SETTINGS.ordinal()) {
                return e.values().length;
            }
            return c.values().length;
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            if (i == d.SETTINGS.ordinal()) {
                return new j4("SETTINGS");
            }
            return new j4("GDPR APPLICABILITY");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.sdk.k f3790a;

        public b(com.applovin.impl.sdk.k kVar) {
            this.f3790a = kVar;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            if (d2Var.b() == d.SETTINGS.ordinal()) {
                if (d2Var.a() == e.PRIVACY_POLICY_URL.ordinal()) {
                    if (this.f3790a.y().f() != null) {
                        w6.a(this.f3790a.y().f(), com.applovin.impl.sdk.k.o(), this.f3790a);
                    } else {
                        z6.a("Missing Privacy Policy URL", "You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL", v6.this);
                    }
                } else if (d2Var.a() == e.TERMS_OF_SERVICE_URL.ordinal() && this.f3790a.y().h() != null) {
                    w6.a(this.f3790a.y().h(), com.applovin.impl.sdk.k.o(), this.f3790a);
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum c {
        DESCRIPTION,
        CONSENT_FLOW_GEOGRAPHY,
        DEBUG_USER_GEOGRAPHY
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum d {
        SETTINGS,
        GDPR_APPLICABILITY
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum e {
        PRIVACY_POLICY_URL,
        TERMS_OF_SERVICE_URL
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List c() {
        ArrayList arrayList = new ArrayList(e.values().length);
        arrayList.add(b());
        arrayList.add(d());
        return arrayList;
    }

    private j2 d() {
        j2.b d2 = j2.a().d("Terms of Service URL");
        if (this.f3789a.y().h() != null) {
            d2.a(R.drawable.applovin_ic_check_mark_bordered);
            d2.b(i0.a(R.color.applovin_sdk_checkmarkColor, this));
            d2.a(true);
        } else {
            d2.c("None");
            d2.a(false);
        }
        return d2.a();
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.f3789a;
    }

    public void initialize(com.applovin.impl.sdk.k kVar) {
        this.f3789a = kVar;
        a aVar = new a(this);
        this.b = aVar;
        aVar.a(new b(kVar));
        this.b.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("MAX Terms and Privacy Policy Flow");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.b);
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k2 k2Var = this.b;
        if (k2Var != null) {
            k2Var.a((k2.a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List a() {
        ArrayList arrayList = new ArrayList(c.values().length);
        AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography = this.f3789a.w().getConsentFlowUserGeography();
        AppLovinSdkConfiguration.ConsentFlowUserGeography d2 = this.f3789a.y().d();
        boolean z = z6.c(this.f3789a) && d2 != AppLovinSdkConfiguration.ConsentFlowUserGeography.UNKNOWN;
        arrayList.add(j2.a().d("AppLovin determines whether the user is located in a GDPR region. If the user is in a GDPR region, the MAX SDK presents Google UMP.\n\nYou can test the flow on debug mode by overriding the region check by setting the debug user geography.").a());
        arrayList.add(a(consentFlowUserGeography, !z));
        arrayList.add(b(d2, z));
        return arrayList;
    }

    private j2 b() {
        boolean z = this.f3789a.y().f() != null;
        return j2.a().d("Privacy Policy URL").a(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(i0.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this)).a(true).a();
    }

    private j2 a(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography, boolean z) {
        return j2.a().d("Consent Flow Geography").c(consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR ? "GDPR" : consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "Unknown").b(z).a();
    }

    private j2 b(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography, boolean z) {
        return j2.a().d("Debug User Geography").c(consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR ? "GDPR" : consentFlowUserGeography == AppLovinSdkConfiguration.ConsentFlowUserGeography.OTHER ? "Other" : "None").b(z).a();
    }
}
