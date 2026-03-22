package com.mbridge.msdk.foundation.feedback.bean;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.b;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.FeedbackRadioGroup;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    private static int A = -1;
    private static String B;
    private String b;
    private CampaignEx c;
    private FeedBackButton e;
    private String f;
    private String i;
    private MBFeedBackDialog j;
    private Dialog k;
    private JSONArray l;
    private int q;
    private List<g> r;
    private int u;

    /* renamed from: a  reason: collision with root package name */
    private float f8991a = 1.0f;
    private String d = "";
    private float g = -1.0f;
    private int h = -1;
    private int m = -1;
    private int n = -1;
    private int o = -1;
    private int p = -1;
    private int s = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);
    private String t = "";
    private com.mbridge.msdk.widget.dialog.b v = new C0102a();
    private int w = A;
    private int x = -1;
    private int y = -1;
    private int z = -1;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.foundation.feedback.bean.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0102a implements com.mbridge.msdk.widget.dialog.b {
        public C0102a() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            a.this.p();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements com.mbridge.msdk.widget.dialog.b {
        public c() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements CompoundButton.OnCheckedChangeListener {
        public d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        @SensorsDataInstrumented
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                String unused = a.B = (String) compoundButton.getText();
            }
            if (a.this.j != null) {
                a.this.j.setCancelButtonClickable(!TextUtils.isEmpty(a.B));
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(compoundButton);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.k != null && a.this.k.isShowing()) {
                    a.this.k.dismiss();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            a.this.p();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public a(String str) {
        this.r = new ArrayList();
        this.i = str;
        if (this.r == null) {
            this.r = new ArrayList();
        }
        d();
        e();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.i, 1, 4, B, this.d);
        List<g> list = this.r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.b();
                }
            }
        }
        o();
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.i, 0, 4, B, this.d);
        List<g> list = this.r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.i, 0, 4, B, this.d);
        Context f2 = com.mbridge.msdk.foundation.controller.c.m().f();
        if (f2 == null) {
            f2 = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        List<g> list = this.r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        a(f2);
        B = "";
    }

    private void o() {
        if (!TextUtils.isEmpty(this.t)) {
            try {
                Activity a2 = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
                if (a2 != null) {
                    View inflate = LayoutInflater.from(a2).inflate(g0.a(a2, "mbridge_cm_feedback_notice_layout", "layout"), (ViewGroup) null);
                    Dialog dialog = new Dialog(a2, 3);
                    this.k = dialog;
                    dialog.requestWindowFeature(1);
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    Window window = this.k.getWindow();
                    layoutParams.copyFrom(window.getAttributes());
                    layoutParams.width = -2;
                    layoutParams.height = -2;
                    this.k.setContentView(inflate);
                    this.k.show();
                    window.setAttributes(layoutParams);
                    inflate.postDelayed(new e(), 2000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void f() {
        FeedBackButton feedBackButton = this.e;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.e.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.e.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.e);
            }
        }
        MBFeedBackDialog mBFeedBackDialog = this.j;
        if (mBFeedBackDialog != null) {
            mBFeedBackDialog.cancel();
            this.j.setListener(null);
        }
        this.j = null;
        this.r = null;
        this.e = null;
        this.v = null;
    }

    public void g() {
        MBFeedBackDialog mBFeedBackDialog = this.j;
        if (mBFeedBackDialog != null && mBFeedBackDialog.isShowing()) {
            this.j.cancel();
        }
    }

    public CampaignEx h() {
        return this.c;
    }

    public FeedBackButton i() {
        if (this.e == null) {
            e();
        }
        return this.e;
    }

    public int j() {
        return this.q;
    }

    public int k() {
        return this.u;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[Catch: Exception -> 0x002a, TryCatch #0 {Exception -> 0x002a, blocks: (B:2:0x0000, B:4:0x0023, B:10:0x002f, B:12:0x003b, B:13:0x003f, B:17:0x0050, B:19:0x0055, B:9:0x002c), top: B:23:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[Catch: Exception -> 0x002a, TRY_LEAVE, TryCatch #0 {Exception -> 0x002a, blocks: (B:2:0x0000, B:4:0x0023, B:10:0x002f, B:12:0x003b, B:13:0x003f, B:17:0x0050, B:19:0x0055, B:9:0x002c), top: B:23:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p() {
        /*
            r6 = this;
            com.mbridge.msdk.foundation.feedback.b r0 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            java.lang.String r1 = r6.i     // Catch: java.lang.Exception -> L2a
            java.lang.String r4 = com.mbridge.msdk.foundation.feedback.bean.a.B     // Catch: java.lang.Exception -> L2a
            java.lang.String r5 = r6.d     // Catch: java.lang.Exception -> L2a
            r2 = 0
            r3 = 1
            r0.a(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.foundation.feedback.b r0 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2a
            android.content.Context r1 = r1.d()     // Catch: java.lang.Exception -> L2a
            android.app.Activity r0 = r0.a(r1)     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.dialog.MBFeedBackDialog r1 = r6.j     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L2c
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Exception -> L2a
            if (r1 == r0) goto L2f
            goto L2c
        L2a:
            r0 = move-exception
            goto L59
        L2c:
            r6.c()     // Catch: java.lang.Exception -> L2a
        L2f:
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2a
            android.content.Context r0 = r0.d()     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.FeedBackButton r1 = r6.e     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L3f
            android.content.Context r0 = r1.getContext()     // Catch: java.lang.Exception -> L2a
        L3f:
            com.mbridge.msdk.foundation.feedback.b r1 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            java.lang.String r2 = r6.i     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.dialog.MBFeedBackDialog r3 = r6.j     // Catch: java.lang.Exception -> L2a
            boolean r1 = r1.a(r2, r0, r3)     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L4f
            r2 = 2
            goto L50
        L4f:
            r2 = 3
        L50:
            r6.a(r2)     // Catch: java.lang.Exception -> L2a
            if (r1 != 0) goto L5c
            r6.a(r0)     // Catch: java.lang.Exception -> L2a
            return
        L59:
            r0.printStackTrace()
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.feedback.bean.a.p():void");
    }

    private void c() {
        try {
            if (com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                com.mbridge.msdk.setting.g d2 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d2 == null) {
                    d2 = h.b().a();
                }
                b.C0152b z = d2.z();
                if (z == null) {
                    o0.c("", "feedback fbk is null");
                    return;
                }
                d();
                this.j = new MBFeedBackDialog(com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()), this.v);
                FeedbackRadioGroup a2 = a(z);
                this.j.setCancelText(z.d());
                this.j.setConfirmText(z.a());
                this.j.setPrivacyText(z.c());
                this.t = z.e();
                this.j.setTitle(z.f());
                this.j.setContent(a2);
                this.j.setCancelButtonClickable(!TextUtils.isEmpty(B));
                a(a2, z);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void d() {
        if (this.v == null) {
            this.v = new c();
        }
    }

    private void e() {
        Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d2 != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(d2);
                this.e = feedBackButton;
                int i = 8;
                if (this.w != 8) {
                    i = 0;
                }
                feedBackButton.setVisibility(i);
                this.e.setOnClickListener(new b());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void b(String str) {
        this.d = str;
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class g implements com.mbridge.msdk.widget.dialog.b {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.foundation.feedback.a f8998a;
        private String b;

        public g(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
            this.f8998a = aVar;
            this.b = str;
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            com.mbridge.msdk.foundation.feedback.b.f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f8998a;
            if (aVar != null) {
                aVar.close();
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            com.mbridge.msdk.foundation.feedback.b.f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f8998a;
            if (aVar != null) {
                aVar.a(a.B);
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            com.mbridge.msdk.foundation.feedback.a aVar = this.f8998a;
            if (aVar != null) {
                aVar.close();
            }
        }

        public void a(int i) {
            com.mbridge.msdk.foundation.feedback.b.f = true;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f8998a;
            if (aVar == null || i != 2) {
                return;
            }
            aVar.a();
        }
    }

    private void b() {
        FeedBackButton feedBackButton = this.e;
        if (feedBackButton != null) {
            int i = this.y;
            if (i > -1) {
                feedBackButton.setX(i);
            }
            int i2 = this.z;
            if (i2 > -1) {
                this.e.setY(i2);
            }
            float f2 = this.f8991a;
            if (f2 >= 0.0f) {
                this.e.setAlpha(f2);
                this.e.setEnabled(this.f8991a != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.e.getLayoutParams();
            int i3 = this.x;
            if (i3 > 0) {
                this.e.setWidth(i3);
                if (layoutParams != null) {
                    layoutParams.width = this.x;
                }
            }
            int i4 = this.h;
            if (i4 > 0) {
                this.e.setHeight(i4);
                if (layoutParams != null) {
                    layoutParams.height = this.h;
                }
            }
            if (layoutParams != null) {
                this.e.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.f)) {
                    this.e.setTextColor(Color.parseColor(this.f));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            float f3 = this.g;
            if (f3 > 0.0f) {
                this.e.setTextSize(f3);
            }
            JSONArray jSONArray = this.l;
            if (jSONArray != null && jSONArray.length() == 4) {
                Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                this.e.setPadding(t0.a(d2, (float) this.l.optDouble(0)), t0.a(d2, (float) this.l.optDouble(1)), t0.a(d2, (float) this.l.optDouble(2)), t0.a(d2, (float) this.l.optDouble(3)));
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i5 = this.s;
            if (i5 > 0) {
                gradientDrawable.setCornerRadius(i5);
            }
            if (!TextUtils.isEmpty(this.b)) {
                gradientDrawable.setColor(Color.parseColor(this.b));
            } else {
                gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            }
            this.e.setBackground(gradientDrawable);
        }
    }

    public void a(g gVar) {
        if (this.r == null) {
            this.r = new ArrayList();
        }
        this.r.add(gVar);
    }

    public void d(int i) {
        this.w = i;
        FeedBackButton feedBackButton = this.e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i);
        }
    }

    public void a(CampaignEx campaignEx) {
        this.c = campaignEx;
    }

    private void a(int i) {
        if (i == 2) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.i, 0, 2, B, this.d);
        } else {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.i, 0, 3, B, this.d);
        }
        List<g> list = this.r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a(i);
                }
            }
        }
    }

    private void a(Context context) {
        if (context != null) {
            try {
                com.mbridge.msdk.click.c.e(context, t0.a(this.c));
            } catch (Exception unused) {
                com.mbridge.msdk.click.c.c(context, t0.a(this.c));
            }
        }
    }

    private FeedbackRadioGroup a(b.C0152b c0152b) {
        JSONArray b2 = c0152b.b();
        Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (b2 == null || b2.length() <= 0 || d2 == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(d2);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    public void c(int i) {
        this.u = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mbridge.msdk.widget.FeedbackRadioGroup r11, com.mbridge.msdk.setting.b.C0152b r12) {
        /*
            r10 = this;
            org.json.JSONArray r12 = r12.b()
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r0 = r0.d()
            if (r12 == 0) goto L7e
            int r1 = r12.length()
            if (r1 <= 0) goto L7e
            if (r0 == 0) goto L7e
            java.lang.String r1 = "mbridge_cm_feedback_choice_btn_bg"
            java.lang.String r2 = "drawable"
            com.mbridge.msdk.foundation.tools.g0.a(r0, r1, r2)
            android.content.res.Resources r1 = com.mbridge.msdk.foundation.tools.g0.a(r0)
            java.lang.String r2 = "mbridge_cm_feedback_rb_text_color_color_list"
            java.lang.String r3 = "color"
            int r2 = com.mbridge.msdk.foundation.tools.g0.a(r0, r2, r3)
            if (r1 == 0) goto L34
            android.content.res.ColorStateList r1 = r1.getColorStateList(r2)     // Catch: java.lang.Exception -> L30
            goto L35
        L30:
            r1 = move-exception
            r1.printStackTrace()
        L34:
            r1 = 0
        L35:
            r2 = 1065353216(0x3f800000, float:1.0)
            int r3 = com.mbridge.msdk.foundation.tools.t0.a(r0, r2)
            int r4 = com.mbridge.msdk.foundation.tools.t0.a(r0, r2)
            int r2 = com.mbridge.msdk.foundation.tools.t0.a(r0, r2)
            r5 = 0
        L44:
            int r6 = r12.length()
            if (r5 >= r6) goto L7e
            java.lang.String r6 = r12.optString(r5)
            android.widget.RadioButton r7 = new android.widget.RadioButton
            r7.<init>(r0)
            r7.setButtonTintList(r1)
            r7.setText(r6)
            if (r1 == 0) goto L5e
            r7.setTextColor(r1)
        L5e:
            r7.setCompoundDrawablePadding(r3)
            r7.setPadding(r3, r4, r3, r4)
            android.text.TextUtils$TruncateAt r6 = android.text.TextUtils.TruncateAt.END
            r7.setEllipsize(r6)
            android.widget.RadioGroup$LayoutParams r6 = new android.widget.RadioGroup$LayoutParams
            r8 = -1
            r9 = -2
            r6.<init>(r8, r9)
            int r8 = r2 / 4
            r6.setMargins(r2, r8, r2, r8)
            r10.a(r7)
            r11.addView(r7, r6)
            int r5 = r5 + 1
            goto L44
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.feedback.bean.a.a(com.mbridge.msdk.widget.FeedbackRadioGroup, com.mbridge.msdk.setting.b$b):void");
    }

    public void b(int i) {
        this.q = i;
    }

    private void a(RadioButton radioButton) {
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(new d());
        }
    }

    public void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.e;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.f8991a);
            feedBackButton.setEnabled(this.f8991a != 0.0f);
            feedBackButton.setVisibility(this.w != 8 ? 0 : 8);
            this.e = feedBackButton;
            CampaignEx campaignEx = this.c;
            if (campaignEx != null && !campaignEx.isDynamicView()) {
                b();
            }
            feedBackButton.setOnClickListener(new f());
        }
    }

    public void a(int i, int i2, int i3, int i4, int i5, float f2, String str, String str2, float f3, JSONArray jSONArray) {
        if (i > -1) {
            this.y = i;
        }
        if (i2 > -1) {
            this.z = i2;
        }
        if (i3 > -1) {
            this.x = i3;
        }
        if (i4 > -1) {
            this.h = i4;
        }
        if (f3 > -1.0f) {
            this.g = f3;
        }
        if (jSONArray != null) {
            this.l = jSONArray;
        }
        this.f = str;
        this.b = str2;
        this.f8991a = f2;
        this.s = i5;
        b();
    }
}
