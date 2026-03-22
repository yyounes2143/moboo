package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import com.applovin.impl.p0;
import com.applovin.impl.privacy.cmp.CmpServiceImpl;
import com.applovin.impl.q0;
import com.applovin.impl.s0;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.applovin.sdk.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3764a;
    private final int b;
    private List c;
    private String d;
    private q0 e;
    private p0.c f;
    private q0 g;
    private Dialog h;
    private p0.b i = new p0.b();
    private final com.applovin.impl.b j = new a();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends com.applovin.impl.b {
        public a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            if ((activity instanceof AppLovinWebViewActivity) || u0.this.g == null) {
                return;
            }
            if (u0.this.h != null) {
                u0 u0Var = u0.this;
                if (!com.applovin.impl.d.a(u0Var.a(u0Var.h))) {
                    u0.this.h.dismiss();
                }
                u0.this.h = null;
            }
            q0 q0Var = u0.this.g;
            u0.this.g = null;
            u0 u0Var2 = u0.this;
            u0Var2.a(u0Var2.e, q0Var, activity);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s0 f3766a;
        final /* synthetic */ q0 b;
        final /* synthetic */ Activity c;

        public b(s0 s0Var, q0 q0Var, Activity activity) {
            this.f3766a = s0Var;
            this.b = q0Var;
            this.c = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        @SensorsDataInstrumented
        public void onClick(DialogInterface dialogInterface, int i) {
            u0.this.g = null;
            u0.this.h = null;
            q0 a2 = u0.this.a(this.f3766a.a());
            if (a2 != null) {
                u0.this.a(this.b, a2, this.c);
                if (a2.c() != q0.b.ALERT) {
                    dialogInterface.dismiss();
                }
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
                return;
            }
            u0.this.a("Destination state for TOS/PP alert is null");
            SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f3767a;
        final /* synthetic */ Activity b;

        public c(Uri uri, Activity activity) {
            this.f3767a = uri;
            this.b = activity;
        }

        @Override // android.text.style.ClickableSpan
        @SensorsDataInstrumented
        public void onClick(View view) {
            z6.a(this.f3767a, this.b, u0.this.f3764a);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f3768a;
        final /* synthetic */ Activity b;

        public d(Uri uri, Activity activity) {
            this.f3768a = uri;
            this.b = activity;
        }

        @Override // android.text.style.ClickableSpan
        @SensorsDataInstrumented
        public void onClick(View view) {
            z6.a(this.f3768a, this.b, u0.this.f3764a);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class e implements CmpServiceImpl.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f3769a;
        final /* synthetic */ Activity b;

        public e(q0 q0Var, Activity activity) {
            this.f3769a = q0Var;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            boolean z;
            u0.this.i.a(appLovinCmpError);
            u0 u0Var = u0.this;
            q0 q0Var = this.f3769a;
            Activity activity = this.b;
            if (appLovinCmpError == null) {
                z = true;
            } else {
                z = false;
            }
            u0Var.a(q0Var, activity, Boolean.valueOf(z));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class f implements CmpServiceImpl.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f3770a;
        final /* synthetic */ Activity b;

        public f(q0 q0Var, Activity activity) {
            this.f3770a = q0Var;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            boolean z;
            u0.this.i.a(appLovinCmpError);
            u0 u0Var = u0.this;
            q0 q0Var = this.f3770a;
            Activity activity = this.b;
            if (appLovinCmpError == null) {
                z = true;
            } else {
                z = false;
            }
            u0Var.a(q0Var, activity, Boolean.valueOf(z));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class g implements CmpServiceImpl.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f3771a;
        final /* synthetic */ Activity b;

        public g(q0 q0Var, Activity activity) {
            this.f3771a = q0Var;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.f
        public void a(AppLovinCmpError appLovinCmpError) {
            if (appLovinCmpError != null) {
                u0.this.i.a(appLovinCmpError);
            } else {
                u0.this.i.c();
            }
            u0.this.b(this.f3771a, this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q0 f3772a;

        public h(q0 q0Var) {
            this.f3772a = q0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            u0 u0Var = u0.this;
            u0Var.a(u0Var.e, this.f3772a, u0.this.f3764a.u0());
        }
    }

    public u0(com.applovin.impl.sdk.k kVar) {
        this.f3764a = kVar;
        this.b = ((Integer) kVar.a(l4.s6)).intValue();
    }

    private void c(final q0 q0Var, final Activity activity) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Lll
            @Override // java.lang.Runnable
            public final void run() {
                u0.this.a(q0Var, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(q0 q0Var, Activity activity) {
        a(q0Var, activity, (Boolean) null);
    }

    private void b() {
        this.c = null;
        this.e = null;
        this.f3764a.e().b(this.j);
        p0.c cVar = this.f;
        if (cVar != null) {
            cVar.a(this.i);
            this.f = null;
        }
        this.i = new p0.b();
    }

    public void a(Activity activity, p0.c cVar) {
        a(q0.a.IS_AL_GDPR.b(), activity, cVar);
    }

    public void a(int i, Activity activity, p0.c cVar) {
        if (this.c != null) {
            this.f3764a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3764a.O();
                O.a("ConsentFlowStateMachine", "Unable to start states: " + this.c);
            }
            this.f3764a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f3764a.O();
                O2.a("ConsentFlowStateMachine", "Consent flow already in progress for states: " + this.c);
            }
            cVar.a(new p0.b(new C0243o0(C0243o0.d, "Consent flow is already in progress.")));
            return;
        }
        List a2 = v0.a(this.f3764a);
        this.c = a2;
        this.d = String.valueOf(a2);
        this.f = cVar;
        q0 a3 = a(i);
        this.f3764a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O3 = this.f3764a.O();
            O3.a("ConsentFlowStateMachine", "Starting consent flow with states: " + this.c + "\nInitial state: " + a3);
        }
        com.applovin.impl.sdk.k.a(activity).a(this.j);
        a((q0) null, a3, activity);
    }

    public boolean a() {
        return this.c != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q0 q0Var, Activity activity, Boolean bool) {
        a(q0Var, a(q0Var.a(bool)), activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q0 q0Var, q0 q0Var2, Activity activity) {
        this.e = q0Var;
        c(q0Var2, activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(q0 q0Var, final Activity activity) {
        SpannableString spannableString;
        if (q0Var == null) {
            a("Consent flow state is null");
            return;
        }
        this.f3764a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3764a.O().a("ConsentFlowStateMachine", "Transitioning to state: " + q0Var);
        }
        if (q0Var.c() == q0.b.ALERT) {
            if (com.applovin.impl.d.a(activity)) {
                a(q0Var);
                return;
            }
            this.f3764a.G().trackEvent("cf_start");
            r0 r0Var = (r0) q0Var;
            this.g = r0Var;
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            builder.setCancelable(false);
            for (s0 s0Var : r0Var.d()) {
                b bVar = new b(s0Var, q0Var, activity);
                if (s0Var.c() == s0.a.POSITIVE) {
                    builder.setPositiveButton(s0Var.d(), bVar);
                } else if (s0Var.c() == s0.a.NEGATIVE) {
                    builder.setNegativeButton(s0Var.d(), bVar);
                } else {
                    builder.setNeutralButton(s0Var.d(), bVar);
                }
            }
            String f2 = r0Var.f();
            if (StringUtils.isValidString(f2)) {
                spannableString = new SpannableString(f2);
                String a2 = com.applovin.impl.sdk.k.a(R.string.applovin_terms_of_service_text);
                String a3 = com.applovin.impl.sdk.k.a(R.string.applovin_privacy_policy_text);
                if (StringUtils.containsAtLeastOneSubstring(f2, Arrays.asList(a2, a3))) {
                    Uri h2 = this.f3764a.y().h();
                    if (h2 != null) {
                        StringUtils.addLinks(spannableString, Pattern.compile(a2), new c(h2, activity), true);
                    }
                    StringUtils.addLinks(spannableString, Pattern.compile(a3), new d(this.f3764a.y().f(), activity), true);
                }
            } else {
                spannableString = null;
            }
            final AlertDialog create = builder.setTitle(spannableString).setMessage(r0Var.e()).create();
            create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.applovin.impl.Llll
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    u0.this.a(create, activity, dialogInterface);
                }
            });
            this.h = create;
            create.show();
            this.i.d();
        } else if (q0Var.c() == q0.b.POST_ALERT) {
            if (this.f3764a.y().k() && this.f3764a.y().m()) {
                if (com.applovin.impl.d.a(activity)) {
                    a(q0Var);
                    return;
                } else {
                    this.f3764a.t().loadCmp(activity, new e(q0Var, activity));
                    return;
                }
            }
            a(q0Var, activity, Boolean.FALSE);
        } else if (q0Var.c() == q0.b.EVENT) {
            t0 t0Var = (t0) q0Var;
            String e2 = t0Var.e();
            Map<String, ?> d2 = t0Var.d();
            if (d2 == null) {
                d2 = new HashMap<>(1);
            }
            d2.put("flow_type", "unified");
            this.f3764a.G().trackEvent(e2, d2);
            b(t0Var, activity);
        } else if (q0Var.c() == q0.b.CMP_LOAD) {
            if (com.applovin.impl.d.a(activity)) {
                a(q0Var);
            } else if (this.f3764a.y().m()) {
                this.f3764a.t().preloadCmp(activity);
                a(q0Var, activity, Boolean.FALSE);
            } else {
                this.f3764a.t().loadCmp(activity, new f(q0Var, activity));
            }
        } else if (q0Var.c() == q0.b.CMP_SHOW) {
            if (com.applovin.impl.d.a(activity)) {
                a(q0Var);
                return;
            }
            if (!this.f3764a.y().m()) {
                this.f3764a.G().trackEvent("cf_start");
            }
            this.f3764a.t().showCmp(activity, new g(q0Var, activity));
        } else if (q0Var.c() == q0.b.DECISION) {
            q0.a a4 = q0Var.a();
            if (a4 == q0.a.IS_AL_GDPR) {
                a(q0Var, activity, Boolean.valueOf(this.f3764a.y().k()));
            } else if (a4 == q0.a.IS_ELIGIBLE_FOR_TERMS_AND_PRIVACY_POLICY_ALERT) {
                a(q0Var, activity, Boolean.valueOf((!this.f3764a.z0() || ((Boolean) this.f3764a.a(n4.r, Boolean.FALSE)).booleanValue()) ? true : true));
            } else if (a4 == q0.a.HAS_TERMS_OF_SERVICE_URI) {
                a(q0Var, activity, Boolean.valueOf(this.f3764a.y().h() != null));
            } else {
                a("Invalid consent flow decision type: " + a4);
            }
        } else if (q0Var.c() == q0.b.REINIT) {
            b();
        } else {
            a("Invalid consent flow destination state: " + q0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AlertDialog alertDialog, Activity activity, DialogInterface dialogInterface) {
        TextView textView = (TextView) alertDialog.findViewById(alertDialog.getContext().getResources().getIdentifier("android:id/alertTitle", null, null));
        textView.setLinkTextColor(textView.getCurrentTextColor());
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setMaxLines(this.b);
        textView.setMinHeight(AppLovinSdkUtils.dpToPx(activity, 48));
    }

    private void a(q0 q0Var) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new h(q0Var), TimeUnit.SECONDS.toMillis(1L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        g1.a(str, new Object[0]);
        this.f3764a.E().a(y1.r0, str, CollectionUtils.hashMap("details", "Last started states: " + this.d + "\nLast successful state: " + this.e));
        p0.b bVar = this.i;
        if (bVar != null) {
            bVar.a(new C0243o0(C0243o0.e, str));
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public q0 a(int i) {
        List<q0> list = this.c;
        if (list == null) {
            return null;
        }
        for (q0 q0Var : list) {
            if (i == q0Var.b()) {
                return q0Var;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Activity a(Dialog dialog) {
        Context context = dialog.getContext();
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
            return null;
        }
        return null;
    }
}
